# -*- coding: utf-8 -*-
"""查源码: 秒杀/即死(Haymaker/instant kill) 对 人型 的判定"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'
hits = []
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not f.endswith('.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        if re.search(r'instant_kill|instant kill|haymaker|Haymaker|execute_instantly|kill_condition', t):
            hits.append((os.path.relpath(p, ROOT), len(t)))
print('秒杀相关文件 %d:' % len(hits))
for h in sorted(hits, key=lambda x: -x[1])[:8]:
    print('  ', h[0])
# 找 humanoid/human 相关目标过滤
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not f.endswith('.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        if 'humanoid' in t.lower() or ('instant_kill' in t and 'target' in t):
            for m in re.finditer(r'[^\n]*(humanoid|instant_kill)[^\n]*', t):
                line = m.group(0).strip()
                if len(line) < 160:
                    print('  %s: %s' % (os.path.relpath(p, ROOT), line))
