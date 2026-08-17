# -*- coding: utf-8 -*-
"""一次性脚本:从 darktide_zh_loc.json 提取战斗机制术语清单(用完可删)"""
import json, io, re, sys
sys.stdout.reconfigure(encoding='utf-8', errors='replace')

SRC = r'D:\DeepseekWorkspace\暗潮\03-技能树\数据\darktide_zh_loc.json'
OUT = r'D:\DeepseekWorkspace\暗潮\99-临时文件\术语提取_机制词.md'

d = json.load(io.open(SRC, encoding='utf-8'))

# (中文词, 英文 key 匹配词, 备注)
WORDS = [
    ('撕裂', 'brittle', ''),
    ('劈裂', 'sunder', ''),
    ('暴击', 'critical', ''),
    ('踉跄', 'stagger', ''),
    ('硬直', 'stagger', '同踉跄'),
    ('穿透', 'penetrat', ''),
    ('压制', 'suppression', ''),
    ('韧性', 'toughness', ''),
    ('腐化', 'corruption', ''),
    ('狂信', 'fanatic', ''),
    ('清潮', 'horde', ''),
    ('护甲', 'armor', ''),
    ('弱点', 'weakspot', ''),
    ('爆头', 'headshot', ''),
    ('处决', 'execution', ''),
    ('流血', 'bleed', ''),
    ('燃烧', 'burn', ''),
    ('中毒', 'poison', ''),
    ('眩晕', 'stun', ''),
    ('击退', 'knockback', ''),
    ('格挡', 'block', ''),
    ('闪避', 'dodge', ''),
    ('重击', 'heavy', ''),
    ('轻击', 'light attack', ''),
    ('特殊攻击', 'special', ''),
    ('攻速', 'attack speed', ''),
    ('精准度', 'accuracy', ''),
    ('稳定性', 'stability', ''),
    ('换弹', 'reload', ''),
    ('弹匣', 'magazine', ''),
    ('备弹', 'reserve', ''),
    ('减伤', 'damage reduction', ''),
    ('抗性', 'resistance', ''),
    ('暴击几率', 'critical chance', ''),
    ('暴击伤害', 'critical damage', ''),
    ('弱点伤害', 'weakspot damage', ''),
    ('踉跄伤害', 'stagger damage', ''),
    ('护甲穿透', 'armor penetration', ''),
    ('范围伤害', 'area damage', ''),
    ('爆炸', 'explosion', ''),
    ('电击', 'shock', ''),
    ('冰冻', 'freeze', ''),
    ('减速', 'slow', ''),
    ('祝福', 'blessing', ''),
    ('天赋', 'talent', ''),
    ('饰品', 'curio', ''),
    ('生命值', 'health', ''),
    ('护盾', 'shield', ''),
    ('狂乱', 'fervor', ''),
    ('冲锋', 'charge', ''),
    ('蓄力', 'charge', ''),
    ('连击', 'combo', ''),
    ('伤害抗性', 'damage resistance', ''),
    ('韧性伤害', 'toughness damage', ''),
    ('踉跄抗性', 'stagger resistance', ''),
    ('压制抗性', 'suppression resistance', ''),
]

lines = []
lines.append('# 暗潮战斗机制术语候选清单\n')
lines.append('> 来源:darktide_zh_loc.json(游戏官方中文完整文本, 139724 键) | 提取日期 2026-08-18\n')
lines.append('> 每个词 = 中文名 + 英文匹配 + 游戏内出现位置(key) + 示例文本。去留由你决定。\n')

def norm(s):
    return s.lower().replace(' ', '').replace('-', '').replace('_', '')

# 预处理:key 归一化集合(用于英文匹配)
key_norm = {norm(k): k for k in d}

for cn, en, note in WORDS:
    hit_keys = []      # 值里含中文词的 key
    en_keys = []       # key 里含英文词的 key
    for k, v in d.items():
        if cn in v:
            hit_keys.append(k)
    en_norm = norm(en)
    if en_norm:
        for kn, k in key_norm.items():
            if en_norm in kn:
                en_keys.append(k)
                if len(en_keys) >= 20:
                    break

    # 代表文本:优先短描述(定义性强),取 1-2 个
    samples = []
    for k in hit_keys:
        v = d[k]
        if 6 <= len(v) <= 100 and cn in v:
            samples.append((k, v))
    samples.sort(key=lambda x: len(x[1]))
    samples = samples[:3]

    lines.append(f'\n## {cn} {"(" + note + ")" if note else ""}\n')
    lines.append(f'- 英文匹配:`{en}`')
    lines.append(f'- 中文命中: **{len(hit_keys)}** 个 key | 英文 key 命中: {len(en_keys)} 个')
    if en_keys:
        lines.append(f'- 英文 key 示例: `{en_keys[0]}`、`{en_keys[1] if len(en_keys)>1 else ""}`、`{en_keys[2] if len(en_keys)>2 else ""}`')
    for k, v in samples:
        v = v.replace('\n', ' ')
        lines.append(f'- 示例 `{k}`: “{v}”')
    if not samples:
        for k in hit_keys[:2]:
            v = d[k].replace('\n', ' ')
            lines.append(f'- 示例 `{k}`: “{v[:90]}…”')

open(OUT, 'w', encoding='utf-8').write('\n'.join(lines))
print('written:', OUT)
print('words:', len(WORDS))
