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
    # 主条目(confidence 字段为 08-19 起新增, 可选以兼容新旧数据)
    for m in re.finditer(r'\{ t:"([^"]+)", en:"([^"]+)", cat:"([^"]+)", keep:(true|false), src:"((?:[^"\\]|\\.)*)", (?:confidence:"[^"]*", )?d:"((?:[^"\\]|\\.)*)"', txt):
        terms.append({'name': m.group(1), 'en': m.group(2), 'cat': m.group(3),
                      'src': m.group(5), 'desc': m.group(6), 'child_of': ''})
    # children 子词条(带 detail/armor/moves 等)
    for m in re.finditer(r'\{t:\"([^\"]+)\", (?:etype:\"[^\"]*\", )?d:\"((?:[^\"\\]|\\.)*)\", detail:\"((?:[^\"\\]|\\.)*)\", enhanced:\"((?:[^\"\\]|\\.)*)\"', txt):
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
        w.writerow(['序号', '词条', '英文', '分类', '描述', '出处', '状态', '意见', '验证方式', '校对者'])
        # 4 行示例(状态3种+验证3种全覆盖; 程序解析自动跳过含"示例"的行, 玩家不用删)
        w.writerow(['示例', '撕裂', 'Rending', 'damage', '降低目标护甲减伤（破甲），仅自身生效', '官方',
                    '✅已校对', '', '🅱️实测', '你的昵称'])
        w.writerow(['示例', '踉跄', 'Stagger', 'damage', '攻击使敌人硬直、打断其动作', '官方',
                    '❓有异议', '游戏里XX怪实测推不动，建议补充说明', '🅱️实测', '你的昵称'])
        w.writerow(['示例', '能量', 'Power Level', 'damage', '全局伤害加成层数，含持续伤害', '官方',
                    '⚠️争议', '按公式算伤害应该更高，但实测没差别，建议复核数值', '🅰️游戏文件', '你的昵称'])
        w.writerow(['示例', '护甲', 'Armor', 'defense', '敌人护甲类型分类（六类）', '官方',
                    '✅已校对', '', '🅲️社区', '你的昵称'])
        # 第5行: 缺失词条报告(玩家发现未收录的机制/术语时)
        w.writerow(['示例', '爆头增伤', '（英文名，可选）', '（分类，可选）', '（这个机制是什么，你理解的样子）', '玩家补充',
                    '➕缺失', '游戏里有XX机制但清单没收录，建议增加', '🅱️实测', '你的昵称'])
        for i, t in enumerate(terms, 1):
            w.writerow([i, t['name'], t['en'], t['cat'], t['desc'], t['src'],
                        '待校对', '', '', ''])

    print(f'导出 {len(terms)} 条 -> {out}')
    print('填写说明: 状态列填 ✅已校对 / ❓有异议 / ⚠️争议; 验证方式填 🅰️源码 / 🅱️实测 / 🅲️社区; 争议时双方意见都写在意见列(张:... 李:...)')

if __name__ == '__main__':
    main()
