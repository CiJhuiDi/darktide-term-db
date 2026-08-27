# -*- coding: utf-8 -*-
"""Breed.human_sized 实现"""
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
        if 'human_sized' in t and ('Breed' in t or 'function' in t):
            print('== %s ==' % os.path.relpath(p, ROOT))
            for m in re.finditer(r'[^\n]*(human_sized|ogryn_sized|body_size)[^\n]*', t):
                line = m.group(0).strip()
                if len(line) < 180:
                    print('  ', line)
