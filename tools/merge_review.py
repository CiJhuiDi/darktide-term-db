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


# ---- 容错分类(emoji+文字+错字) 2026-08-18 ----
_DISPUTE_KEYS = ['⚠', '争议', '不确定', '待定', '待确认', '没把握', '难说', '存疑', '说不准', '争异', '待议']
_MISSING_KEYS = ['➕', '缺失', '未收录', '没收录', '缺少', '漏收', '建议增加', '建议收录']
_DISAGREE_KEYS = ['❓', '异议', '疑问', '有问', '不对', '错误', '不符', '有导', '异意', '有义', '疑异']
_DONE_KEYS = ['✅', '已校', '完成', '校完', '校对完', 'done', 'ok', 'OK', 'Ok', '✓', '✔', '对']

def classify_status(s):
    s = (s or '').strip()
    if not s or s in ('待校对', '待校', '未校'):
        return None
    for k in _MISSING_KEYS:
        if k in s:
            return 'missing'
    for k in _DISPUTE_KEYS:
        if k in s:
            return 'dispute'
    for k in _DISAGREE_KEYS:
        if k in s:
            return 'disagree'
    for k in _DONE_KEYS:
        if k in s:
            return 'done'
    return 'unknown'

def classify_verify(s):
    s = (s or '').strip()
    if not s:
        return None
    if '🅰' in s or '游戏文件' in s or '文件' in s or s.strip().lower() in ('a', '游戏'):
        return 'game'
    if '🅱' in s or '实测' in s or '实侧' in s or s.strip().lower() in ('b', '实测'):
        return 'test'
    if '🅲' in s or '社区' in s or s.strip().lower() in ('c',):
        return 'community'
    return 'unknown'

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
            if '示例' in (row[0] or '') or '示例' in (row[1] or ''):
                continue
            name = row[1]
            status = (row[6] or '').strip()
            opinion = (row[7] or '').strip()
            verify = (row[8] or '').strip()
            reviewer = (row[9] or '').strip()
            if not reviewer:
                reviewer = os.path.basename(fp).replace('校对_', '').replace('.csv', '')
            # 跳过未填写的行(状态仍是默认"待校对"且无意见)
            if classify_status(status) is None and not opinion:
                continue
            records.append({'name': name, 'status': status, 'opinion': opinion,
                            'verify': verify, 'reviewer': reviewer, 'file': os.path.basename(fp)})

    by_name = collections.defaultdict(list)
    for r in records:
        by_name[r['name']].append(r)

    # 统计
    total = len(by_name)
    st_done = sum(1 for v in by_name.values() if any(classify_status(x['status']) == 'done' for x in v))
    st_issue = sum(1 for v in by_name.values() if any(classify_status(x['status']) == 'disagree' for x in v))
    st_conflict = sum(1 for v in by_name.values() if any(classify_status(x['status']) == 'dispute' for x in v))
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
