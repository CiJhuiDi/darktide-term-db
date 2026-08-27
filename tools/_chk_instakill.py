# -*- coding: utf-8 -*-
"""追暴击秒杀(instakill)实现: 找 buff 模板 + 目标判定"""
import os, re, sys, json, io
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'

# 1) 天赋键: 找 passive_melee_crit_instakill 相关
print('===== instakill 相关(全源码) =====')
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not f.endswith('.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        if re.search(r'instakill|insta_kill|instant_kill|kill_instantly', t, re.I):
            print('== %s ==' % os.path.relpath(p, ROOT))
            for m in re.finditer(r'[^\n]*(instakill|insta_kill|instant_kill|kill_instantly)[^\n]*', t, re.I):
                line = m.group(0).strip()
                if len(line) < 170:
                    print('  ', line)
