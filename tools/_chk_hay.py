# -*- coding: utf-8 -*-
"""搜 Haymaker/干草机 + 秒杀机制(blessing)"""
import os, re, sys, json, io
sys.stdout.reconfigure(encoding='utf-8', errors='replace')
ROOT = r'D:\DeepseekWorkspace\暗潮\02-游戏源码\Darktide-Source-Code\src\scripts'
for kw in ['haymaker', 'Haymaker', 'instant_kill', 'instant_death', 'kill_shot', 'one_shot']:
    cnt = 0
    for dp, dn, fn in os.walk(ROOT):
        for f in fn:
            if not f.endswith('.lua'):
                continue
            p = os.path.join(dp, f)
            try:
                t = open(p, encoding='utf-8', errors='replace').read()
            except Exception:
                continue
            for m in re.finditer(kw, t):
                line = t[:m.start()].count('\n') + 1
                seg = t.splitlines()[line - 1].strip()[:120]
                print('%s @ %s:%d: %s' % (kw, os.path.relpath(p, ROOT), line, seg))
                cnt += 1
                if cnt >= 4:
                    break
        if cnt >= 4:
            break
    print('--- %s: %d 处 ---' % (kw, cnt))
# 官方文本 Haymaker
d = json.load(io.open(r'D:\DeepseekWorkspace\暗潮\03-技能树\数据\darktide_zh_loc.json', encoding='utf-8'))
print('=== 官方文本 干草机/秒杀 ===')
for k, v in d.items():
    if isinstance(v, str) and ('干草机' in v or '秒杀人型' in v or '秒杀' in v and len(v) < 130):
        print('  %s = %s' % (k, v[:110]))
