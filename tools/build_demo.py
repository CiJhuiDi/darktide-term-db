# -*- coding: utf-8 -*-
"""构建自包含 demo(index.html 内嵌数据)——改 data/terms.js 后运行本脚本同步 demo
用法: python tools/build_demo.py
"""
import io, re, os, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DATA = os.path.join(BASE, 'data', 'terms.js')
DESCS = os.path.join(BASE, 'data', 'move_descs.js')
DEMO = os.path.join(BASE, 'demo', 'index.html')

terms_js = io.open(DATA, encoding='utf-8').read()
m = re.search(r'(const TERMS = \[.*?\];)', terms_js, re.S)
if not m:
    print('FAIL: TERMS array not found in', DATA)
    sys.exit(1)
terms_block = m.group(1)

descs_js = io.open(DESCS, encoding='utf-8').read()
md = re.search(r'(const MOVE_DESC = \{.*?\};)', descs_js, re.S)
if not md:
    print('FAIL: MOVE_DESC not found in', DESCS)
    sys.exit(1)
desc_block = md.group(1)

html = io.open(DEMO, encoding='utf-8').read()
# 内嵌数据 script 块(TERMS + MOVE_DESC)
script_inline = '<script>\n' + terms_block + '\n\n' + desc_block + '\n</script>'
old_ext = '<script src="../data/terms.js"></script>'
if old_ext in html:
    html = html.replace(old_ext, script_inline)
else:
    # 幂等:找到内嵌数据 script 块并替换(允许前有注释行)
    m2 = re.search(r'<script>\n(?://[^\n]*\n)?(const TERMS = \[.*?\];)(?:\n\nconst MOVE_DESC = \{.*?\};)?\n</script>', html, re.S)
    if m2:
        html = html.replace(m2.group(0), script_inline)
    else:
        print('FAIL: neither external nor embedded data marker found')
        sys.exit(1)

# 注释标记数据生成时间
html = html.replace('<script>\nconst TERMS', '<script>\n// 数据由 data/terms.js + data/move_descs.js 构建生成(build_demo.py)\nconst TERMS')
io.open(DEMO, 'w', encoding='utf-8').write(html)
print('demo rebuilt:', DEMO, '| terms:', terms_block.count('{ t:'), '| descs:', desc_block.count(':'))
