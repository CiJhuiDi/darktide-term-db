# term_db · 项目交接摘要

> **给新会话的快速上手文档**：读完这个即可接手。
> 最后更新：2026-08-18 01:35 | 当前版本：v0.4（数据 86 条 + 组合表，去留待用户定稿）

---

## 一、项目是什么

《战锤40K：暗潮》的**机制术语数据库**——收集游戏内名词，描述作用，并记录术语间关联。最终形态为游戏内 mod（聊天查询/界面）；当前以 HTML demo 迭代数据。

> 🚫 **铁律（用户 2026-08-18 指定）**：本项目**禁止编造**——描述/数值/解锁条件等必须来自官方文本、反编译源码、ENLocalizationFIX 或用户确认；拿不准的方案先问用户，不要脑补（教训：浩劫“35 级解锁”系脑补错误，实际为满级 30 级后）。

- **定位**：竞品空白（GitHub 搜 darktide glossary/dictionary 零结果）
- **位置**：`D:\DeepseekWorkspace\暗潮\04-Mods\term_db\`
- **仓库**：git 已 init（多 commit），**未建 GitHub 远端仓**
- **状态**：用户逐条定稿去留中；demo 可用

## 二、目录结构

```
term_db/
├── data/terms.js              # 术语数据源（86 条 + 组合表）
├── demo/index.html            # 自包含 demo（数据内嵌，双击即用）
├── tools/build_demo.py        # 改数据后重建 demo（python tools/build_demo.py）
├── docs/术语清单_v0.3.md      # 清单（去留标注 + 关系图 + 勘误）
├── PROJECT_HANDOFF.md         # 本文件
└── README.md                  # 项目说明
```

## 三、数据格式

```js
{ t:"撕裂", en:"Rending", cat:"damage", keep:true,
  src:"天赋/ENLocalizationFIX", d:"降低目标护甲减伤（破甲）……",
  r:["护甲","脆弱"] }

// 带明细表的大条目（大漩涡/浩劫）：
{ t:"大漩涡", ..., combosLabel:"固定词条组合",
  combos:[ {t:"I-II", d:"专家波次 + 怪物专家"}, ... ] }
```

- `cat`：damage / defense / action / gear / **mission**（任务与词条，2026-08-18 新增）
- `keep`：true=建议收录 / false=待定；`r`：关联（双向，点击跳转）
- `combos`：明细表（大漩涡 23 组固定组合 / 浩劫 15 个词条），demo 渲染表格

## 四、数据来源与校准（三源）

1. **官方中文完整文本**：`暗潮\03-技能树\数据\darktide_zh_loc.json`（139724 键，LocalizationExport 导出；解析脚本 `03-技能树\脚本\parse_localization.py`）——术语名/出处
2. **官方术语表**：`loc_glossary_*`（22 条：护甲类型/被动/能力/楔石/光环/闪击等）——官方基准层（未全收，待办）
3. **反编译源码**：`暗潮\02-游戏源码\Darktide-Source-Code`——机制验证（如 rending/void shield）
4. **ENLocalizationFIX 系列（描述校准主力）**：游戏 mods 目录的 Blessings/Curios/Talents/Traits 中文描述重写，实测级细节。
   已归档到项目内：`references\enloc_fix_ref\`（含 `术语提取_参考.md` 66 词频 + `机制描述_精华.md` 关键机制完整描述）
5. 人工：用户逐条定稿

## 五、关键勘误与机制事实（铁证，防再错）

- **撕裂 = Rending** = 破甲/减护甲减伤，仅自身生效，**超 100% 收益降至 1/4**，对无甲/感染 100% 封顶
- **脆弱 = Brittleness** = 受伤加深，直击/推搡施加，每层 **2.5%**，上限 **40%（16 层）**，全队有效
- **链锯撕裂（Sawing）** 与撕裂/脆弱无关（待定条目）
- **灵巧（Finesse）** = 暴击+弱点伤害加成；武器面板译「武器娴熟」；**只算部分增幅，实际收益偏低**（ENLocalizationFIX 实测）
- **护甲六类**：无甲 Unarmored / 感染 Infested(disgustingly_resilient) / 狂人 Berzerker / 防弹 Armored / 硬壳 Super Armor / 不屈 Resistant
- **虚空盾 Void Shield**：首领敌人护盾（沃尔弗/双子队长），击破爆炸；与远征道具"虚空盾"同名不同物
- **大漩涡词条 = 固定编号组合**（23 组，如 I-II=专家波次+怪物专家）；**浩劫词条 15 个**（帝皇之光渐衰/蛮横敌军/最后的钟声等）——均已在 combos 明细表

## 六、demo 使用与维护

- 双击 `demo/index.html` 即用（**自包含**，数据内嵌，无需服务器）
- 改数据流程：编辑 `data/terms.js` → `python tools/build_demo.py` 重建 → 验证（node --check）
- ⚠️ build_demo.py 正则已兼容注释行（`<script>\n// 注释\nconst TERMS...`）；改结构时保持 marker 稳定

## 七、待办

- [ ] 用户定稿：去留（86 条中待定项）/ 描述 / 关联
- [ ] 补官方 glossary 22 条（闪击/楔石/能力修正等）
- [ ] 事件词条（蛮汉与猛爆/腐化电波等几十个）按需扩展
- [ ] 关系图谱视图（节点连线，参考技能树项目 `03-技能树\成品\老兵技能树.html`）
- [ ] 数据转 terms.json（定稿后）
- [ ] 游戏内 mod 化（`/term 撕裂` 聊天查询或界面）
