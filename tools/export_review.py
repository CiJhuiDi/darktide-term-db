# -*- coding: utf-8 -*-
"""导出校对清单 CSV(多人协作校对用)
用法: python tools/export_review.py [--limit N]
输出: reviews/校对清单_<日期>.csv(UTF-8 BOM, Excel 直接打开)
列: 序号, 词条, 英文, 分类, 描述, 出处, 状态, 意见, 验证方式, 校对者, 争议
"""
import io, re, csv, os, sys, datetime
sys.stdout.reconfigure(encoding='utf-8', errors='replace')

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DATA = os.path.join(BASE, 'data', 'terms.js')
REVIEWS = os.path.join(BASE, 'reviews')

def parse_terms(txt):
    terms = []
    # 主条目
    for m in re.finditer(r'\{ t:"([^"]+)", en:"([^"]+)", cat:"([^"]+)", keep:(true|false), src:"((?:[^"\\]|\\.)*)", d:"((?:[^"\\]|\\.)*)"', txt):
        terms.append({'name': m.group(1), 'en': m.group(2), 'cat': m.group(3),
                      'src': m.group(5), 'desc': m.group(6), 'child_of': ''})
    # children 子词条(带 detail/armor/moves 等)
    for m in re.finditer(r'\{t:"([^"]+)", d:"((?:[^"\\]|\\.)*)", detail:"((?:[^"\\]|\\.)*)", enhanced:"((?:[^"\\]|\\.)*)"', txt):
        terms.append({'name': m.group(1), 'en': '', 'cat': '子词条',
                      'src': m.group(3)[:60], 'desc': m.group(2), 'child_of': ''})
    # 去重(children 里 t 和主条目可能重名,保留主条目)
    seen = set()
    out = []
    for t in terms:
        key = (t['name'], t['cat'])
        if key in seen:
            continue
        seen.add(key)
        out.append(t)
    return out

def main():
    limit = None
    if '--limit' in sys.argv:
        limit = int(sys.argv[sys.argv.index('--limit') + 1])

    txt = io.open(DATA, encoding='utf-8').read()
    terms = parse_terms(txt)
    if limit:
        terms = terms[:limit]

    os.makedirs(REVIEWS, exist_ok=True)
    date = datetime.date.today().strftime('%Y%m%d')
    out = os.path.join(REVIEWS, f'校对清单_{date}.csv')

    with io.open(out, 'w', encoding='utf-8-sig', newline='') as f:
        w = csv.writer(f)
        w.writerow(['序号', '词条', '英文', '分类', '描述', '出处', '状态', '意见', '验证方式', '校对者', '争议'])
        for i, t in enumerate(terms, 1):
            w.writerow([i, t['name'], t['en'], t['cat'], t['desc'], t['src'],
                        '待校对', '', '', '', ''])

    print(f'导出 {len(terms)} 条 -> {out}')
    print('填写说明: 状态列填 ✅已校对 / ❓有异议 / ⚠️争议; 验证方式填 🅰️源码 / 🅱️实测 / 🅲️社区; 争议时双方意见都写在意见列(张:... 李:...)')

if __name__ == '__main__':
    main()
