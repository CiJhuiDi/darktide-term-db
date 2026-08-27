# -*- coding: utf-8 -*-
import io, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
s = io.open('data/terms.js', encoding='utf-8').read()
for nm in ['人型', '杂兵', '感染']:
    hits = [m.start() for m in re.finditer(nm, s)]
    print(nm, '出现', len(hits), '处')
    for i in hits[:3]:
        seg = s[max(0, i-60):i+120].replace('\n', ' ')
        print('   ...', seg)
    print()
