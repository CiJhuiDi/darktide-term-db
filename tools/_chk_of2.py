# -*- coding: utf-8 -*-
"""追 ogryn_better_ogryn_fighting buff + damage_vs_ogryn 目标名单"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not f.endswith('.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        if 'ogryn_better_ogryn_fighting' in t or 'damage_vs_ogryn' in t:
            print('== %s ==' % os.path.relpath(p, ROOT))
            for m in re.finditer(r'[^\n]*(ogryn_better_ogryn_fighting|damage_vs_ogryn)[^\n]*', t):
                line = m.group(0).strip()
                if len(line) < 160:
                    print('  ', line)
