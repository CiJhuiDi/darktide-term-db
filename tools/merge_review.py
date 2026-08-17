# -*- coding: utf-8 -*-
"""合并/分析校对表(多人协作回收)
用法: python tools/merge_review.py [文件或目录]
  - 默认读 reviews/ 下所有 校对_*.csv / 校对清单_*.csv
  - 输出分析报告 reviews/校对分析报告_<日期>.md(进度/验证方式/校对者/争议清单)
"""
import io, csv, os, sys, glob, datetime, collections
sys.stdout.reconfigure(encoding='utf-8', errors='replace')

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
REVIEWS = os.path.join(BASE, 'reviews')

def read_csv(path):
    rows = []
    try:
        with io.open(path, encoding='utf-8-sig', newline='') as f:
            r = csv.reader(f)
            header = next(r, None)
            for row in r:
                if row and any(c.strip() for c in row):
                    rows.append(row)
    except Exception as e:
        print(f'  !! 读取失败 {path}: {e}')
    return rows

def main():
    files = []
    for pat in [os.path.join(REVIEWS, '校对_*.csv'), os.path.join(REVIEWS, '校对清单_*.csv')]:
        files.extend(glob.glob(pat))
    files = sorted(set(files))
    if not files:
        print('没有找到校对文件(reviews/校对_*.csv 或 校对清单_*.csv)')
        return

    records = []  # {词条, 状态, 意见, 验证, 校对者, 来源文件}
    for fp in files:
        for row in read_csv(fp):
            if len(row) < 7:
                continue
            name = row[1]
            status = (row[6] or '').strip()
            opinion = (row[7] or '').strip()
            verify = (row[8] or '').strip()
            reviewer = (row[9] or '').strip()
            if not reviewer:
                reviewer = os.path.basename(fp).replace('校对_', '').replace('.csv', '')
            # 跳过未填写的行(状态仍是默认"待校对"且无意见)
            if status in ('待校对', '') and not opinion:
                continue
            records.append({'name': name, 'status': status, 'opinion': opinion,
                            'verify': verify, 'reviewer': reviewer, 'file': os.path.basename(fp)})

    by_name = collections.defaultdict(list)
    for r in records:
        by_name[r['name']].append(r)

    # 统计
    total = len(by_name)
    st_done = sum(1 for v in by_name.values() if any('✅' in x['status'] for x in v))
    st_issue = sum(1 for v in by_name.values() if any('❓' in x['status'] for x in v))
    st_conflict = sum(1 for v in by_name.values() if any('⚠️' in x['status'] or '争议' in x['status'] for x in v))
    st_todo = total - st_done - st_issue - st_conflict

    verify_cnt = collections.Counter()
    for v in by_name.values():
        for x in v:
            if '🅰' in x['verify']:
                verify_cnt['源码'] += 1
            elif '🅱' in x['verify']:
                verify_cnt['实测'] += 1
            elif '🅲' in x['verify']:
                verify_cnt['社区'] += 1

    reviewer_cnt = collections.Counter(r['reviewer'] for r in records)

    lines = ['# 校对分析报告\n',
             f'> 生成 {datetime.date.today()} | 校对文件 {len(files)} 个 | 有效记录 {len(records)} 条 | 涉及词条 {total} 个\n',
             '## 进度统计',
             f'- 总词条: {total}',
             f'- ✅ 已校对: {st_done}',
             f'- ❓ 有异议: {st_issue}',
             f'- ⚠️ 争议: {st_conflict}',
             f'- 待校对: {st_todo}\n',
             '## 验证方式分布']
    for k, v in verify_cnt.most_common():
        lines.append(f'- {k}: {v}')
    lines.append('\n## 校对者统计')
    for k, v in reviewer_cnt.most_common():
        lines.append(f'- {k}: {v} 条')
    lines.append('\n## ⚠️ 争议清单(双方意见都保留, 待裁决)')
    conflicts = {k: v for k, v in by_name.items() if any('⚠️' in x['status'] or '争议' in x['status'] for x in v)}
    if conflicts:
        for name, rs in conflicts.items():
            lines.append(f'\n### {name}')
            for r in rs:
                lines.append(f"- {r['reviewer']}({r['verify'] or '未标'}): {r['opinion'] or '(无意见)'}")
    else:
        lines.append('(无)')
    lines.append('\n## ❓ 有异议清单(待查证)')
    issues = {k: v for k, v in by_name.items() if not any('⚠️' in x['status'] or '争议' in x['status'] for x in v) and any('❓' in x['status'] for x in v)}
    if issues:
        for name, rs in issues.items():
            for r in rs:
                lines.append(f"- {name} | {r['reviewer']}({r['verify'] or '未标'}): {r['opinion'] or '(无意见)'}")
    else:
        lines.append('(无)')

    date = datetime.date.today().strftime('%Y%m%d')
    out = os.path.join(REVIEWS, f'校对分析报告_{date}.md')
    io.open(out, 'w', encoding='utf-8').write('\n'.join(lines))
    print('分析报告 ->', out)

if __name__ == '__main__':
    main()
