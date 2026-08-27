# -*- coding: utf-8 -*-
"""查重量级天赋(Heavyweight)的目标判定: 猎群之主是否在内"""
import os, re, sys, json, io
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'

# 1) 官方文本找天赋名
d = json.load(io.open(r'D:\DeepseekWorkspace\暗潮\03-技能树\数据\darktide_zh_loc.json', encoding='utf-8'))
print('===== 官方 重量级 =====')
for k, v in d.items():
    if isinstance(v, str) and '重量级' in v:
        print('  %s = %s' % (k, v[:110]))

# 2) 源码找 heavyweight 相关
print('\n===== 源码 heavyweight =====')
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not f.endswith('.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        if 'heavyweight' in t.lower():
            for m in re.finditer(r'[^\n]*heavyweight[^\n]*', t, re.I):
                line = m.group(0).strip()
                if len(line) < 150:
                    print('  %s: %s' % (os.path.relpath(p, ROOT), line))
