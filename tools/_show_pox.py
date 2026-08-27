# -*- coding: utf-8 -*-
"""chaos_poxwalker_breed.lua 内容"""
import os, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts\settings\breed\breeds'
p = os.path.join(ROOT, 'chaos', 'chaos_poxwalker_breed.lua')
t = open(p, encoding='utf-8', errors='replace').read()
print(t[:1500])
