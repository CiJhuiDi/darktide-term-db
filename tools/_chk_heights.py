# -*- coding: utf-8 -*-
"""各 breed base_height 对比: 谁算 human_sized"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
BREEDS = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts\settings\breed\breeds'
want = ['houndmaster', 'plague_ogryn', 'ogryn_gunner', 'ogryn_executor', 'ogryn_bulwark',
        'poxwalker_breed', 'newly_infected', 'hound', 'armored_hound', 'mutant_breed',
        'cultist_melee', 'renegade_melee', 'beast_of_nurgle', 'spawn', 'daemonhost',
        'renegade_rifleman', 'renegade_executor', 'cultist_gunner', 'renegade_gunner',
        'cultist_berzerker', 'renegade_berzerker', 'cultist_captain', 'renegade_captain']
print('%-28s %-8s %s' % ('breed', 'height', 'body_size字段'))
for dp, dn, fn in os.walk(BREEDS):
    for f in fn:
        if not f.endswith('_breed.lua'):
            continue
        if not any(w in f for w in want):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        nm = re.search(r'name\s*=\s*["\']([a-z_0-9]+)["\']', t)
        bh = re.search(r'base_height\s*=\s*([\d.]+)', t)
        bs = re.search(r'body_size\s*=\s*"([^"]+)"', t)
        print('%-28s %-8s %s' % (nm.group(1) if nm else os.path.basename(f),
                                  bh.group(1) if bh else '?',
                                  bs.group(1) if bs else '无'))
