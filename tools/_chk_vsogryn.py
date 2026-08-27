# -*- coding: utf-8 -*-
"""damage_vs_ogryn 目标匹配实现: 找伤害计算里的判定"""
import os, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'
for dp, dn, fn in os.walk(ROOT):
    for f in fn:
        if not f.endswith('.lua'):
            continue
        p = os.path.join(dp, f)
        try:
            t = open(p, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        # 找 damage_vs_ogryn 的实际使用(非定义)
        if 'damage_vs_ogryn' in t and 'stat_buff' not in f.lower() and 'talent' not in f.lower():
            hits = [m.start() for m in re.finditer(r'damage_vs_ogryn', t)]
            if hits:
                print('== %s (%d处) ==' % (os.path.relpath(p, ROOT), len(hits)))
                for i in hits[:3]:
                    seg = t[max(0, i-200):i+150].replace('\n', ' ')
                    print('   ...', seg[:280])
                    print()
