# -*- coding: utf-8 -*-
"""查 breed 免疫字段: immune/immunity/instakill/execute 免疫"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'
print('===== breed 文件免疫字段 =====')
BREEDS = os.path.join(ROOT, 'settings', 'breed', 'breeds')
for dp, dn, fn in os.walk(BREEDS):
    for f in fn:
        if not f.endswith('_breed.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        for m in re.finditer(r'[^\n]*(immune|immunity|instakill|instant|execute|kill_)[^\n]*', t, re.I):
            line = m.group(0).strip()
            if len(line) < 150 and ('boss' in f or 'daemonhost' in f or 'nurgle' in f or 'spawn' in f or 'monster' in f):
                print('  %s: %s' % (os.path.basename(f), line))

print('\n===== 全局免疫机制(boss/monster 免疫 instakill) =====')
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not f.endswith('.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        if re.search(r'instakill', t, re.I) and re.search(r'(boss|monster|breed)', t, re.I) and ('health' in f.lower() or 'damage' in f.lower() or 'buff' in f.lower()):
            for m in re.finditer(r'[^\n]*(instakill)[^\n]*(boss|monster|breed)[^\n]*|[^\n]*(boss|monster|breed)[^\n]*(instakill)[^\n]*', t, re.I):
                line = m.group(0).strip()
                if len(line) < 170:
                    print('  %s: %s' % (os.path.relpath(p, ROOT), line))
