# -*- coding: utf-8 -*-
"""找 ogryn_better_ogryn_fighting 模板 + damage_vs_ogryn 目标判定实现"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'

# 1) buff 模板定义
print('===== ogryn_better_ogryn_fighting 模板 =====')
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not f.endswith('.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        if 'ogryn_better_ogryn_fighting' in t and ('templates' in f or 'buff' in f.lower()):
            print('== %s ==' % os.path.relpath(p, ROOT))
            i = t.find('ogryn_better_ogryn_fighting')
            print(t[max(0, i-100):i+800])
            break

# 2) damage_vs_ogryn 目标判定(找 breed 名单/标签)
print('\n===== damage_vs_ogryn 目标判定 =====')
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not f.endswith('.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        if 'damage_vs_ogryn' in t and ('buff_templates' in f or 'stat_buff' in f.lower()):
            for m in re.finditer(r'[^\n]*damage_vs_ogryn[^\n]*', t):
                line = m.group(0).strip()
                if len(line) < 180:
                    print('  %s: %s' % (os.path.relpath(p, ROOT), line))
