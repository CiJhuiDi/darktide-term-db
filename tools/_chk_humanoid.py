# -*- coding: utf-8 -*-
"""搜 breed 定义里 humanoid/human 骨架标记"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'
for kw in ['humanoid', 'human', 'actor_skeleton', 'skeleton', 'is_human']:
    cnt = 0
    for dp, dn, fn in os.walk(ROOT):
        for f in fn:
            if not (f.endswith('.lua') and ('breed' in f.lower() or 'settings' in f.lower())):
                continue
            p = os.path.join(dp, f)
            try:
                t = open(p, encoding='utf-8', errors='replace').read()
            except Exception:
                continue
            for m in re.finditer(r'[^\n]*' + kw + r'[^\n]*', t):
                line = m.group(0).strip()
                if len(line) < 140:
                    print('%s | %s: %s' % (kw, os.path.relpath(p, ROOT), line))
                    cnt += 1
                if cnt >= 6:
                    break
        if cnt >= 6:
            break
    print('--- %s: %d ---' % (kw, cnt))
