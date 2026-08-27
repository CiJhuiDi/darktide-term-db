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
├── data/pinyin_map.js         # 词条名拼音映射(全拼+首字母, pypinyin 生成)
├── tools/build_demo.py        # 改数据后重建 demo（python tools/build_demo.py）
├── tools/mail_review.py       # 校对表邮件收发(QQ IMAP/SMTP, 按附件名识别)
├── docs/术语清单_v0.3.md      # 清单（去留标注 + 关系图 + 勘误）
├── PROJECT_HANDOFF.md         # 本文件
└── README.md                  # 项目说明
```

## 三、数据格式

```js
{ t:"撕裂", en:"Rending", cat:"damage", keep:true,
  src:"天赋/ENLocalizationFIX", d:"降低目标护甲减伤（破甲）……",
  r:["护甲","脆弱"] }

// 带子词条的大条目（大漩涡/浩劫/Boss/状态）：
{ t:"大漩涡", ..., children:[ {t:"A-漆黑一片", d:"...", type:"环境", ...}, ... ] }

// 引用机制（2026-08-18，单一词条库，消除重复）：
// 顶级词条 = 库（唯一数据源）；children 用 ref 引用库，t 覆盖显示名，type 分组
{ t:"通风净化", en:"Ventilation Purge", cat:"mission", ..., d:"...", detail:"...", enhanced:"..." }  // 库
大漩涡 children: {ref:"通风净化", t:"B-通风净化", type:"环境"}  // 显示"B-通风净化"，内容取库值
// demo 渲染 resolveChild(c): c.ref ? Object.assign({}, byName[c.ref], c, {t: c.t||c.ref}) : c
// 注意: byName 构建必须先建顶级索引再处理 children（ref 可能指向列表中靠后的顶级词条）
```

- `cat`：damage / defense / action / gear / **mission**（任务与词条，2026-08-18 新增）
- 98 词条（2026-08-18）：含新词条 被呕吐/生命格/腐化抗性/闪击；glossary 22 条陆续补录中（闪击已入）
- `keep`：true=建议收录 / false=待定；`r`：关联（双向，点击跳转）
- `children`：子词条数组（大漩涡 23 / 浩劫 19 / Boss / 状态）；`ref`：引用顶级库（单一来源）；`type`：分组（环境/敌人/玩家/限制/难度档/人形/怪物）；`wip:true`：显示 ⚠️ WIP 徽章（5 个词条待实测）

## 四、数据来源与校准（三源）

1. **官方中文完整文本**：`暗潮\03-技能树\数据\darktide_zh_loc.json`（139724 键，LocalizationExport 导出；解析脚本 `03-技能树\脚本\parse_localization.py`）——术语名/出处
2. **官方术语表**：`loc_glossary_*`（22 条：护甲类型/被动/能力/楔石/光环/闪击等）——官方基准层（未全收，待办）
3. **反编译源码**：`暗潮\02-游戏源码\Darktide-Source-Code`——机制验证（如 rending/void shield）
4. **ENLocalizationFIX 系列（描述校准主力）**：游戏 mods 目录的 Blessings/Curios/Talents/Traits 中文描述重写，实测级细节。
   已归档到项目内：`references\enloc_fix_ref\`（含 `术语提取_参考.md` 66 词频 + `机制描述_精华.md` 关键机制完整描述）
5. 人工：用户逐条定稿

### 大漩涡组合映射(M01-M19 + 6-1 系列, 2026-08-18 从 intro 移入, 内部参考)
- A-I-II=M05 漆黑一片+专家波次+怪物专家 | A-XIII=6-1-03 黑暗(漆黑一片)+低刷新密度单体更强 | B-I-IV=M06 通风净化+专家波次+狙击手
- B-VIII-V-F=M09 通风净化+远程为主+只有血痂阵营+20%冷却减免 | B-XIII=6-1-02 通风净化+低刷新密度单体更强 | C-I-VI=M07 专家波次+只有血痂阵营+近战为主+无弹药道具
- D-I-IV-IX-G=M11 专家波次+狙击手+额外瘟疫爆者+额外炸药桶+强化闪击 | D-III-VII-IX-G=M12 狩猎场+额外瘟疫爆者+变异人波次+强化闪击+额外炸药桶
- I-E=M02 专家波次+纳垢祝福 | I-E-F=M04 狩猎场+纳垢祝福+20%冷却减免 | I-II=M01 专家波次+怪物专家 | I-II-V-E-G=M10 专家波次+纳垢祝福+怪物专家+远程为主+血痂+强化闪击
- I-III=M03 专家波次+狩猎场 | I-III-VII-F=M08 专家波次+狩猎场+变异人波次+20%冷却减免 | I-IX-E-F=M13 变异人波次+纳垢祝福+专家波次+20%冷却减免
- I-XIII=6-1-04 专家敌人波次+低刷新密度单体更强 | J-I-II-IV=M18 专家级敌人+瘟疫毒气+怪物专家+狙击手 | X-XI-XII-G-H=M14 持续腐化+低游荡+无敌群+专家波次+20%冷却减免
- XIII=6-1-01 低刷新密度单体更强 | E-H-I-XIV-XV=M17 专家级敌人+瘟疫毒气+纳垢祝福+渣滓+更多巡逻队 | E-I=M15 专家级敌人+瘟疫毒气 | E-I-III-VII=M16 专家级敌人+瘟疫毒气+狩猎场+变异人 | J-I-II-VI=M19 专家级敌人+瘟疫毒气+怪物专家+近战较多


### B站社区资料源（2026-08-18 收录，社区实测数据，需与源码/官方交叉验证）
- **丁香与黑醋栗**（space.bilibili.com/8360100，2.9万粉，专栏优质UP主，可信度高，实测+解包）——7 篇暗潮专栏：
  - cv26806443 天赋树系统介绍 | cv26850734 欧格林天赋树3.2.30（已用：撕裂公式/踉跄免疫期/能量定义）| cv26851966 狂信徒天赋树3.2.30 | cv26854103 灵能者天赋树3.2.22 | cv26854936 帝国老兵天赋树3.2.30 | cv40931690 欧格林天赋树变种(梦魇与幻象) | cv50438538 护教军天赋设计
- **苏格拉底OwO**——cv46924008 浩劫地图和词条轮换·词条说明（已用：爬层机制/40层数值表/周奖励；与源码交叉验证：-35%生命、近战腐化30%吻合）；cv43152766 9月3浩劫地图和词条轮换
- **大漩涡代码词条对照表**（B站 opus/873666755412623361，作者署名"帝国海军POI！"，文章 cv28438067 是啥名最爱的提督呢）：词条编号实测表（Ⅰ专家波次/Ⅱ怪物专家/Ⅲ狩猎场/Ⅳ狙击手/Ⅴ血痂/Ⅶ变异人/Ⅸ炸药桶/A漆黑一片/B通风净化/D额外瘟疫爆者/E纳垢祝福/F冷却减免/G强化闪击）
- **残忍兔子的Proko**——cv20017577 数据解包数值和伤害机制详解 | cv20100034 五维属性和伤害机制（底层数据挖掘，备查）
- 抓取方法（B站风控备忘）：web_fetch 可过 B 站网页（opus/read 文章页）；API 需 wbi 签名（公开 key: img 7cd084941338484aae1ad9425b84077c / sub 4932caff0ff746eab6f01bf08b70ac45，MIXIN 打乱表，wts+w_rid md5）+ buvid cookie；搜索接口 search_type=article/video；nav 接口需登录态（-101）

### 敌人 tags 机制判定（2026-08-18 源码查证，决定技能/天赋/祝福是否生效）
- **核心机制**：每个 breed 有 `tags` 表（源码 breed 文件），stat_buff（damage_vs_ogryn / damage_vs_monsters / damage_vs_ogryn_and_monsters 等）按目标 breed.tags 匹配；veteran_buff_templates.lua 例：`is_ogryn = breed_tags.ogryn or breed_tags.monster or breed_tags.captain or breed_tags.cultist_captain`
- **关键敌人 tags**：
  - 猎群之主 = melee/minion/monster/**ogryn** → **吃重量级**(damage_vs_ogryn) | 收割者/粉碎者/盾卫 = elite+**ogryn** → 吃重量级
  - 瘟疫欧格林 = minion/**monster**（无 ogryn！）→ 走专门 `damage_vs_chaos_plague_ogryn` 通道（重量级buff里单独stat_buff）；丁香实测该通道不生效=肥鲨BUG；另因 monster tag，**对怪物增伤对瘟疫欧格林生效**
  - 纳垢兽/混沌魔物/恶魔宿主 = **monster** → 吃对怪物增伤；恶魔宿主另有 witch tag
  - 瘟疫行者/变异/触手/呻吟者 = horde/melee/minion/poxwalker（杂兵判定）| 猎犬 = disabler/special（专家）| 变种人 = disabler/special
- **etype（来源/种族维度，词条展示）≠ tags（机制判定维度）**：瘟疫行者 etype=感染（行尸）但人形尺寸(base_height 1.7/human骨架)→暴击秒杀类效果大概率生效(待实测)；"可秒杀"是杂兵属性非人型属性
- **重量级(ogryn_ogryn_killer, buff=ogryn_better_ogryn_fighting)** = 对欧格林伤害+减伤；灵能/老兵有 damage_vs_ogryn_and_monsters（ogryn或monster双吃）
- **秒杀判定 = Breed.human_sized()（2026-08-18 深挖）**：老兵暴击秒杀(broker_passive_melee_crit_instakill)触发链 = 近战暴击(on_crit_melee) + human_sized(breed) + 排除 enemy_type=="captain"；ogryn 闪避踉跄同用 human_sized（+排除 elite/special）；函数本体在 bundle(反编译缺)，但大部分 breed 无 body_size 字段 + 闪避踉跄对瘟疫行者生效 → 反推按 **base_height 高度**判定（分界约 2.0-2.4）
  - 可被秒杀：感染系(瘟疫行者等 1.7)、人形士兵(1.9-2.0)、猎犬(1.5, special待实测)；不可：欧格林系(2.5+)、怪物(3.6)、Boss(免疫秒杀,恶魔宿主虽1.7但Boss)
  - 边界待实测：变种人 2.4(用户确认人型分类, 秒杀判定待实测)
- 词条已更新：感染系4词条补"人形尺寸可被暴击秒杀(源码确认)"、恶魔宿主补"Boss免疫秒杀"、变种人补"人型(实测)"
- **秒杀免疫两层(2026-08-18 补充)**：触发层(broker被动: 近战暴击+human_sized+非captain)决定"会不会尝试"；**执行层 BuffUtils.instakill_with_buff 决定"能不能死"**: `is_boss or armor==super_armor(硬壳) or armor==resistant(不屈) or breed.ignore_instakill → return false 免疫`——恶魔宿主(is_boss)免疫、欧格林系(不屈装甲)免疫(体型非主因)、瘟疫行者(无甲)不免疫被秒；硬壳装甲敌人也免疫
- **对外合规(2026-08-18 复查)**: terms.js/demo 清 5 处"源码"字样(源码确认→游戏文件确认、通风净化src、连长 table.clone/netgunner 痕迹)——对外数据**禁止"源码/代码/标识符"字样**(内部 HANDOFF 保留溯源)
## 五、关键勘误与机制事实（铁证，防再错）

- **撕裂 = Rending** = 破甲/减护甲减伤，仅自身生效，**超 100% 收益降至 1/4**，对无甲/感染 100% 封顶
- **脆弱 = Brittleness** = 受伤加深，直击/推搡施加，每层 **2.5%**，上限 **40%（16 层）**，全队有效
- **链锯撕裂（Sawing）** 与撕裂/脆弱无关（待定条目）
- **灵巧（Finesse）** = 暴击+弱点伤害加成；武器面板译「武器娴熟」；**只算部分增幅，实际收益偏低**（ENLocalizationFIX 实测）
- **护甲六类**：无甲 Unarmored / 感染 Infested(disgustingly_resilient) / 狂人 Berzerker / 防弹 Armored / 硬壳 Super Armor / 不屈 Resistant
- **虚空盾 Void Shield**：首领敌人护盾（沃尔弗/双子队长），击破爆炸；与远征道具"虚空盾"同名不同物
- **连长 = 开发者模板角色（用户实测+源码推断）**：行为树为全武器池设计（7武器槽：网枪/地狱枪/爆弹/等离子/霰弹/动力剑/动力锤 + 手雷 + 虚空盾），实际装备由 loadout/phase 配置（bundle）限定——实测远程仅等离子手枪/霰弹枪，不投手雷；射网节点确认弃用（行为组件 table.clone(netgunner.behavior)，游戏中无连长射网案例）；双子（中尉）复用其动作体系，为连长模板的实例化变体
- **踉跄抗性表（写推搡/打断对策前必查，2026-08-18）**：变种人2000(几乎免疫) / 连长系500 / 怪物50-100 / 粉碎者15 / 重锤兵10 / 盾卫5 / 霰弹枪手5 / 收割者3 / 狂暴者1(激活后实测推搡无效) / 爆破者1 / 普通0 / 感染系0.75-0.85 / 呻吟者0.5(易推)；纳垢祝福buff给敌人 impact-1(踉跄更难)+全护甲减伤35%+hit_mass+10
- **大漩涡词条化（2026-08-18）**：从23个编号组合改为22个独立词条，组合映射保留在intro；**强化闪击=玩家Blitz技能强化(非敌人突袭)**；新增「闪击」词条(官方术语表,glossary补录中)
- **大漩涡词条 = 固定编号组合**（23 组，如 I-II=专家波次+怪物专家）；**浩劫词条 15 个**（帝皇之光渐衰/蛮横敌军/最后的钟声等）——均已在 combos 明细表

## 五点五、报名邮件自动回复（守护进程，2026-08-18 上线）

- **脚本**：`tools/mail_autoreply_daemon.py`（常驻，IMAP IDLE 监听 + 7.5min 自动续连 + 异常 5s 重连）；配置 `reviews/.mail_config.json`（QQ 邮箱 cijhuidi7788@qq.com + 授权码）
- **流程**：玩家发"参与校对"邮件 → 守护进程搜关键词（主题/正文）→ 按发件人**去重**（`reviews/.replied_emails.txt`）→ 自动回复（附件 = 最新校对清单 + demo，路径实时读取，更新数据后无需重启）
- **命令**：`python tools/mail_review.py autoreply --attach 清单 --attach demo`（手动兜底，--dry-run 试跑）；`signups`（收集报名）/ `fetch --merge`（收校对表合并）/ `send_batch`（批量）
- **日志**：`reviews/autoreply_daemon.log`；启动：`Start-Process python -ArgumentList "tools/mail_autoreply_daemon.py" -WindowStyle Hidden`
- **注意**：① 已做开机自启（启动文件夹 vbs）② 附件文件名固定 `校对清单_20260818.csv`，导出新清单时用同名覆盖 ③ 对方邮箱自动回复回执是正常现象（非误触发）④ 已回复 4 个报名者（toxic_potatoes/466765386/1059489474/941025602）

## 五点六、玩家提交建库统计（2026-08-18）

- **工具**：`tools/record_submissions.py`（扫描 reviews/校对_<名字>.csv → 入库 `reviews/player_submissions.json`，按文件 mtime 幂等更新）+ `tools/stats_report.py`（生成 `reviews/校对统计_<日期>.md`）
- **库结构**：players（按玩家：提交次数/累计词条/✅❓⚠️ 计数/验证方式分布/涉及词条）+ term_stats（按词条：被校对数/多人数确认/争议异议）
- **周日流程（定稿）**：fetch --merge 收表 → record_submissions.py 入库 → stats_report.py 出报表 → 反馈玩家
- **对外节奏**：玩家随时填随时发（守护进程即时收）；周日统一汇总反馈（我的维护节奏，非玩家 deadline）
- **注意**：库只收玩家提交（校对_<名字>.csv），不含模板（校对清单_*.csv）

## 六、demo 使用与维护

- 双击 `demo/index.html` 即用（**自包含**，数据内嵌，无需服务器）
- 改数据流程：编辑 `data/terms.js` / `data/move_descs.js` / `data/pinyin_map.js`(新增词条后跑 `python tools/_gen_pinyin.py`) → `python tools/build_demo.py` 重建 → 验证（node --check）
- demo 功能：分类 tab(含 状态/难度档 分组)、搜索(中文/英文/**拼音全拼/首字母**)、X 清空、关联跳转(裸名索引)、招式悬停、detail 限高独立滚动
- ⚠️ build_demo.py 正则已兼容注释行（`<script>\n// 注释\nconst TERMS...`）；改结构时保持 marker 稳定

## 六点五、对外话术与报名流程（2026-08-19 定稿，用户强调"对人的话术是重点"）

- **完整话术存档**：`docs/对外话术.md`（主帖/简短/极短三版 + 玩家疑问回复模板 + 自动回复正文 + 原则）
- **核心原则**：零专业感（禁"校对"）、诚实（明说数据可能不准=需要玩家的原因）、成品先行（demo 可把玩）、零压力（随时交周日汇总）、玩家语感
- **报名关键词**：主词"我想参与"（玩家自然表达），兼容旧词"参与校对/帮忙看看"；邮件主题或正文含即自动回复（守护进程）
- **词条演进**：参与校对(吓退) → 帮忙看看(玩家不这么说) → 我想参与(玩家第一反应) ✅
- 对外材料禁止"源码/反编译/标识符"字样（"校对"只留内部文件名/工具名）

## 六点六、term_db_mod 游戏内 mod（ImguiPatch 图形化，2026-08-19）

- **位置**：`暗潮-Mods	erm_db_mod`（开发目录）；游戏 mods 下是 **Junction**（cmd mklink /J 建的，改代码实时同步，**每次改完必须重启游戏**）
- **功能**：/term ui 打开面板（搜索/分类/列表/详情折行）；F8 keybind（default_value={"f8"}）；/term list 聊天列出
- **ImguiPatch 经验（防再踩）**：open_imgui/close_imgui 开关时各一次；update 只 begin_window/end_window；无 new_line/begin_child/text_wrapped/selectable（用 button/text 折行代替）；text 不换行需手动 wrap（全角2宽/52折行）
- **DMF keybind**：default_value={"f8"} 数组格式（default_key 无效）；T 键=游戏标记冲突
- **待办**：用户明测 F8+折行 → 填完整词条（校对定稿后）→ 打包发布

## 七、待办

- [ ] 用户定稿：去留（86 条中待定项）/ 描述 / 关联
- [ ] 补官方 glossary 22 条（闪击/楔石/能力修正等）
- [ ] 事件词条（蛮汉与猛爆/腐化电波等几十个）按需扩展
- [ ] 关系图谱视图（节点连线，参考技能树项目 `03-技能树\成品\老兵技能树.html`）
- [ ] 数据转 terms.json（定稿后）
- [ ] 游戏内 mod 化（`/term 撕裂` 聊天查询或界面）
- [ ] **大漩涡编号剩余未确认**：Ⅵ（渣滓阵营？）、Ⅷ（远程为主，反推待实测）、X/XI/XII/H（持续腐化/低游荡/无敌群/更多巡逻队/瘟疫毒气？）——玩家实测任务板后补
- [ ] **5 个 WIP 词条待实测**：持续腐化伤害/低刷新密度/低游荡/无敌群/更多巡逻队（实测后去 WIP）
- [x] 守护进程开机自启（启动文件夹 term_db_autoreply.vbs，隐藏窗口，已验证；移除=删 vbs）
- [ ] 校对表邮件自动检查（cron 每日 fetch --merge，待用户确认）——已配好 `reviews/.mail_config.json`（cijhuidi7788@qq.com）

## 八、踩坑速查与问题沉淀（2026-08-18 更新，防重蹈）

### A. 编造/脑补类（最严重 → 项目铁律）
- 浩劫"35 级解锁"脑补错误（暗潮 30 级封顶）→ 用户立铁律：**禁止编造**
- 虚空盾机制理解反了两次（连长=强制重启+爆发破除；中尉=无重启+单次伤害上限）→ 机制差异必须溯源码逐字段核对
- 瘟疫毒气误写"持续扣血"（实际 damage_type=corruption 涨腐化）→ 环境伤害也要查伤害类型
- 纳垢兽吃人误写"无条件"（实际需先叠 3 层呕吐 buff，冲刺吞食 current_stacks==3）→ 行为树条件函数逐个读
- 粉碎者重锤秒杀误归因"伤害溢出"（实际=浩劫腐化伤害吃生命格跳过倒地）→ 死亡判定看 should_die/num_wounds

### B. 正则/格式技术坑（高频，全踩过）
1. **嵌套结构禁用 `[^,]*`/`[^\]]*` 正则替换**（armor 数组被截断两次）→ 用定位+括号平衡
2. **匹配 r: 字段必须排除 armor:**（`r:\[` 会命中 arm**o r:**[）→ 用负向后顾 `(?<!armo)r:` 或定位对象再取字段
3. **插词条后清理稀疏槽**（`},,` / `},\n,` 会让 find 回调收到 undefined 崩掉，map 却跳过）→ 插入后查 `,,`
4. **顶级词条 `{ t:"`（带空格）≠ 子词条 `{t:"`（不带空格）** → 定位必须区分，否则改错对象（瘟疫毒气误改浩劫子词条）
5. **CRLF 行尾**：edit 锚点不匹配先查行尾；python 处理时探测 eol 再拼接
6. **PowerShell 引号转义地狱** → 凡带引号/emoji 的操作全走 python 脚本文件，不要 inline -c
7. **补丁函数体漏语句**（selectTerm 漏 `curPath=path` 导致跳转全失效）→ 改函数逐行对照原代码
8. **验证必须走 demo 实际路径**：node 验证 terms.js 原文 ≠ demo 内嵌数据（build_demo 正则截断风险）
9. **`]\s*}` 会误匹配子词条 r 数组结尾**（`r:["a","b"]}` 的 `]}` 被当数组结束，替换截断产生孤儿条目）——children/嵌套数组替换必须用括号平衡定位真实范围（大漩涡改造第三次踩同类坑）

### C. 数据一致性
- 官方译名自己不统一：renegade_vanguard 官方译"疤痂"，其余 16 个 renegade 均"血痂" → 统一"血痂先锋"，detail 注明官方孤例
- 官方教程称"腐蚀"，天赋文本用"腐化抗性" → 词条名用"腐化"（用户习惯+天赋佐证），描述注明官方叫法
- 关联方向性：单向引用大部分不该补反向（层级/分类/属性关系）；只有互相定义/上下位/抵抗关系才双向

### D. Bundle 盲区（数值拿不到，只能标"待实测"）
- damage_profile_templates / minion_toughness_templates / phase_templates / havoc modifier 配置均在游戏 bundle，反编译源码缺失
- 已知盲区：连长强制重启血量阈值、中尉单次伤害上限数值、粉碎者重锤腐化量、浩劫等级↔modifier 档位映射

### E. 校验工具（留存，改数据后必跑）
```
node tools/_check_refs.js         # r[] 悬空引用检查
node tools/_check_armor.js        # armor 数组结构体检(防 r:[ 误伤)
node tools/_scan_relations2.js    # 文本提及 vs r[] 缺失关联扫描
node tools/_scan_bidirectional.js # 单向关联(缺反向)扫描
node tools/_verify_demo.js        # demo 渲染逻辑验证
python tools/build_demo.py        # 改数据后重建 demo(必跑)
```
- 浏览器实测：Edge headless 复制 demo 注入自检脚本，结果写 document.title 抓取（PowerShell 管道易吞输出，直接看 title）

### F. 模板角色识别方法论（2026-08-18 连长案例沉淀）
- **行为树全武器池 = 模板角色嫌疑**：敌人行为树列出远超实际装备的武器槽/动作（连长 7 武器槽 + 手雷 + 虚空盾），实际只用其中一部分
- **行为组件 clone 其他 breed = 强疑点信号**：`table.clone(ranged_templates.netgunner.behavior)` 说明网枪字段是复制来的，实际不触发
- **源码节点存在 ≠ 实装**（铁律补充）：源码证明"可能实现"，用户实测证明"实际行为"；两者冲突时**以实测为准**，源码节点记录为"池内未装备项"
- **处理流程**：发现全武器池敌人 → 先按用户实测定招式 → 源码节点保留在 detail 说明（防误删）→ 疑点标"待实测"→ 用户实测后升级为"已确认弃用/已确认实装"
- 案例链：连长射网(弃用) → 远程仅等离子/霰弹(实测) → 不投手雷(实测) → 模板角色推断(行为树全池+loadout限定+双子复用)

### G. 对外表述规范（2026-08-18 用户指定，发帖前必查）
- **对外材料不提"反编译源码"**：帖子/README/邮件模板/校对说明等对外内容统一用"**游戏内数据整理 + 实测验证**"
- 原因：游戏 EULA 通常禁止逆向工程，公开宣称反编译有法律/社区风险；mod 社区默许逆向但**不张扬**
- 内部文档（HANDOFF/日更/data 词条 detail 溯源）保留"反编译源码"字样，用于数据溯源即可
- 原则：对外说"整理了什么知识"，不说"怎么拿到的"；机制词典本身正当（wiki 类内容社区常态）
- 发帖/发邮件前检查：正文/附件说明中出现"反编译/源码/扒"等词一律替换
