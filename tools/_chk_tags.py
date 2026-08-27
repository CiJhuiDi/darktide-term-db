# -*- coding: utf-8 -*-
"""查 breed.tags: 猎群之主/瘟疫欧格林/怪物 的 tags"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
BREEDS = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts\settings\breed\breeds'
targets = ['houndmaster', 'plague_ogryn', 'bulwark', 'executor', 'gunner', 'beast_of_nurgle', 'spawn', 'daemonhost', 'poxwalker', 'mutant']
for dp, dn, fn in os.walk(BREEDS):
    for f in fn:
        if not f.endswith('_breed.lua'):
            continue
        if not any(t in f for t in targets):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        nm = re.search(r'name\s*=\s*["\']([a-z_0-9]+)["\']', t)
        tags = re.search(r'tags\s*=\s*\{([^}]*)\}', t, re.S)
        print('%-28s tags: %s' % (nm.group(1) if nm else f, tags.group(1).strip()[:120] if tags else '无tags字段'))
