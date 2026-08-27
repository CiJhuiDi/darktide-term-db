# -*- coding: utf-8 -*-
"""ogryn_talents.lua: 重量级天赋完整定义(目标过滤/伤害加成)"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
p = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts\settings\ability\archetype_talents\talents\ogryn_talents.lua'
t = open(p, encoding='utf-8', errors='replace').read()
i = t.find('ogryn_fighter')
print(t[max(0, i-200):i+1500])
