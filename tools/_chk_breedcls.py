# -*- coding: utf-8 -*-
"""Breed.human_sized / enemy_type 函数定义"""
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
        if re.search(r'(function\s+Breed\.|Breed\.\w+\s*=\s*function|human_sized\s*=\s*function)', t):
            print('== %s ==' % os.path.relpath(p, ROOT))
            for m in re.finditer(r'[^\n]*(human_sized|enemy_type)\s*=\s*function[^\n]*|function\s+Breed\.[a-z_]*[^\n]*', t):
                print('  ', m.group(0).strip()[:140])
