# -*- coding: utf-8 -*-
"""broker_buff_templates.lua: broker_passive_melee_crit_instakill 模板全文"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'
for dp, dn, fn in os.walk(os.path.join(ROOT, 'settings', 'buff')):
    for f in fn:
        if 'broker' not in f.lower():
            continue
        p = os.path.join(dp, f)
        t = open(p, encoding='utf-8', errors='replace').read()
        if 'broker_passive_melee_crit_instakill' in t:
            print('== %s ==' % os.path.relpath(p, ROOT))
            i = t.find('broker_passive_melee_crit_instakill')
            # 找模板定义块(带 = {)
            j = t.find('= {', i)
            # 平衡括号取块
            depth = 0
            k = j
            while k < len(t):
                c = t[k]
                if c == '{':
                    depth += 1
                elif c == '}':
                    depth -= 1
                    if depth == 0:
                        break
                k += 1
            print(t[j:k+1])
