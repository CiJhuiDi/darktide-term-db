# -*- coding: utf-8 -*-
"""查: 1)各Boss breed的enemy_type 2)instakill伤害免疫逻辑"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'

# 1) breed 文件里 enemy_type 字段
BREEDS = os.path.join(ROOT, 'settings', 'breed', 'breeds')
print('===== breed enemy_type 字段 =====')
seen = set()
for dp, dn, fn in os.walk(BREEDS):
    for f in fn:
        if not f.endswith('_breed.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        nm = re.search(r'name\s*=\s*["\']([a-z_0-9]+)["\']', t)
        et = re.search(r'enemy_type\s*=\s*"([^"]+)"', t)
        if et:
            key = (et.group(1), nm.group(1) if nm else '?')
            if key[1] in seen:
                continue
            seen.add(key[1])
            print('  %-24s enemy_type=%s' % (key[1], key[0]))

# 2) instakill 免疫(伤害/健康系统)
print('\n===== instakill 免疫逻辑 =====')
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not (f.endswith('.lua') and ('health' in f.lower() or 'damage' in f.lower() or 'instakill' in f.lower())):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        if 'instakill' in t.lower() and ('immune' in t.lower() or 'boss' in t.lower() or 'monster' in t.lower() or 'damage_type' in t):
            print('== %s ==' % os.path.relpath(p, ROOT))
            for m in re.finditer(r'[^\n]*(instakill|immune)[^\n]*', t, re.I):
                line = m.group(0).strip()
                if len(line) < 160:
                    print('  ', line)
