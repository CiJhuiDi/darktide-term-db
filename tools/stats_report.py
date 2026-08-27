# -*- coding: utf-8 -*-
"""玩家提交统计报表: 从 player_submissions.json 生成
用法: python tools/stats_report.py [--out reviews/校对统计_<日期>.md]
"""
import io, os, sys, json, datetime, collections
sys.stdout.reconfigure(encoding='utf-8', errors='replace')

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
REVIEWS = os.path.join(BASE, 'reviews')
DB = os.path.join(REVIEWS, 'player_submissions.json')

def main():
    if not os.path.exists(DB):
        print('库不存在: %s\n先跑 python tools/record_submissions.py' % DB)
        return
    db = json.load(io.open(DB, encoding='utf-8'))
    players = db.get('players', {})
    terms = db.get('term_stats', {})
    lines = []
    lines.append('# 校对统计报表（%s）' % db.get('updated', ''))
    lines.append('')
    lines.append('## 玩家贡献')
    lines.append('')
    lines.append('| 玩家 | 提交次数 | 累计校对词条 | 完成 | 异议 | 争议 | 首次提交 |')
    lines.append('|---|---|---|---|---|---|---|')
    for name, p in sorted(players.items(), key=lambda kv: -kv[1].get('total_rows', 0)):
        subs = p.get('submissions', [])
        lines.append('| %s | %d | %d | %d | %d | %d | %s |' % (
            name, len(subs), p.get('total_rows', 0),
            sum(s.get('done', 0) for s in subs),
            sum(s.get('disagree', 0) for s in subs),
            sum(s.get('dispute', 0) for s in subs),
            p.get('first_seen', '')))
    lines.append('')
    lines.append('## 验证方式分布')
    lines.append('')
    vc = collections.Counter()
    for p in players.values():
        for s in p.get('submissions', []):
            for k, v in s.get('verify', {}).items():
                vc[k] += v
    lines.append('- 🅰️游戏文件: %d | 🅱️实测: %d | 🅲️社区: %d' % (
        vc.get('game', 0), vc.get('test', 0), vc.get('community', 0)))
    lines.append('')
    lines.append('## 词条覆盖（被校对过的词条 %d 个）' % len(terms))
    lines.append('')
    multi = {k: v for k, v in terms.items() if v.get('times', 0) >= 2}
    lines.append('- **≥2 人校对过的词条（%d 个，可信度高）**: %s' % (
        len(multi), '、'.join(sorted(multi.keys())) or '无'))
    dispute_terms = {k: v for k, v in terms.items() if v.get('dispute', 0) > 0}
    disagree_terms = {k: v for k, v in terms.items() if v.get('disagree', 0) > 0}
    lines.append('')
    if dispute_terms:
        lines.append('## ⚠️ 争议词条（%d 个，需仲裁）' % len(dispute_terms))
        lines.append('')
        for k in sorted(dispute_terms.keys()):
            v = dispute_terms[k]
            lines.append('- **%s**：%d 人校对，争议 %d 次，校对者：%s' % (k, v['times'], v['dispute'], '、'.join(v['reviewers'])))
    lines.append('')
    if disagree_terms:
        lines.append('## ❓ 异议词条（%d 个，需复核）' % len(disagree_terms))
        lines.append('')
        for k in sorted(disagree_terms.keys()):
            v = disagree_terms[k]
            lines.append('- %s：%d 人校对，异议 %d 次' % (k, v['times'], v['disagree']))
    report = '\n'.join(lines) + '\n'
    out = os.path.join(REVIEWS, '校对统计_%s.md' % datetime.date.today().strftime('%Y%m%d'))
    io.open(out, 'w', encoding='utf-8').write(report)
    print(report)
    print('报表已写入: %s' % out)

if __name__ == '__main__':
    main()
