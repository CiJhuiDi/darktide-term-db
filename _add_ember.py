# -*- coding: utf-8 -*-
"""一次性脚本:浩劫 children 补「烈焰地狱」词条(用完即删)"""
import io, re, json, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')

P = r'D:\DeepseekWorkspace\暗潮\04-Mods\term_db\data\terms.js'
txt = io.open(P, encoding='utf-8').read()

js = json.dumps

new_child = ('{t:' + js('烈焰地狱') + ', d:' + js('任务区域燃烧,火焰部队游荡') +
            ', detail:' + js('任务区域正在燃烧。多支火焰部队在当地游荡。') +
            ', enhanced:' + js('任务区域持续燃烧，多支火焰部队（火系敌人）游荡，注意火焰环境伤害；有「+猎群」「高强度」「+突击部队」等变体。（待校对）') + '}')

# 在浩劫 children 最后一条(花园蔓生)后插入
marker = '{t:"花园蔓生", d:"部分敌人长出荆棘状生物结构", detail:"情报显示，这片区域的一些敌人长出了类似荆棘的生物结构。", enhanced:'
idx = txt.find(marker)
if idx == -1:
    print('FAIL: 花园蔓生 marker not found')
    sys.exit(1)
# 找到该条目结束(下一个 \n 或 },)
end = txt.find('}', idx)
# enhanced 值里可能有 }(json.dumps 转义了,无裸 }),找配对的 }——enhanced 用 js() 序列化,内部引号转义,无裸 },所以第一个 } 即条目结束
insert_at = end + 1
txt = txt[:insert_at] + ',\n    ' + new_child + txt[insert_at:]

io.open(P, 'w', encoding='utf-8').write(txt)
print('inserted 烈焰地狱 after 花园蔓生')
print('havoc children now:', txt.count('enhanced:') - 0)
