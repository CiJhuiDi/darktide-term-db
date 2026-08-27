# -*- coding: utf-8 -*-
"""breeds 目录: 敌人全名单 + ogryn 系识别"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts\settings\breed'
# 列 breeds 子目录
for dp, dn, fn in os.walk(ROOT):
    rel = os.path.relpath(dp, ROOT)
    lua = [f for f in fn if f.endswith('.lua')]
    if lua:
        print('%s: %d 个文件' % (rel or '.', len(lua)))
# breeds 目录下的 breed 定义文件名(通常是 breed_*.lua)
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if f.startswith('breed_') and f.endswith('.lua'):
            name = f.replace('breed_', '').replace('.lua', '')
            print('  ', name)
