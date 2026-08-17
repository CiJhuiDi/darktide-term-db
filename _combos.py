# -*- coding: utf-8 -*-
"""一次性脚本:大漩涡条目加固定词条组合数据 + demo 渲染 combos 表格(用完即删)"""
import io, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')

# 1. terms.js:大漩涡条目加 combos 字段
P = r'D:\DeepseekWorkspace\暗潮\04-Mods\term_db\data\terms.js'
txt = io.open(P, encoding='utf-8').read()

old = '{ t:"大漩涡", en:"Maelstrom", cat:"mission", keep:true, src:"任务终端(大漩涡)", d:"高难滚动任务模式，带多种词条组合（编号如 I-II、A-I-II）；金级为更高难度变体。", r:["词条","浩劫","金级"] },'

combos = '''{ t:"大漩涡", en:"Maelstrom", cat:"mission", keep:true, src:"任务终端(大漩涡)", d:"高难滚动任务模式，带固定的词条组合（编号代表不同词条）；金级为更高难度变体。", r:["词条","浩劫","金级"],
  combos:[
    {t:"I-II", d:"专家波次 + 怪物专家"},
    {t:"I-E", d:"专家波次 + 纳垢的祝福"},
    {t:"I-III", d:"专家波次 + 狩猎场"},
    {t:"I-E-F", d:"狩猎场 + 纳垢的祝福 + 20%冷却减免"},
    {t:"A-I-II", d:"漆黑一片 + 专家波次 + 怪物专家"},
    {t:"B-I-IV", d:"通风净化 + 专家波次 + 狙击手"},
    {t:"C-I-VI", d:"专家波次 + 血痂近战无弹药"},
    {t:"I-III-VII-F", d:"专家波次 + 狩猎场 + 变异人波次 + 20%冷却减免"},
    {t:"B-VIII-V-F", d:"通风净化 + 远程为主 + 血痂阵营 + 20%冷却减免"},
    {t:"I-II-V-E-G", d:"专家波次 + 怪物专家 + 远程为主 + 纳垢的祝福 + 血痂 + 强化闪击"},
    {t:"D-I-IV-IX-G", d:"专家波次 + 狙击手 + 额外瘟疫爆者 + 额外炸药桶 + 强化闪击"},
    {t:"D-III-VII-IX-G", d:"狩猎场 + 额外瘟疫爆者 + 变异人波次 + 强化闪击 + 额外炸药桶"},
    {t:"I-IX-E-F", d:"变异人波次 + 纳垢的祝福 + 专家波次 + 20%冷却减免"},
    {t:"X-XI-XII-G-H", d:"持续腐化伤害 + 低游荡敌人 + 无敌群 + 专家波次 + 20%冷却减免"},
    {t:"E-I", d:"专家敌人 + 瘟疫毒气"},
    {t:"E-I-III-VII", d:"专家 + 瘟疫毒气 + 狩猎场 + 变异人"},
    {t:"E-H-I-XIV-XV", d:"专家 + 瘟疫毒气 + 纳垢的祝福 + 渣滓阵营 + 更多巡逻队"},
    {t:"J-I-II-IV", d:"专家 + 瘟疫毒气 + 怪物专家 + 狙击手"},
    {t:"J-I-II-VI", d:"专家 + 瘟疫毒气 + 怪物专家 + 近战较多"},
    {t:"XIII", d:"低刷新密度 + 单体敌人更强"},
    {t:"B-XIII", d:"通风净化 + 低刷新密度单体更强"},
    {t:"A-XIII", d:"黑暗 + 低刷新密度单体更强"},
    {t:"I-XIII", d:"专家波次 + 低刷新密度单体更强"},
  ] },'''

if old not in txt:
    print('FAIL: maelstrom entry not found')
    sys.exit(1)
txt = txt.replace(old, combos)
io.open(P, 'w', encoding='utf-8').write(txt)
print('terms.js updated')

# 2. demo:renderDetail 渲染 combos 表格
D = r'D:\DeepseekWorkspace\暗潮\04-Mods\term_db\demo\index.html'
html = io.open(D, encoding='utf-8').read()

# CSS
css_add = '''  .detail .d-combos { margin-top: 20px; }
  .detail .d-combos h3 { font-size: 13px; color: #8b949e; margin-bottom: 8px; letter-spacing: 1px; }
  .detail .d-combos table { width: 100%; border-collapse: collapse; font-size: 13px; }
  .detail .d-combos td { padding: 6px 10px; border-bottom: 1px solid #21262d; }
  .detail .d-combos td:first-child { color: #f0c75e; font-weight: 600; white-space: nowrap; width: 140px; }
  .detail .d-combos tr:hover td { background: #1c2129; }'''
html = html.replace('  .detail .d-related { margin-top: 20px; }', css_add + '\n  .detail .d-related { margin-top: 20px; }')

# JS:renderDetail 里在 related 前插 combos 渲染
old_js = '''    <div class="d-related">
      <h3>⚡ 关联术语</h3>'''
new_js = '''    ${x.combos ? `<div class="d-combos">
      <h3>📋 固定词条组合</h3>
      <table>${x.combos.map(c => `<tr><td>${c.t}</td><td>${c.d}</td></tr>`).join("")}</table>
    </div>` : ""}
    <div class="d-related">
      <h3>⚡ 关联术语</h3>'''
if old_js not in html:
    print('FAIL: renderDetail marker not found')
    sys.exit(1)
html = html.replace(old_js, new_js)
io.open(D, 'w', encoding='utf-8').write(html)
print('demo updated')
