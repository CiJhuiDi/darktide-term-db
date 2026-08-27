# -*- coding: utf-8 -*-
"""1) export_review.py 加第5行示例(➕缺失报告)
2) classify_status 加 missing 分类
3) record/merge 统计 missing
"""
import io, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')

# ============ 1) export_review.py 示例行 ============
P1 = 'tools/export_review.py'
s1 = io.open(P1, encoding='utf-8').read()
old = """        w.writerow(['示例', '护甲', 'Armor', 'defense', '敌人护甲类型分类（六类）', '官方',
                    '✅已校对', '', '🅲️社区', '你的昵称'])"""
new = """        w.writerow(['示例', '护甲', 'Armor', 'defense', '敌人护甲类型分类（六类）', '官方',
                    '✅已校对', '', '🅲️社区', '你的昵称'])
        # 第5行: 缺失词条报告(玩家发现未收录的机制/术语时)
        w.writerow(['示例', '爆头增伤', '（英文名，可选）', '（分类，可选）', '（这个机制是什么，你理解的样子）', '玩家补充',
                    '➕缺失', '游戏里有XX机制但清单没收录，建议增加', '🅱️实测', '你的昵称'])"""
if old in s1:
    s1 = s1.replace(old, new, 1)
    io.open(P1, 'w', encoding='utf-8').write(s1)
    print('export 已加缺失示例行')
else:
    print('export anchor miss')

# ============ 2) classify missing(merge + record) ============
for P in ['tools/merge_review.py', 'tools/record_submissions.py']:
    s = io.open(P, encoding='utf-8').read()
    # 加 MISSING_KEYS + classify 分支
    old_c = "_DISPUTE_KEYS = ['⚠', '争议', '不确定', '待定', '待确认', '没把握', '难说', '存疑', '说不准', '争异', '待议']"
    new_c = "_DISPUTE_KEYS = ['⚠', '争议', '不确定', '待定', '待确认', '没把握', '难说', '存疑', '说不准', '争异', '待议']\n_MISSING_KEYS = ['➕', '缺失', '未收录', '没收录', '缺少', '漏收', '建议增加', '建议收录']"
    if old_c in s:
        s = s.replace(old_c, new_c, 1)
    # classify_status 加 missing 分支(在 dispute 前)
    old_f = """    for k in _DISPUTE_KEYS:
        if k in s:
            return 'dispute'"""
    new_f = """    for k in _MISSING_KEYS:
        if k in s:
            return 'missing'
    for k in _DISPUTE_KEYS:
        if k in s:
            return 'dispute'"""
    if old_f in s:
        s = s.replace(old_f, new_f, 1)
        print('classify missing 已加:', P)
    else:
        print('classify anchor miss:', P)
    io.open(P, 'w', encoding='utf-8').write(s)

import py_compile
for p in ['tools/export_review.py', 'tools/merge_review.py', 'tools/record_submissions.py']:
    py_compile.compile(p, doraise=True)
print('语法 OK')
