# -*- coding: utf-8 -*-
"""伤害计算: damage_vs_* 目标 breed 匹配实现"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'
# 找伤害相关目录
cands = []
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not f.endswith('.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        if 'vs_ogryn' in t and ('damage_extension' in f or 'damage' in p.lower() and 'buff' not in f and 'template' not in f):
            cands.append((os.path.relpath(p, ROOT), len(t)))
print('候选:', cands[:10])
# 直接搜 damage 系统里 breed 匹配 stat_buff 的代码
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not (f.endswith('.lua') and ('damage' in f.lower() or 'buff' in f.lower())):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        if re.search(r'breed.*(ogryn|monster|horde)|(ogryn|monster|horde).*breed', t) and ('damage_vs' in t or 'stat_buff' in t):
            print('== %s ==' % os.path.relpath(p, ROOT))
            for m in re.finditer(r'[^\n]*(ogryn|monster)[^\n]*(breed|breeds)[^\n]*', t):
                line = m.group(0).strip()
                if len(line) < 150:
                    print('  ', line)
