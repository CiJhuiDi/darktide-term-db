# -*- coding: utf-8 -*-
"""查各 breed 的 body_size: 谁是人型(human_sized)"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
BREEDS = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts\settings\breed\breeds'
result = []
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
        bs = re.search(r'body_size\s*=\s*["\']?([a-z_0-9_]+)', t)
        base = re.search(r'base_unit\s*=\s*"([^"]+)"', t)
        if nm or bs:
            result.append((nm.group(1) if nm else os.path.basename(p), 
                           bs.group(1) if bs else '?',
                           (base.group(1).split('/')[-1] if base and base.group(1) else '?')))
print('%-30s %-14s %s' % ('breed', 'body_size', 'base_unit尾'))
for name, bs, bu in sorted(result):
    print('%-30s %-14s %s' % (name, bs, bu))
