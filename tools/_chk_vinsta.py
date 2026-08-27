# -*- coding: utf-8 -*-
"""veteran_talents: 暴击秒杀被动 -> buff 模板 -> 目标判定"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'

# 1) 天赋定义
p = os.path.join(ROOT, 'settings', 'ability', 'archetype_talents', 'talents', 'veteran_talents.lua')
t = open(p, encoding='utf-8', errors='replace').read()
for m in re.finditer(r'\{[^{}]*instakill[^{}]*\}', t, re.I):
    print('== 天赋 ==')
    print(m.group(0)[:700])
    print()
