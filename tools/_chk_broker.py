# -*- coding: utf-8 -*-
"""找 broaker/老兵 暴击秒杀天赋(broker = veteran?)"""
import os, re, sys, json, io
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'
# broker 天赋文件
for dp, dn, fn in os.walk(os.path.join(ROOT, 'settings', 'ability')):
    for f in fn:
        if 'broker' in f.lower() or 'veteran' in f.lower():
            print('文件:', os.path.relpath(os.path.join(dp, f), ROOT))
# 搜 loc 键 broker passive melee crit instakill -> 天赋键
d = json.load(io.open(r'D:\DeepseekWorkspace\暗潮\03-技能树\数据\darktide_zh_loc.json', encoding='utf-8'))
print()
print('===== 秒杀相关官方文本 =====')
for k, v in d.items():
    if isinstance(v, str) and '秒杀' in v and len(v) < 160:
        print('  %s = %s' % (k, v[:120]))
