# -*- coding: utf-8 -*-
"""猎群之主/瘟疫欧格林/收割者/粉碎者/瘟疫行者/变种人 tags"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
BREEDS = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts\settings\breed\breeds'
want = ['houndmaster', 'plague_ogryn', 'ogryn_gunner', 'ogryn_executor', 'poxwalker_breed', 'mutant_breed', 'armored_hound', 'newly_infected']
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
        tags = re.search(r'tags\s*=\s*\{(.*?)\n\t\}', t, re.S)
        print('%-26s tags: %s' % (nm.group(1) if nm else os.path.basename(f),
                                   (tags.group(1).strip().replace('\n\t\t', ' ') if tags else '无')))
