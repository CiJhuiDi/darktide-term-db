# -*- coding: utf-8 -*-
"""broker_talents.lua: 找 melee_crit_instakill 天赋 + buff"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'
p = os.path.join(ROOT, 'settings', 'ability', 'archetype_talents', 'talents', 'broker_talents.lua')
t = open(p, encoding='utf-8', errors='replace').read()
print('文件大小:', len(t))
i = t.find('instakill')
print('instakill @', i)
if i >= 0:
    print(t[max(0, i-400):i+900])
