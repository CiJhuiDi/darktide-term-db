local mod = get_mod("ENLocalizationFIXTalents")
local WTL = get_mod("WhatTheLocalization")

mod.localization_templates = {
-- Fixes and overhauls by xsSplater
--{	id = "title_scrn_xss_ext_en", -- ID 
	--loc_keys = {"loc_title_screen_signing_in",}, -- element loc-key
--	locales = {"zh-cn",}, -- localization
--	handle_func = function(locale, value)
--	return "如果打不开游戏报错闪退，查看控制台报错信息\nconsole_logs打开最新的txt文件搜 error 或者\n搜索scripts/mods" end}, -- text
-- ==============================================================TALENT TREES
-- ==============================================================MAIN
 --{	id = "talent_tree_main_000_en", -- Passive_
--	 loc_keys = {"loc_glossary_talent_default",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "被动技能" end},
-- {	id = "talent_tree_main_001_en", -- Blitz
--	 loc_keys = {"loc_glossary_term_tactical",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "闪击技能" end},
-- {	id = "talent_tree_main_002_en", -- Aura
--	 loc_keys = {"loc_glossary_term_aura",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "光环技能" end},
 --{	id = "talent_tree_main_003_en", -- Ability
--	 loc_keys = {"loc_glossary_term_class_ability",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "大招技能" end},
 --{	id = "talent_tree_main_004_en", -- Keystone
--	 loc_keys = {"loc_glossary_talent_keystone",},
	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "基石技能" end},
-- {	id = "talent_tree_main_005_en", -- (Lock) Locked
--	 loc_keys = {"loc_talent_mechanic_locked",},
	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "已锁定" end},
-- {	id = "talent_tree_main_006_en", -- (LMB) Activate
--	 loc_keys = {"loc_talent_menu_tooltip_button_hint_first_level",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "激活" end},
-- {	id = "talent_tree_main_007_en", -- (RMB) Deactivate
	-- loc_keys = {"loc_talent_menu_tooltip_button_hint_remove_level_first",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Deactivate" end},
-- {	id = "talent_tree_main_008_en", -- [V] View full build
--	 loc_keys = {"loc_alias_talent_builder_view_hotkey_summary",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "浏览完整技能效果" end},
-- {	id = "talent_tree_main_009_en", -- Full build
--	 loc_keys = {"loc_alias_talent_builder_view_popup_title_summary",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "完整技能效果" end},
--____________________________________________________Modifiers
-- {	id = "talent_tree_main_mods_000_en", -- Operative Modifier
--	 loc_keys = {"loc_glossary_talent_stat",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "职业被动强化" end},
 --{	id = "talent_tree_main_mods_001_en", -- Ability Modifier
--	 loc_keys = {"loc_glossary_talent_ability_modifier",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "大招分支强化" end},
-- {	id = "talent_tree_main_mods_002_en", -- Keystone Modifier
--	 loc_keys = {"loc_glossary_talent_keystone_modifier",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "基石分支强化" end},
--____________________________________________________Selecting this...
 {	id = "talent_tree_main_sel_000_en", -- Selecting this Blitz locks all other Blitzes.
	 loc_keys = {"loc_talent_mechanic_exclusive_tactical",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "选择此闪击技能，将锁定所有其他闪击技能" end},
 {	id = "talent_tree_main_sel_001_en", -- Selecting this Aura locks all other Auras.
	 loc_keys = {"loc_talent_mechanic_exclusive_aura",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "选择此光环技能，将锁定所有其他光环技能" end},
 {	id = "talent_tree_main_sel_002_en", -- Selecting this Ability locks all other Abilities.
	 loc_keys = {"loc_talent_mechanic_exclusive_ability",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "选择此大招技能，将锁定所有其他大招技能" end},
 {	id = "talent_tree_main_sel_003_en", -- Selecting this Talent locks all other Talents.
	 loc_keys = {"loc_talent_mechanic_mutually_exclusive",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "选择此天赋技能，将锁定所有其他天赋技能" end},
 {	id = "talent_tree_main_sel_004_en", -- Selecting this Keystone locks all other Keystones.
	 loc_keys = {"loc_talent_mechanic_exclusive_keystone",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "选择此基石技能，将锁定所有其他基石技能" end},


-- ==============================================================OPERATIVE MODIFIERS
--____________________________________________________Toughness Boost
--{	id = "talent_tree_oper_mod_000_l_en", -- Toughness Boost
--	loc_keys = {"loc_talent_toughness_boost_low",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "提升韧性上限" end}, -- Low
{	id = "talent_tree_oper_mod_000_l_desc_en", -- toughness:+15%.
	loc_keys = {"loc_talent_toughness_boost_low_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(32,178,170)}韧性上限{toughness:%s}{#reset()}（加法叠加）" end}, -- colors
--____________________________________________________Toughness Boost
--{	id = "talent_tree_oper_mod_000_m_en", -- Toughness Boost
--	loc_keys = {"loc_talent_toughness_boost_medium",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "提升韧性上限" end}, -- Medium
{	id = "talent_tree_oper_mod_000_m_desc_en", -- toughness:+25%.
	loc_keys = {"loc_talent_toughness_boost_medium_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(32,178,170)}韧性上限{toughness:%s}{#reset()}（加法叠加）" end}, -- colors
--____________________________________________________Peril Resistance
--{	id = "talent_tree_oper_mod_001_en", -- Peril Resistance
--	loc_keys = {"loc_talent_warp_charge_low",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "反噬抗性" end},
{	id = "talent_tree_oper_mod_001_desc_en", -- warp_charge:-5%.
	loc_keys = {"loc_talent_warp_charge_low_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "亚空间抗性{warp_charge:%s}（乘法叠加），可以降低玩家生成的热量" end}, -- colors
--____________________________________________________Toughness Damage Reduction
--{	id = "talent_tree_oper_mod_002_l_en", -- Toughness Damage Reduction
--	loc_keys = {"loc_talent_toughness_damage_reduction_low",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "韧性伤害抗性" end}, -- Low
{	id = "talent_tree_oper_mod_002_l_desc_en", -- toughness:+5%.
	loc_keys = {"loc_talent_toughness_damage_reduction_low_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "韧性伤害抗性{toughness:%s}（小节点间加法叠加，与其他抗性乘法叠加）." end}, -- colors
--____________________________________________________Toughness Damage Reduction
--{	id = "talent_tree_oper_mod_002_m_en", -- Toughness Damage Reduction
--	loc_keys = {"loc_talent_toughness_damage_reduction_medium",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "韧性伤害抗性" end}, -- Medium
{	id = "talent_tree_oper_mod_002_m_desc_en", -- toughness:+5%.
	loc_keys = {"loc_talent_toughness_damage_reduction_medium_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "韧性伤害抗性{toughness:%s}（小节点间加法叠加，与其他抗性乘法叠加）" end}, -- colors
--____________________________________________________Inspiring Presence
-- {	id = "talent_tree_oper_mod_003_en", -- Inspiring Presence
	-- loc_keys = {"loc_talent_coherency_regen_low",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Inspiring Presence" end},
{	id = "talent_tree_oper_mod_003_desc_en", -- coherency_regen:+10%.
	loc_keys = {"loc_talent_coherency_regen_low_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "为你和朋友提供连携韧性恢复{#color(32,178,170)}{coherency_regen:%s}{#reset()}（对技能、武器祝福无加成）" end}, -- colors
--____________________________________________________Ranged Damage Boost
--{	id = "talent_tree_oper_mod_004_en", -- Ranged Damage Boost
--	loc_keys = {"loc_talent_ranged_damage_low",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "远程伤害增幅" end},
{	id = "talent_tree_oper_mod_004_desc_en", -- ranged_damage:+5%.
	loc_keys = {"loc_talent_ranged_damage_low_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "远程投射物直击伤害{ranged_damage:%s}（不包括燃烧、流血、魂火、电击这类dot，电杖右键、阵杖右键、手雷榴弹这类范围爆炸）" end}, -- colors
--____________________________________________________Health Boost
--{	id = "talent_tree_oper_mod_005_l_en", -- Health Boost
--	loc_keys = {"loc_talent_health_low",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "生命上限提升" end}, -- Low
{	id = "talent_tree_oper_mod_005_l_desc_en", -- health:+5%.
	loc_keys = {"loc_talent_health_low_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "生命上限提升{health:%s}（加法叠加）\n\n游戏内置一个插槽系统，决定了多少近战类型的敌人能靠近玩家，如果超过数量就必须在远处徘徊等待（BOSS、变种人、瘟疫爆破手例外）\n根据敌人体型分为小、中、大三类\n一共9个小槽位、8个中槽位，5个大槽位\n小槽位是所有普通敌人（包括连长）\n中槽位是血痂重锤兵、狂战士\n大槽位是欧格林和BOSS\n\n插槽系统也会影响敌人伤害，当玩家的近战范围内（3米左右）内有2个以上的近战类型敌人时，按照敌人的数量降低敌人的近战伤害\n3个敌人降低10%\n4个敌人降低15%\n5个敌人降低30%\n6个敌人降低35%\n7个敌人降低50%\n注意这个减伤是按照敌人在你四周的方位，不是单纯的堆叠数量，通常情况下顶多触发30%，而50%都已经腹背受敌浑身大汉了" end}, -- colors
--____________________________________________________Health Boost
--{	id = "talent_tree_oper_mod_005_m_en", -- Health Boost
--	loc_keys = {"loc_talent_health_medium",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "生命上限提升" end}, -- Medium
{	id = "talent_tree_oper_mod_005_m_desc_en", -- health:+10%.
	loc_keys = {"loc_talent_health_medium_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "生命上限提升{health:%s}（加法叠加）\n\n游戏内置一个插槽系统，决定了多少近战类型的敌人能靠近玩家，如果超过数量就必须在远处徘徊等待（BOSS、变种人、瘟疫爆破手例外）\n根据敌人体型分为小、中、大三类\n一共9个小槽位、8个中槽位，5个大槽位\n小槽位是所有普通敌人（包括连长）\n中槽位是血痂重锤兵、狂战士\n大槽位是欧格林和BOSS\n\n插槽系统也会影响敌人伤害，当玩家的近战范围内（3米左右）内有2个以上的近战类型敌人时，按照敌人的数量降低敌人的近战伤害\n3个敌人降低10%\n4个敌人降低15%\n5个敌人降低30%\n6个敌人降低35%\n7个敌人降低50%\n注意这个减伤是按照敌人在你四周的方位，不是单纯的堆叠数量，通常情况下顶多触发30%，而50%都已经腹背受敌浑身大汉了" end}, -- colors
--____________________________________________________Critical Chance Boost
--{	id = "talent_tree_oper_mod_006_en", -- Critical Chance Boost
--	loc_keys = {"loc_talent_crit_chance_low",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "暴击几率提升" end},
{	id = "talent_tree_oper_mod_006_desc_en", -- crit_chance:+5%.
	loc_keys = {"loc_talent_crit_chance_low_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战远程暴击率提升{crit_chance:%s}（加法叠加）" end}, -- colors
--____________________________________________________Movement Speed Boost
 --{	id = "talent_tree_oper_mod_007_en",
--	 loc_keys = {"loc_talent_movement_speed_low",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "移动速度提升" end},
 {	id = "talent_tree_oper_mod_007_desc_en",
	 loc_keys = {"loc_talent_movement_speed_low_desc",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "移动速度提升{movement_speed:%s}（乘法叠加）\n\n走路、跳跃每秒4米→4.2米\n跑步、跳跃每秒5.2米→5.46米\n跑步无体力、跳跃每秒5.2米→4.83米\n蹲伏速度每秒1.4米→1.47米\n攀爬速度每秒1.75米" end}, -- movement_speed:+5%.
--____________________________________________________Melee Damage Boost
-- {	id = "talent_tree_oper_mod_008_en", -- Melee Damage Boost
	-- loc_keys = {"loc_talent_melee_damage_boost_low",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Melee Damage Boost" end},
{	id = "talent_tree_oper_mod_008_desc_en", -- melee_damage:+5%.
	loc_keys = {"loc_talent_melee_damage_boost_low_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{melee_damage:%s}近战直击伤害提升（不包括dot）" end}, -- colors
--____________________________________________________Stamina Boost
-- {	id = "talent_tree_oper_mod_009_en", -- Stamina Boost
	-- loc_keys = {"loc_talent_stamina_low",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Stamina Boost" end},
 {	id = "talent_tree_oper_mod_009_desc_en", -- stamina:+1.
	 loc_keys = {"loc_talent_stamina_low_desc",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "体力提升{stamina:%s}（加法叠加）\n\n游戏内置一个体力恢复系统：当玩家体力降低到50%以下\n每当受到任意近战、远程、dot伤害，并且造成了韧性、血量降低时，就会恢复1点体力\n此效果没有内部冷却" end},
--____________________________________________________Suppression Boost
-- {	id = "talent_tree_oper_mod_010_en", -- Suppression Boost
--	 loc_keys = {"loc_talent_suppression_low",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "远程武器压制提升" end},
--{	id = "talent_tree_oper_mod_010_desc_en", -- suppression:+25%.
--	 loc_keys = {"loc_talent_suppression_low_desc",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "远程武器压制提升{suppression:%s}\n远程压制仅对这些敌人生效：{#color(255,155,55)}呻吟者、装甲呻吟者、血痂射手、血痂渣滓潜行者、血痂渣滓炮手、收割者{#reset()}（看不懂就理解为小僵尸潮、枪兵、炮手）" end},
--____________________________________________________Reload Boost
-- {	id = "talent_tree_oper_mod_011_en", -- Reload Boost
	-- loc_keys = {"loc_talent_reload_speed_low",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Reload Boost" end},
{	id = "talent_tree_oper_mod_011_desc_en", -- reload_speed:+5%.
	loc_keys = {"loc_talent_reload_speed_low_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{reload_speed:%s}换弹速度加成（乘法叠加）" end},
--____________________________________________________Stamina Regeneration Boost
-- {	id = "talent_tree_oper_mod_012_en", -- Stamina Regeneration Boost
	-- loc_keys = {"loc_talent_stamina_regen_delay",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Stamina Regeneration Boost" end},
{	id = "talent_tree_oper_mod_012_desc_en", -- duration:0.25.
	loc_keys = {"loc_talent_stamina_regen_delay_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "体力恢复延迟降低{duration:%s}\n\n使命纽带版本后，老兵基础体力恢复延迟从1秒降低至0.75秒，少了一个节点直接整合到职业被动里好评，再加上这个小节点就可以达到{#color(255,255,140)}0.5{#reset()}秒延迟，跟高贵的法务官大人一样了" end}, -- s -> seconds
--____________________________________________________Rending Boost
-- {	id = "talent_tree_oper_mod_013_en", -- Rending Boost
	-- loc_keys = {"loc_talent_armor_pen_low",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Rending Boost" end},
{	id = "talent_tree_oper_mod_013_desc_en", -- rending:+5%.
	loc_keys = {"loc_talent_armor_pen_low_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{rending:%s}{#color(115,115,255)}撕裂{#reset()}（仅自身生效，撕裂加成达到100%后，超过100%的那部分收益会降低至四分之一，对于无甲感染自身来说，100%就是上限，没有额外增伤）." end}, -- colors
--____________________________________________________Heavy Melee Damage Boost
--{	id = "talent_tree_oper_mod_014_l_en", -- Heavy Melee Damage Boost
--	loc_keys = {"loc_talent_melee_heavy_damage_low",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "近战重击伤害提升" end}, -- Low
{	id = "talent_tree_oper_mod_014_l_desc_en", -- melee_heavy_damage:+5%.
	loc_keys = {"loc_talent_melee_heavy_damage_low_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{melee_heavy_damage:%s}近战蓄力重击伤害提升（对dot无效）." end}, -- colors
--____________________________________________________Heavy Melee Damage Boost
--{	id = "talent_tree_oper_mod_014_m_en", -- Heavy Melee Damage Boost
--	loc_keys = {"loc_talent_melee_heavy_damage_medium",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "近战重击伤害提升" end}, -- Medium
{	id = "talent_tree_oper_mod_014_m_desc_en", -- melee_heavy_damage:+10%.
	loc_keys = {"loc_talent_melee_heavy_damage_medium_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{melee_heavy_damage:%s}近战蓄力重击伤害提升（对dot无效）." end}, -- colors


-- ==============================================================PSYKER
-- ==============================================================BLITZ
--____________________________________________________Blitz 0
-- {	id = "talent_tree_psy_blitz0_000_en", -- Brain Burst
	-- loc_keys = {"loc_ability_psyker_smite",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Brain Burst" end},
{	id = "talent_tree_psy_blitz0_000_desc_en",
	loc_keys = {"loc_ability_psyker_smite_description_new",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "左键锁定一个100米内的敌人\n在蓄力2.8秒期间生成20.2%+25%=45.2%热量（超过97%热量时候继续捏头会进入过热自爆状态）\n\n右键锁定：在蓄力3.8秒期间生成20.2%+25%=45.2%热量\n\n完成蓄力后对其造成900点伤害与55点踉跄\n\n捏头永远不会暴击\n捏头必定命中敌人弱点\n捏头不会有弱点伤害与暴击伤害加成\n\n伤害倍率：狂人1.5、不屈1.25、无甲感染防弹硬壳虚空1、防弹0.85" end}, -- colors &->and Warning! 
--____________________________________________________Blitz 1
--{	id = "talent_tree_psy_blitz1_000_en", -- Brain Rupture
	--loc_keys = {"loc_talent_psyker_brain_burst_improved",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "大脑爆裂" end},
{	id = "talent_tree_psy_blitz1_000_desc_en",
	loc_keys = {"loc_talent_psyker_brain_burst_improved_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "左键锁定一个100米内的敌人\n在蓄力2.8秒期间生成20.2%+25%=45.2%热量（超过97%热量时候继续捏头会进入过热自爆状态）\n\n右键锁定：在蓄力3.8秒期间生成20.2%+25%=45.2%热量\n\n完成蓄力后对其造成1350点伤害与55点踉跄\n\n捏头永远不会暴击\n捏头必定命中敌人弱点\n捏头不会有弱点伤害与暴击伤害加成\n\n伤害倍率：狂人150%、不屈125%、无甲感染防弹硬壳虚空100%" end}, -- talent_name:Brain Burst damage:+50%. -- colors &->and Warning!
--____________________________________________________Blitz 1-1
--{	id = "talent_tree_psy_blitz1_001_en", -- Kinetic Resonance
	--loc_keys = {"loc_talent_psyker_ability_increase_brain_burst_speed",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "动能共鸣" end},
{	id = "talent_tree_psy_blitz1_001_desc_en",
	loc_keys = {"loc_talent_psyker_ability_increase_brain_burst_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用大招后加快{talent_name:%s}充能速度{smite_attack_speed:%s}，并且可以减少捏头{warp_charge_cost:%s}的热量（24.3÷45.2=46.2%热量），持续{duration:%s}秒\n\n无加成：2.22秒\n75%加速：1.3秒，实际加速70.8%\n中线基石加速：1.47秒，实际加速51%\n75%+中线基石：1.03秒，实际加速115.5%" end}, -- talent_name:Brain Rupture smite_attack_speed:+75% warp_charge_cost:50% duration:10. -- colors s->seconds
--____________________________________________________Blitz 1-2
-- {	id = "talent_tree_psy_blitz1_002_en", -- Kinetic Flayer
	-- loc_keys = {"loc_talent_psyker_smite_on_hit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Kinetic Flayer" end},动能剥皮者
{	id = "talent_tree_psy_blitz1_002_desc_en",
	loc_keys = {"loc_talent_psyker_smite_on_hit_special_elite_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "所有近战、远程武器、dot、包括大脑爆裂自身在内，在命中精英、专家、怪物时（除了自爆人），都有{smite_chance:%s}几率对敌人释放一发免费不涨热量的{talent_name:%s}.这一特性必须在热量{#color(255,255,140)}+97%{#reset()}以下才会触发，而且有{time:%s}秒的内置冷却时间\n\n除此之外所有的普通近战敌人、枪兵等都无法触发脑爆\n{#color(230,60,0)}BUG：连长无论是命中虚空盾，还是命中身体都无法触发{#reset()}\n\n如果你是使用近战、远程武器攻击的同时触发的，那么武器的部分增伤祝福也会加成这一发大脑爆裂的伤害\n如果你点了强化脑爆，那么免费脑爆也会继承额外伤害加成，并且不消耗灵能强化层数\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(255,155,55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}\n\n{#color(255,155,55)}怪物：瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主{#reset()}" end}, -- smite_chance:10% talent_name:Brain Rupture. time:15. -- colors Notice! s->seconds
--____________________________________________________Blitz 2
-- {	id = "talent_tree_psy_blitz2_000_en", -- Smite 惩击 电手
	-- loc_keys = {"loc_ability_psyker_chain_lightning",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Smite" end},
{	id = "talent_tree_psy_blitz2_000_desc_en",
	loc_keys = {"loc_ability_psyker_chain_lightning_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "蓄力释放一道闪电，攻击一个正面90°、16米射程内的敌人，闪电命中敌人后可以进行最多{#color(255,255,140)}5次弹射{#reset()}以命中更多敌人，弹射只会对敌人背后180°内的敌人进行，并且弹射的距离上限为{#color(255,255,140)}6{#reset()}米，闪电可造成每0.2秒16点伤害与持续踉跄效果（敌人质量越大越难踉跄）\n电手伤害倍率：不屈狂人100%、无甲防弹感染虚空75%、硬壳50%\n\n持续释放每秒造成{#color(255,255,140)}22.5%{#reset()}热量\n\n如果左键电击一下就放开，可以对单个敌人造成20点伤害和极高的踉跄效果，有可能击倒弱小敌人（除了硬壳90%外，其他倍率都是100%）\n\n右键蓄力释放可以大幅度加快连锁闪电弹射的速度\n\n该技能绝对不会产生暴击\n\n会弹射睡着的恶魔宿主，不过短时间内伤害低不一定能电醒" end}, -- !patch #15 -- colors Warning!
--____________________________________________________Blitz 2-1
--{	id = "talent_tree_psy_blitz2_001_en", -- Lightning Storm 
	--loc_keys = {"loc_talent_psyker_increased_chain_lightning_size",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "闪电风暴" end},
--{	id = "talent_tree_psy_blitz2_001_desc_en",
--	loc_keys = {"loc_talent_psyker_increased_chain_lightning_size_description",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{talent_name:%s}的弹射上限{max_jumps:%s}（从4次提升至5次），不过实战中+1数量基本看不出区别\n\n左键模式弹射速度加快100%（对左键算是极大的加强），右键弹射速度无变化\n\n初始闪电射程上限从15米提升至16米，连锁闪电的弹射距离上限从5米提升至6米" end}, -- talent_name:Smite max_jumps:+1.
--____________________________________________________Blitz 2-2
-- {	id = "talent_tree_psy_blitz2_002_en", -- Enfeeble 虚弱
	-- loc_keys = {"loc_talent_psyker_increased_chain_lightning_improved_target_buff",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Enfeeble" end},
{	id = "talent_tree_psy_blitz2_002_desc_en",
	loc_keys = {"loc_talent_psyker_chain_lightning_improved_target_buff_alt_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "受到{talent_name:%s}攻击的敌人，受到的所有伤害都会额外增加{damage:%s}（全队生效，包括dot和电手本身，每跳16→17.6）\n\n增伤没有持续时间，所以停止电击的瞬间就会失效\n\n这个虚弱和电棍没有联动效果，是不同的debuff，电棍的叫电击，持续3秒、能叠5层，电手、电杖的叫感电不叠加" end}, -- talent_name:Smite damage:+10%. -- colors
{	id = "talent_tree_psy_blitz2_003_desc_en", -- 充能打击Charged Strike
	loc_keys = {"loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战武器蓄力重击（法杖特殊攻击抡棍子也算重击、其他枪的肘击不算）、恶魔爪和刺剑的挡反，灵能剑特殊附魔（剑气不算），会使被命中的敌人进入{#color(255,255,140)}2{#reset()}秒的触电debuff状态，总共造成272伤害（享受技能、祝福、专长、debuff等增伤）\n\n如果点了衰弱可以增加10%dot伤害，从272提升至299，并且3秒期间敌人受到任何伤害都会提升10%（相当于被电手衰弱）\n\n{#color(230,60,0)}BUG：没有任何控场效果，而且3秒期间再次重击命中，并不会叠加dot，也无法延长dot持续时间，持续时间结束后才能再次赋予debuff\n{#color(230,60,0)}BUG：灵能大剑的剑气无法触发蓄力电击效果{#reset()}" end},
--____________________________________________________Blitz 3
-- {	id = "talent_tree_psy_blitz3_000_en", -- Assail
	-- loc_keys = {"loc_ability_psyker_blitz_throwing_knives",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Assail" end}, 强袭
{	id = "talent_tree_psy_blitz3_000_desc_en",
	loc_keys = {"loc_ability_psyker_blitz_throwing_knives_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每{#color(255,255,140)}3{#reset()}秒生成一发飞镖，上限{#color(255,255,140)}10{#reset()}发，飞镖会自动跟随玩家的鼠标飞行，并尝试命中敌人弱点\n\n左键{#color(255,255,140)}10%{#reset()}热量造成{#color(255,255,140)}225{#reset()}伤害，射速较快，最多飞行2.5秒\n右键{#color(255,255,140)}25%{#reset()}热量造成{#color(255,255,140)}380{#reset()}伤害，可以锁定一个50米内的敌人，最多飞行3.5秒\n\n倍率：无甲狂人100%，防弹感染虚空75%，不屈50%，硬壳5%\n\n飞镖可暴击，有弱点伤害加成\n\n飞镖有{#color(255,255,140)}2{#reset()}点劈裂，并且将命中的敌人视为质量{#color(255,255,140)}1{#reset()}的单位，所以正常最多命中2个敌人，部分增加劈裂的技能、武器祝福可以增加命中数量\n命中盾牌、硬壳敌人时，飞镖会损坏无法继续弹射\n\n超过99%热量时候继续放飞镖会进入过热自爆状态" end}, -- Warning!
--____________________________________________________Blitz 3-1
-- {	id = "talent_tree_psy_blitz3_001_en", -- Ethereal Shards
	-- loc_keys = {"loc_talent_psyker_throwing_knives_pierce",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Ethereal Shards" end},
{	id = "talent_tree_psy_blitz3_001_desc_en",
	loc_keys = {"loc_talent_psyker_throwing_knives_pierce_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}的攻击次数{#color(255,255,140)}+1{#reset()}，投射物最大弹射次数从2次提升至{#color(255,255,140)}3{#reset()}次\n\n飞镖基础有{#color(255,255,140)}2{#reset()}点劈裂，并且将命中的敌人视为质量{#color(255,255,140)}1{#reset()}的单位，所以正常最多命中2个敌人，部分增加劈裂的技能、武器祝福可以增加命中数量\n命中盾牌、硬壳敌人时，飞镖会损坏无法继续弹射" end}, -- talent_name:Assail.
--____________________________________________________Blitz 3-2
-- {	id = "talent_tree_psy_blitz3_002_en", -- Quick Shards
	-- loc_keys = {"loc_talent_psyker_throwing_knives_reduced_cooldown",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Quick Shards" end},
{	id = "talent_tree_psy_blitz3_002_desc_en",
	loc_keys = {"loc_talent_psyker_throwing_knives_cast_speed_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}的充能所需时间降低{recharge:%s}，从每隔3秒充能一发，加快至每{#color(255,255,140)}2.1{#reset()}秒充能一发\n\n扎蓝针1.68秒一发" end}, -- talent_name:Assail recharge30%.


-- ==============================================================AURA
--____________________________________________________Aura 0
-- {	id = "talent_tree_psy_aura0_000_en", -- The Quickening
	-- loc_keys = {"loc_talent_psyker_aura_reduced_ability_cooldown",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "The Quickening" end},
{	id = "talent_tree_psy_aura0_000_desc_en",
	loc_keys = {"loc_talent_psyker_aura_reduced_ability_cooldown_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "为灵能者自身，以及连携光环范围内的队友，减少{cooldown_reduction:%s}大招冷却时间（乘法叠加）\n\n相同光环不叠加，但可以和基础光环加法叠加（7.5%+10=17.5%）" end}, -- cooldown_reduction:+7.5%. -- colors
--____________________________________________f________Aura 1
-- {	id = "talent_tree_psy_aura1_000_en", -- Kinetic Presence
	-- loc_keys = {"loc_talent_psyker_base_3",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Kinetic Presence" end},
{	id = "talent_tree_psy_aura1_000_desc_en",
	loc_keys = {"loc_talent_psyker_base_3_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "为灵能者自身，以及连携光环范围内的队友，{damage:%s}对精英敌人伤害加成\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}" end}, -- damage:+10%. -- colors
--____________________________________________________Aura 2
-- {	id = "talent_tree_psy_aura2_000_en", -- Seer's Presence
	-- loc_keys = {"loc_talent_psyker_cooldown_aura_improved",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value) 
	-- return "Seer's Presence" end},
{	id = "talent_tree_psy_aura2_000_desc_en",
	loc_keys = {"loc_talent_psyker_cooldown_aura_improved_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}为灵能者自身，以及连携光环范围内的队友，减少主动大招{cooldown_reduction:%s}的冷却时间\n\n叠加方法：饰品4%X3+光环10%=22%\n地图因子的20%也是加法叠加，22%+20%=42%\n\n同类光环不叠加，但可以和基础光环叠加，所以如果有个没任何光环的灵能跟你一起玩，那么效果是：20%+4%X3+10%+7.5%=49.5%，放个罩子20.2秒就好了\n\n对被动技能CD比如动能剥皮者、孤狼回手雷之类无效，对武器祝福、被动也无效" end}, -- cooldown_reduction:+10%. talent_name:The Quickening.
--____________________________________________________Aura 3
-- {	id = "talent_tree_psy_aura3_000_en", -- Prescience
	-- loc_keys = {"loc_ability_psyker_gunslinger_aura",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Prescience" end},
{	id = "talent_tree_psy_aura3_000_desc_en",
	loc_keys = {"loc_ability_psyker_gunslinger_aura_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "为灵能者自身，以及连携光环范围内的队友， {critical_strike_chance:%s} 暴击几率（加法）" end}, -- critical_strike_chance:+5%. (+4% before patch #15) -- colors


-- ==============================================================ABILITIES
--____________________________________________________Ability 0
-- {	id = "talent_tree_psy_abil0_000_en", -- Psykinetic's Wrath
	-- loc_keys = {"loc_talent_psyker_2_combat",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Psykinetic's Wrath" end},
{	id = "talent_tree_psy_abil0_000_desc_en",
	loc_keys = {"loc_talent_psyker_shout_ability_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "灵能者释放一个冲击波，覆盖前方52°、{#color(255,255,140)}30{#reset()}米的锥形范围\n冲击波可穿墙\n冲击波是一个立体圆锥，玩家的视角只影响平面，抬头释放和低头释放影响的高度是完全相同的，距离越近能影响到的上下高度越低，30米处能影响的高度最高\n\n释放热量上限的{warpcharge_vent:%s}\n自爆3秒动画期间释放可以把自己救回来\n冲击波踉跄敌人的效果与玩家当前的热量和敌人的距离有关，热量越高、距离越近，踉跄的效果就越好\n冲击波可以轰飞正在咬队友的狗。踉跄效果从4米开始衰减，8米衰减至75%，10米衰减至50%，24米时衰减至25%\n\n基础冷却时间{cooldown:%s}秒" end}, -- warpcharge_vent:10%. cooldown:30. -- colors s->seconds Notice!
--____________________________________________________Ability 1
{	id = "talent_tree_psy_abil1_000_en", -- Venting Shriek
	loc_keys = {"loc_talent_psyker_shout_vent_warp_charge",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "刺耳尖啸" end},
{	id = "talent_tree_psy_abil1_000_desc_en",
	loc_keys = {"loc_talent_psyker_shout_vent_warp_charge_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "灵能者释放一个冲击波，覆盖前方52°、{#color(255,255,140)}30{#reset()}米的锥形范围\n冲击波可穿墙\n冲击波是一个立体圆锥，玩家的视角只影响平面，抬头释放和低头释放影响的高度是完全相同的，距离越近能影响到的上下高度越低，30米处能影响的高度最高\n\n释放热量上限的{warpcharge_vent:%s}\n自爆3秒动画期间释放可以把自己救回来\n冲击波踉跄敌人的效果与玩家当前的热量和敌人的距离有关，热量越高、距离越近，踉跄的效果就越好\n冲击波可以轰飞正在咬队友的狗。踉跄效果从4米开始衰减，8米衰减至75%，10米衰减至50%，24米时衰减至25%\n\n基础冷却时间{cooldown:%s}秒" end}, -- warpcharge_vent:50%. cooldown:30. talent_name:Psykinetic's Wrath. -- colors s->seconds Notice!
--____________________________________________________Ability 1 Modifier 1
--{	id = "talent_tree_psy_abil1_001_en", -- Becalming Eruption
	--loc_keys = {"loc_talent_psyker_shout_reduces_warp_charge_generation",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "平静爆发" end},
{	id = "talent_tree_psy_abil1_001_desc_en",
	loc_keys = {"loc_talent_psyker_shout_reduces_warp_charge_generation_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}每命中1个敌人，就会增加{warp_generation:%s}亚空间抗性,最多叠加{max_stacks:%s}层。最长持续{duration:%s}秒\n\n乘法叠加：捏头的热量为45.2%，点一个5%技能后变为42.94%，点两个变为40.79%，点三个变为38.75%。在叠加25层的热量降低buff后，捏头的热量变为30.14%" end}, -- talent_name:Venting Shriek warp_generation:1%, max_stacks:25. duration:5. -- colors s->seconds
--____________________________________________________Ability 1 Modifier 2
--{	id = "talent_tree_psy_abil1_002_en", -- Warp Rupture
	--loc_keys = {"loc_talent_psyker_shout_damage_per_warp_charge",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "亚空间爆发" end}, 亚空间破裂
--{	id = "talent_tree_psy_abil1_002_desc_en",
--	loc_keys = {"loc_talent_psyker_discharge_damage_debuff_description",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{talent_name:%s}释放后\n覆盖范围内的敌人受到亚空间破裂debuff\n\n敌人直击伤害降低{#color(255,255,140)}10%{#reset()}（不影响火雷、毒雷、燃烧地板）\n敌人受到所有伤害提高{#color(255,255,140)}10%{#reset()}（队友也能吃到，直击、dot、爆炸都增伤）\n\ndebuff持续时间{#color(255,255,140)}8秒{#reset()}" end}, -- talent_name:Venting Shriek, base_damage:100-max_damage:200. -- colors Warning!
--____________________________________________________Ability 1 Modifier 3
--{	id = "talent_tree_psy_abil1_003_en", -- Creeping Flames
	--loc_keys = {"loc_talent_psyker_warpfire_on_shout",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "蔓延火焰" end},诡秘之焰{min_stacks:%s}{warpfire_stacks:%s}
{	id = "talent_tree_psy_abil1_003_desc_en",
	loc_keys = {"loc_talent_psyker_warpfire_on_shout_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}释放后\n覆盖范围内的敌人受到{#color(255,255,140)}1~6{#reset()}层灵魂之火debuff（根据当前热量）\n可以最多传导至31层魂火\n\n4层需要49.99%热量，无甲216伤害\n\n5层需要66.66%热量，无甲359伤害\n\n6层需要83.33%热量，无甲552伤害\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数" end}, -- talent_name:Venting Shriek min_stacks:1 warpfire_stacks:-6. -- colors Notice!
--____________________________________________________Ability 2
--{	id = "talent_tree_psy_abil2_000_en", -- Telekine Shield
--	loc_keys = {"loc_talent_psyker_combat_ability_shield",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "心灵之盾" end},
{	id = "talent_tree_psy_abil2_000_desc_en",
	loc_keys = {"loc_talent_psyker_combat_ability_shield_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "生成一面{#color(255,255,140)}9.9米{#reset()}宽、{#color(255,255,140)}3.5米{#reset()}米高的{talent_name:%s}，持续{duration:%s}秒\n护盾会阻挡敌人包括手雷、喷火器、狙击、捕捉网、纳垢兽喷吐在内的所有投射物攻击，而你和盟友的投射物仍可穿过护盾进行攻击\n护盾无法阻挡毒气、火焰地板的蔓延，但是可以阻挡纳垢兽喷吐的蔓延\n\n基础冷却时间：{cooldown:%s}秒\n\n护盾拥有绝对生命{#color(255,255,140)}20{#reset()}点，敌人的每次任意投射物攻击都会造成也只能造成{#color(255,255,140)}1{#reset()}点伤害，并且每次护盾受到伤害后都会进入{#color(255,255,140)}0.33{#reset()}秒的无敌期（换句话说就是最初的6.6秒内绝对不会破）\n\n长按F键可以选择释放墙壁的位置，最远到距离自己10米的位置释放；按下鼠标左键可以切换墙壁的朝向，每按一下都会向左旋转90°\n墙壁的正面和背面只有视觉特效的区别，实际血量和抗伤害的能力完全相同\n\n{#color(230,60,0)}BUG：实际上敌人的远程投射物偶尔会穿过单盾，比如网子，原理不明{#reset()}" end}, -- duration:17.5. cooldown:40. BEFORE!duration:15 -- colors s->seconds
--____________________________________________________Ability 2 Modifier 1
--{	id = "talent_tree_psy_abil2_001_en", -- Bolstered Shield
	--loc_keys = {"loc_talent_psyker_force_field_charges",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "强化护盾" end},
--{	id = "talent_tree_psy_abil2_001_desc_en",
--	loc_keys = {"loc_talent_psyker_force_field_charges_description",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{talent_name:%s}现在有{max_charges:%s}层充能上限" end}, -- talent_name:Telekine Shield max_charges:2.
--____________________________________________________Ability 2 Modifier 2
--{	id = "talent_tree_psy_abil2_002_en", -- Enervating Threshold
--	loc_keys = {"loc_talent_psyker_force_field_stun_increased",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "衰弱界线" end},
{	id = "talent_tree_psy_abil2_002_desc_en",
	loc_keys = {"loc_talent_psyker_force_field_stun_increased_new_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "单面盾可以踉跄穿过的敌人（根据敌人的抗性造成原地电击或滚地葫芦的效果，电击持续3秒，造成150伤害）\n{ability:%s}对普通敌人有{proc_chance:%s}的几率踉跄\n{ability:%s}对专家敌人有{special_proc_chance:%s}的几率踉跄\n\n踉跄敌人一次算作对护盾造成{#color(255,255,140)}8{#reset()}点伤害，同样会计算{#color(255,255,140)}0.33{#reset()}秒无敌时间，在无敌时间内可以无限眩晕敌人\n{#color(230,60,0)}BUG：因为血量上限只有20点，所以正常情况下它应该只能击晕3次敌人，但是绿皮代码，踉跄专家也只掉1点血{#reset()}\n踉跄对连长和boss无效\n\n{#color(255,155,55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}" end}, -- ability:Telekine Shield proc_chance:10%. special_proc_chance:100%. -- colors
--____________________________________________________Ability 2 Modifier 3
-- {	id = "talent_tree_psy_abil2_003_en", -- Telekine Dome
	-- loc_keys = {"loc_talent_psyker_force_field_dome",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Telekine Dome 心灵穹顶" end},
{	id = "talent_tree_psy_abil2_003_desc_en",
	loc_keys = {"loc_talent_psyker_force_field_dome_increased_cd_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}从单面护盾，变为半径{#color(255,255,140)}6米{#reset()}的球形泡泡盾，持续时间从17.5秒延长至{duration:%s}秒，冷却时间从40秒延长至60秒\n护盾会阻挡敌人包括手雷、喷火器、狙击、捕捉网、纳垢兽喷吐在内的所有投射物攻击（身处罩子内的敌人开火也会被全部拦截，但是网子离得太近还是能抓到你），而你和盟友的投射物仍可穿过护盾进行攻击\n护盾无法阻挡毒气、火焰地板的蔓延，但是可以阻挡纳垢兽喷吐的蔓延\n\n护盾拥有绝对生命20点，敌人的每次任意投射物攻击都会造成也只能造成{#color(255,255,140)}1{#reset()}点伤害，并且每次护盾受到伤害后都会进入{#color(255,255,140)}0.33秒{#reset()}的无敌期（换句话说就是最初的6.6秒内绝对不会破）\n\n长按F键可以选择释放墙壁的位置，最远到距离自己10米的位置释放" end}, -- talent_name:Telekine Shield duration:25. BEFORE!duration:20. -- colors s->seconds
--____________________________________________________Ability 2 Modifier 4
--{	id = "talent_tree_psy_abil2_004_en", -- Sanctuary
	--loc_keys = {"loc_talent_psyker_force_field_grants_toughness",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "庇护所" end},圣所
{	id = "talent_tree_psy_abil2_004_desc_en",
	loc_keys = {"loc_talent_psyker_force_field_grants_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家或队友处于{talent_name:%s}内时，每秒补充{toughness:%s}{#color(32,178,170)}韧性{#reset()}，多个罩子加法叠加恢复量\n受到伤害会中断恢复1秒，所以毒气、火焰内无法持续恢复\n当{talent_name:%s}消失时,位于其中的盟友都会获得{toughness_damage_reduction:%s}韧性伤害抗性（乘法叠加）\n\n持续时间{duration:%s}秒\n\n会受到毒雷-30%、毒气因子+50%等影响" end}, -- talent_name:Telekine Shield toughness:10%. toughness_damage_reduction:+50% duration:5. -- colors s->seconds
--____________________________________________________Ability 3
-- {	id = "talent_tree_psy_abil3_000_en", -- Scrier's Gaze's 占卜者的凝视
	-- loc_keys = {"loc_talent_psyker_combat_ability_overcharge_stance",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Scrier's Gaze" end},
{	id = "talent_tree_psy_abil3_000_desc_en",
	loc_keys = {"loc_talent_psyker_combat_ability_overcharge_stance_improved_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "大招开启时会直接获得:\n立即减少{#color(255,255,140)}{vent:%s}{#reset()}热量\n自爆动画期间释放可以把自己救回来\n{base_damage:%s}伤害加成，{#color(255,255,140)}{weakspot_damage:%s}{#reset()}弱点伤害加成\n{crit_chance:%s}暴击几率加成（加法）\n每秒恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}，获得{tdr:%s}韧性伤害抗性,免疫敌人的火力压制(你的镜头不会因为敌人远程攻击而乱晃)\n以上加成在热量达到{max_peril:%s}时会因为技能效果结束而全部失效\n\n大招持续时间为：100%÷（8.5%X亚空间抗性）={#color(255,255,140)}13.42秒{#reset()}\n大招持续期间，冷却计数会暂停\n但如果你先扎一针冷却药，冷却会降低到0，但依然要等持续结束后再次启用\n\n技能持续每一秒，就会叠加一层{damage_per_stack:%s}能量伤害（全局），叠加上限为{max_damage:%s}\n此效果在技能结束后仍然可以维持{duration:%s}秒\n\n技能持续期间会持续获得热量，每次对敌人造成击杀，都可以暂时减缓热量递增的速度（不是停止涨热量）0.33秒\n玩家不会因为该技能自动生成的热量到达100%而自爆，会有1.5秒宽限期，但是之后再使用亚空间能力还是会炸的\n\n基础冷却时间:{cooldown:%s}秒" end}, -- base_damage:+10% crit_chance:+20%. damage_per_stack:+1% max_damage:+30%. duration:10. max_peril:100%. cooldown:30. -- colors \n s->seconds
--____________________________________________________Ability 3 Modifier 1
-- {	id = "talent_tree_psy_abil3_001_en", -- Precognition
	-- loc_keys = {"loc_ability_psyker_overcharge_weakspot",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Precognition" end},预知
{	id = "talent_tree_psy_abil3_001_desc_en",
	loc_keys = {"loc_ability_psyker_overcharge_weakspot_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家亲自造成弱点击杀时会延长{second:%s}秒的{talent_name:%s}持续时间效果.\n\n在{talent_name:%s}技能持续期间玩家还可以额外获得{finesse_damage_per_stack:%s}的娴熟伤害加成，加成最高堆叠至{max_finesse_damage:%s}，伤害加成效果在{talent_name:%s}的技能结束后还可以维持{duration:%s}秒.\n\n娴熟伤害会同时加成弱点伤害和暴击伤害" end}, -- second:1 talent_name:Scrier's Gaze. finesse_damage_per_stack:+1% max_finesse_damage:+30% duration:10. -- colors () s->seconds Notice!
--____________________________________________________Ability 3 Modifier 2
-- {	id = "talent_tree_psy_abil3_002_en", -- Warp Speed
	-- loc_keys = {"loc_ability_psyker_overcharge_movement_speed",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Warp Speed" end},
-- {	id = "talent_tree_psy_abil3_002_desc_en",
	-- loc_keys = {"loc_ability_psyker_overcharge_movement_speed_description",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "{talent_name:%s} now also increased your Movement Speed by {movement_speed:%s} while active." end}, -- talent_name:Scrier's Gaze. movement_speed:+20%.
--____________________________________________________Ability 3 Modifier 3
-- {	id = "talent_tree_psy_abil3_003_en", -- Reality Anchor
	-- loc_keys = {"loc_ability_psyker_overcharge_reduced_warp_charge",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Reality Ancor" end},现实锚点
{	id = "talent_tree_psy_abil3_003_desc_en",
	loc_keys = {"loc_ability_psyker_overcharge_reduced_warp_charge_vent_speed_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}技能持续期间获得：\n\n{warp_charge:%s}热量降低，与其他技能乘法叠加\n\n减少主动散热的间隔时间{#color(255,255,140)}{venting:%s}{#reset()}，与其他技能乘法叠加\n\n在没有其他技能的情况下，大招持续时间为：100%÷（8.5%X亚空间抗性）=15.23秒" end}, -- talent_name:Scrier's Gaze warp_charge:-20%. -- colors
--____________________________________________________Ability 3 Modifier 4
--{	id = "talent_tree_psy_abil3_004_en", -- Endurance
	--loc_keys = {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "Endurance" end},
--{	id = "talent_tree_psy_abil3_004_desc_en",
--	loc_keys = {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken_description",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{talent_name:%s}技能激活期间，玩家获得{tdr:%s}韧性伤害抗性（乘法叠加）." end}, -- talent_name:Scrier's Gaze tdr:+20%. -- colors Warp Unbound 亚空间解放
{	id = "talent_tree_psy_abil3_005_desc_en", --亚空间解放 Warp Unbound
	loc_keys = {"loc_talent_psyker_overcharge_infinite_casting_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}结束后的{#color(255,255,140)}11.7秒{#reset()}内，即使玩家热量达到100%时，仍然可以正常使用任意亚空间能力而不会自爆\n\n电手自带安全阀会在11.7秒后自动停止攻击，但是其它亚空间能力不会自动停止，看到剩余时间1秒就停手吧" end},

-- ==============================================================KEYSTONES
--____________________________________________________Keystone 1
-- {	id = "talent_tree_psy_keys1_000_en", -- Warp Siphon
	-- loc_keys = {"loc_talent_psyker_souls",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Warp Siphon" end},亚空间虹吸
{	id = "talent_tree_psy_keys1_000_desc_en",
	loc_keys = {"loc_talent_psyker_souls_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家亲自击杀一个精英或专家敌人时，获得{#color(255,255,140)}1{#reset()}层亚空间充能，最多叠加{stack:%s}层\n持续时间{duration:%s}秒\n每一层亚空间buff都会增加{damage:%s}能量伤害（全局）\n释放主动技能会清空所有亚空间层数，每一层都会降低大招冷却时间{cooldown_reduction:%s}\n\n与其他buff不同的地方在于——该技能的持续时间到了之后只会消失1层，而不是像其他buff一样直接全部消失\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(255,155,55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}" end}, -- duration:25, stack:4. cooldown_reduction:7.5%. -- colors ()
--____________________________________________________Keystone 1 Modifier 1
-- {	id = "talent_tree_psy_keys1_001_en", -- Inner Tranquility
	-- loc_keys = {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Inner Tranquility" end}, 内心平静
{	id = "talent_tree_psy_keys1_001_desc_en",
	loc_keys = {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据当前亚空间层数：\n{warp_charge_amount:%s}热量降低，内部加法叠加（32~48%），与其他技能乘法叠加\n\n包括力场剑特殊模式、4种力场法杖的左键和右键、大脑爆裂电手飞刀、偏转器格挡等等都能起到降低热量消耗的效果" end}, -- warp_charge_amount:-6%. -- colors
--____________________________________________________Keystone 1 Modifier 2
-- {	id = "talent_tree_psy_keys1_002_en", -- Essence Harvest
	-- loc_keys = {"loc_talent_psyker_toughness_regen_on_soul",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Essence Harvest 精华收获" end},
{	id = "talent_tree_psy_keys1_002_desc_en",
	loc_keys = {"loc_talent_psyker_toughness_regen_on_soul_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家获得一层亚空间虹吸buff时，会在{time:%s}秒内，以每秒{#color(255,255,140)}6%{#reset()}的速度，持续恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n\n重复获取仅仅只会延长持续时间，不会叠加效果" end}, -- toughness:30% time:5. -- colors s->seconds
--____________________________________________________Keystone 1 Modifier 3
-- {	id = "talent_tree_psy_keys1_003_en", -- Empyrean Empowerment
	-- loc_keys = {"loc_talent_psyker_souls_increase_damage",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Empyrean Empowerment" end},
--{	id = "talent_tree_psy_keys1_003_desc_en",
--	loc_keys = {"loc_talent_psyker_souls_increase_damage_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "每一层亚空间buff都会增加{damage:%s}基础伤害." end}, -- damage:+4%. -- colors
--____________________________________________________Keystone 1 Modifier 4
-- {	id = "talent_tree_psy_keys1_004_en", -- In Fire Reborn
	-- loc_keys = {"loc_talent_psyker_warpfire_generates_souls",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "In Fire Reborn" end},
{	id = "talent_tree_psy_keys1_004_desc_en",
	loc_keys = {"loc_talent_psyker_warpfire_generates_souls_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当敌人身上有灵魂之火dot时，该敌人不管是死于魂火dot还是被你和队友的直击攻击击杀，都会有{chance:%s}几率，给当前所有装备这个技能的灵能者一层buff\n\n虽然几率不叠加，但也没有距离限制" end}, -- chance:10%. -- colors Notice!
--____________________________________________________Keystone 1 Modifier 5
-- {	id = "talent_tree_psy_keys1_005_en", -- Warp Battery
	-- loc_keys = {"loc_talent_psyker_increased_souls",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Warp Battery" end},
-- {	id = "talent_tree_psy_keys1_005_desc_en",
	-- loc_keys = {"loc_talent_psyker_increased_souls_desc",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Can store up to {soul_amount:%s} Warp Charges." end}, -- soul_amount:6.
--____________________________________________________Keystone 1 Modifier 6
--{	id = "talent_tree_psy_keys1_006_en", -- Psychic Vampire
--	loc_keys = {"loc_talent_psyker_souls_on_kill_coop",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "灵能吸血鬼" end},
{	id = "talent_tree_psy_keys1_006_desc_en",
	loc_keys = {"loc_talent_psyker_souls_on_kill_coop_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当灵能者自身，或者灵能者光环范围内的盟友，击杀敌人时候，有{soul_chance:%s}的几率，给与灵能者1层亚空间buff\n\n多个灵能者不会叠加触发几率，但只要有人触发，范围内所有选择了该技能的灵能者都会获得一层buff" end}, -- soul_chance:4%.

--____________________________________________________Keystone 2
--{	id = "talent_tree_psy_keys2_000_en", -- Empowered Psionics
	--loc_keys = {"loc_talent_psyker_empowered_ability",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "灵能强化" end},强效灵能
{	id = "talent_tree_psy_keys2_000_desc_en",
	loc_keys = {"loc_talent_psyker_empowered_ability_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当灵能者自身以包括近战远程dot在内的任意方式击杀敌人时，有{chance:%s}几率为你的基石强化充能.\n\n{blitz_one:%s}:\n{smite_damage:%s}基础伤害（1350→2025）\n-{smite_cost:%s}热量消耗（免费捏头）\n+{smite_attack_speed:%s}加快蓄力速度\n\n{blitz_two:%s}:\n{chain_lightning_damage:%s}基础伤害，从0打到过热造成的伤害，对单个敌人来说从398→1168，如果点了左线大招，可以电到2333（不计算火）\n{chain_lightning_jump_time_multiplier:%s}加快连锁闪电传导速度.\n\n{blitz_three:%s}:\n{throwing_knives_cost:%s}热量消耗降低\n左键基础伤害225+125={#color(255,255,140)}350{#reset()}\n右键基础伤害380+150={#color(255,255,140)}530{#reset()}\n飞镖劈裂增加\n当有强化层数时，丢飞镖不消耗飞镖层数" end}, -- chance:7.5%. blitz_one:Brain Rupture smite_cost:100% smite_attack_speed:50% smite_damage:+50%. blitz_two:Smite chain_lightning_damage:+125% chain_lightning_jump_time_multiplier:50%. blitz_three:Assail throwing_knives_cost:100%. throwing_knives_old_damage:100 throwing_knives_new_damage:150. -- colors , .
--____________________________________________________Keystone 2 Modifier 1
--{	id = "talent_tree_psy_keys2_001_en", -- Bio-Lodestone
	--loc_keys = {"loc_talent_psyker_increase_empower_chain_lighting_chance",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "生物磁石" end},
{	id = "talent_tree_psy_keys2_001_desc_en",
	loc_keys = {"loc_talent_psyker_increase_empower_chain_lighting_chance_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当灵能者自身以包括近战远程dot在内的任意方式击杀敌人时，获得{talent_name:%s}的几率从{proc_chance_before:%s}提高至{proc_chance_after:%s}" end}, -- talent_name:Empowered Psionics proc_chance_before:7.5% proc_chance_after:12.5%.
--____________________________________________________Keystone 2 Modifier 2
-- {	id = "talent_tree_psy_keys2_002_en", -- Psychic Leeching
	-- loc_keys = {"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Psychic Leeching" end},
{	id = "talent_tree_psy_keys2_002_desc_en",
	loc_keys = {"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你主动使用被强化灵能强化过的{talent_name:%s}技能时，为灵能者自身，以及灵能者光环范围内的队友，恢复{toughness:%s}韧性\n\n动能剥皮的白送一发捏头无法触发这个特效，虽然他能吃到强化灵能的伤害加成，但这个恢复韧性被动要求的是“主动使用”" end}, -- talent_name:Empowered Psionics toughness:15%. -- colors
--____________________________________________________Keystone 2 Modifier 3
-- {	id = "talent_tree_psy_keys2_003_en", -- Overpowering Souls
	-- loc_keys = {"loc_talent_psyker_empowered_ability_on_elite_kills",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Overpowering Souls" end},
{	id = "talent_tree_psy_keys2_003_desc_en",
	loc_keys = {"loc_talent_psyker_empowered_ability_on_elite_kills_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你击杀一个精英敌人时，100%会获得1层{talent_name:%s}\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}" end}, -- talent_name:Empowered Psionics.
--____________________________________________________Keystone 2 Modifier 4
--{	id = "talent_tree_psy_keys2_004_en", -- Charged Up
	--loc_keys = {"loc_talent_psyker_increased_empowered_chain_lightning_stacks",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "充能完毕" end},
{	id = "talent_tree_psy_keys2_004_desc_en",
	loc_keys = {"loc_talent_psyker_increased_empowered_chain_lightning_stacks_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}的叠加上限变为{max_stacks:%s}层" end}, -- max_stacks:3 talent_name:Empowered Psionics.

--____________________________________________________Keystone 3
--{	id = "talent_tree_psy_keys3_000_en", -- Disrupt Destiny
--	loc_keys = {"loc_talent_psyker_marked_enemies_passive",},
	--locales = {"zh-cn",},
	----handle_func = function(locale, value)
	--return "颠覆命运" end},
{	id = "talent_tree_psy_keys3_000_desc_en",
	loc_keys = {"loc_talent_psyker_marked_enemies_passive_updated_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "对玩家正面{radius:%s}米长的120°锥形范围内，以高亮边框随机标记一个敌人\n只会从格斗兵、重锤兵、潜行者、射手、霰弹枪手、炮手中选取，不会选取杂鱼、欧格林、BOSS\n如果该敌人离开玩家的视野超过{#color(255,255,140)}5秒{#reset()}或者被击杀，标记会消失转而标记下一个敌人\n\n玩家以任何方式亲自击1个杀被标记的敌人，会给予玩家1层扰动命运buff，玩家移动速度{move_speed:%s}，并且会瞬间先补充自身10%{#color(32,178,170)}韧性{#reset()}，然后在接下来的{#color(255,255,140)}2.5秒{#reset()}秒内逐渐恢复{#color(255,255,140)}15%{#reset()}的{#color(32,178,170)}韧性{#reset()}，总共{toughness:%s}，持续{move_speed_duration:%s}秒\n\n每层buff：\n伤害增加{base_damage:%s}，暴击伤害增加{crit_damage:%s}，弱点伤害增加{weakspot_damage:%s}\n扰动命运最多叠加{bonus_stacks:%s}层，持续{bonus_duration}秒\n对被标记的敌人造成包括Dot在内的伤害，都可以刷新持续时间\n虽然不能标记，但是命中怪物、连长并对其造成伤害时，持续时间也会刷新\n\n该技能的持续时间到了之后，是一层层的消失而不是全部消失\n只有玩家亲自击杀标记目标才能获得buff，被队友、环境、敌人友伤等方式杀死则不会获得" end}, -- radius:25. toughness:10% move_speed:+20% move_speed_duration:2.5 bonus_duration 15. base_damage:+1% crit_damage:+2% weakspot_damage:2.5%. bonus_stacks:15. -- colors s->seconds Notice!
-- radius:25. toughness:10% move_speed:+20% move_speed_duration:2.5 bonus_duration 15. base_damage:+1% crit_damage:+2% weakspot_damage:2.5%. bonus_stacks:15. -- colors s->seconds Notice!
--____________________________________________________Keystone 3 Modifier 1
--{	id = "talent_tree_psy_keys3_001_en", -- Lingering Influence
	--loc_keys = {"loc_talent_psyker_mark_increased_duration",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "持久影响" end},
{	id = "talent_tree_psy_keys3_001_desc_en",
	loc_keys = {"loc_talent_psyker_mark_increased_duration_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}的持续时间从{duration_previous:%s}秒延长至{duration_after:%s}秒" end}, -- talent_name:Disrupt Destiny duration_previous:15 duration_after:30.. -- s->seconds
--____________________________________________________Keystone 3 Modifier 2
--{	id = "talent_tree_psy_keys3_002_en", -- Purloin Providence
	--loc_keys = {"loc_talent_psyker_mark_kills_can_vent",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "盗窃天命" end},
{	id = "talent_tree_psy_keys3_002_desc_en",
	loc_keys = {"loc_talent_psyker_mark_kills_can_vent_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家以任何方式亲自击杀1个被{talent_name:%s}标记的敌人，有{chance:%s}的几率降低{warp_charge_percentage:%s}热量\n\n该天赋与战斗冥想的10%几率不叠加，分别独立触发，也可能同时触发降低15%热量" end}, -- talent_name:Disrupt Destiny chance:20% warp_charge_percentage:15%.. -- colors
--____________________________________________________Keystone 3 Modifier 3
--{	id = "talent_tree_psy_keys3_003_en", -- Perfectionism
--	loc_keys = {"loc_talent_psyker_mark_increased_max_stacks",},
  --  locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "完美主义" end},
{	id = "talent_tree_psy_keys3_003_desc_en",
	loc_keys = {"loc_talent_psyker_mark_increased_max_stacks_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}的最大叠加层数，从{stacks_previous:%s}层提升至{stacks_after:%s}层" end}, -- stacks_previous:15 stacks_after:30. -- colors
--____________________________________________________Keystone 3 Modifier 4
--{	id = "talent_tree_psy_keys3_004_en", -- Cruel Fortune
--	loc_keys = {"loc_talent_psyker_mark_weakspot_stacks",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "残酷命运" end},
{	id = "talent_tree_psy_keys3_004_desc_en",
	loc_keys = {"loc_talent_psyker_mark_weakspot_stacks_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用弱点击杀的方式亲自击杀被{talent_name:%s}标记的敌人时，叠加的buff层数除了正常击杀的1层外，还可以额外叠加{stacks:%s}层，一共获得3层buff" end}, -- stacks:2 talent_name:Disrupt Destiny.


-- ==============================================================PASSIVES
--{	id = "talent_tree_psy_pas_000_en", -- Soulstealer
	--loc_keys = {"loc_talent_psyker_toughness_on_warp_kill",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "窃魂者" end},
 {	id = "talent_tree_psy_pas_000_desc_en",
	 loc_keys = {"loc_talent_psyker_toughness_on_warp_kill_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "以亚空间伤害造成击杀时，每个击杀都可以为自身恢复{#color(0,206,209)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n{#color(255,155,55)}亚空间伤害包括：捏头、电手、飞刀、魂火、灵能剑附魔、灵能大剑附魔、法杖左键球、法杖右键球、法杖右键电击、法杖右键魔法阵、刺耳尖啸亚空间破裂、自爆{#reset()}" end}, -- toughness:7.5%. -- colors Notice!
--{	id = "talent_tree_psy_pas_001_en", -- Mettle
--	loc_keys = {"loc_talent_psyker_crits_regen_tougness_and_movement_speed",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "勇毅" end},
{	id = "talent_tree_psy_pas_001_desc_en",
	loc_keys = {"loc_talent_psyker_crits_regen_toughness_speed_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用近战、远程、闪击时产生暴击，并且该次攻击命中了敌人时：\n\n在{#color(255,255,140)}{seconds:%s}秒{#reset()}内，以每秒{#color(255,255,140)}2.5%{#reset()}的速度，持续恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n如果重复触发暴击会重置持续时间\n\n获得一层移动速度加快{movement_speed:%s}的buff，堆叠上限{stacks:%s}层，持续{seconds:%s}秒\n\n捏头、电手不会暴击所以无法触发" end}, -- toughness:5%. movement_speed:+5% seconds:4. stacks: 3. -- colors s->seconds
--{	id = "talent_tree_psy_pas_002_en", -- Quietude
--	loc_keys = {"loc_talent_psyker_toughness_from_vent",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "静如止水" end},
{	id = "talent_tree_psy_pas_002_desc_en",
	loc_keys = {"loc_talent_psyker_toughness_from_vent_and_gen_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每当灵能者热量上涨{warp_charge:%s}，就会恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n\n每当灵能者热量下降{warp_charge:%s}，就会恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}，主动散热和被动散热都可以\n\n走右线占卜流派长时间维持100%热量，会导致该技能起不到应有的效果\n\n{#color(230,60,0)}BUG：因为空梦一场技能挨打产生的热量，不会与静如止水联动，无法通过每10%的热量提升而获取4%韧性{#reset()}" end}, -- toughness:5% warp_charge:10%. -- colors
--{	id = "talent_tree_psy_pas_003_en", -- Warp Expenditure
	--loc_keys = {"loc_talent_psyker_warp_charge_generation_generates_toughness",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "亚空间耗费" end},
 {	id = "talent_tree_psy_pas_003_desc_en",
	 loc_keys = {"loc_talent_psyker_toughness_on_melee_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "灵能者使用近战武器命中敌人时，获得一次{#color(255,255,140)}{instant_toughness:%s}{#reset()}的{#color(32,178,170)}韧性{#reset()}恢复（单次不管命中多少敌人，都只恢复一次）\n\n如果使用近战武器造成了弱点击杀，那么会在{#color(255,255,140)}{duration:%s}秒{#reset()}内，以每秒{#color(255,255,140)}5%{#reset()}的速度，持续恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n重复触发不叠加但是重置持续时间" end}, -- toughness:2.5% warp_charge:10%. -- colors
--{	id = "talent_tree_psy_pas_004_en", -- Perilous Combustion
--	loc_keys = {"loc_talent_psyker_elite_kills_add_warpfire",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "险恶燃烧 危机燃烧" end},
{	id = "talent_tree_psy_pas_004_desc_en",
	loc_keys = {"loc_talent_psyker_elite_and_special_kills_add_warpfire_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "灵能者自身使用任何方式，杀死一名精英或专家敌人时，会给予{#color(255,255,140)}4{#reset()}米范围内所有敌人{stacks:%s}层灵魂之火debuff\n该技能没有传导对象限制，可以最多传导至31层魂火\n\n不会点燃睡着的恶魔宿主，醒来的宿主会正常被传递魂火\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(255,155,55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}\n\n如果同时点危机燃烧和野火，敌人死亡瞬间会最多传递4层火\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数" end}, -- stacks:4. -- colors () Notice!
--{	id = "talent_tree_psy_pas_005_en", -- Perfect Timing
--	loc_keys = {"loc_talent_psyker_crits_empower_next_attack",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "完美时机" end},
{	id = "talent_tree_psy_pas_005_desc_en",
	loc_keys = {"loc_talent_psyker_damage_on_crit_stacking_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用近战、远程武器、飞镖技能，对敌人的攻击产生了暴击、并且命中了敌人时，都会增加{damage:%s}能量（近战、远程、dot全伤害加成），叠加上限{stacks:%s}层，持续{duration:%s}秒\n\n亚空间伤害包括四个法杖的左右键攻击，捏头、电手、飞刀、魂火dot、灵能剑附魔后的攻击\n\n15层火烧瘟疫欧格林为224，完美5是257（14.7%），连射冲击完美5是481（114.7%）" end}, -- damage:+3% duration:10. stacks:5. -- colors s->seconds
-- {	id = "talent_tree_psy_pas_006_en", -- Battle Meditation
	-- loc_keys = {"loc_talent_psyker_base_2",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Battle Meditation" end}, 战斗冥想
{	id = "talent_tree_psy_pas_006_desc_en",
	loc_keys = {"loc_talent_psyker_quell_on_kill_and_reduction_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "降低{warp_charge_percent:%s}的热量消耗（乘法叠加）\n\n玩家亲自以近战、远程、dot、推下悬崖等方式击杀敌人后，有{chance:%s}的几率，减少自身{warp_charge_percent:%s}的热量" end}, -- chance:10% warp_charge_percent:10%. -- colors
-- {	id = "talent_tree_psy_pas_007_en", -- Wildfire
	-- loc_keys = {"loc_talent_psyker_warpfire_spread",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "野火" end},
{	id = "talent_tree_psy_pas_007_desc_en",
	loc_keys = {"loc_talent_psyker_warpfire_spread_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当一名身上有至少2层灵魂之火debuff的敌人死亡时，会根据层数将魂火散布到周围{#color(255,255,140)}5{#reset()}米内的敌人身上，传递最多4层\n传导方式为先给与范围内所有人1层魂火，然后根据剩余层数和距离远近，距离近的先给1层火，距离远的不给\n\n当敌人身上已经有{stacks:%s}层魂火时无法被传火\n\n举例：如果敌人身上只有2层火，那么死亡后，就是给范围内距离最近的前两个敌人1层火\n如果敌人身上有16层火，周围有5个敌人，那么死亡后，就是给范围内最近的前4个敌人，每人1层火\n如果敌人身上有16层火，周围有3个敌人，那么死亡后，根据距离远近，分别给予2、1、1层火\n\n{#color(230,60,0)}尸体传火{#color(230,60,0)}BUG：如果敌人5米内有个因为至少2层火而死的敌人，并且尸体还在燃烧时，那么敌人会被点燃\n如果尸体本身没着火，玩家对尸体喷火，那么在玩家停止烧尸的8~30秒随机时间后，尸体会点燃附近的敌人{#reset()}\n\n如果同时点危机燃烧和野火，敌人死亡瞬间会最多传递4层火\n\n不会点燃睡着的恶魔宿主，醒来的宿主会正常被传递魂火" end}, -- stacks:4. -- colors
-- {	id = "talent_tree_psy_pas_008_en", -- Psykinetic's Aura
	-- loc_keys = {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Psykinetic's Aura" end}, 心能者光环
{	id = "talent_tree_psy_pas_008_desc_en",
	loc_keys = {"loc_talent_psyker_cooldown_on_allied_elite_kills_fixed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当灵能者自身，或者连携光环范围内的盟友，以包括近战、远程、dot在内的任意方式，击杀1个精英、专家敌人时，自身大招冷却加快{#color(255,255,140)}50%{#reset()}\n\n持续时间{#color(255,255,140)}5秒{#reset()}，重复触发不叠加，重置持续时间\n\n正常1秒大招恢复1秒，加快50%后正常1秒大招恢复1.5秒\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(255,155,55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}" end}, -- cooldown:5%. -- colors
-- {	id = "talent_tree_psy_pas_009_en", -- Mind in Motion
	-- loc_keys = {"loc_talent_psyker_venting_doesnt_slow",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Mind in Motion" end},心随所动
{	id = "talent_tree_psy_pas_009_desc_en",
	 loc_keys = {"loc_talent_psyker_no_movement_penalty_quell_reload_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "长按R主动散热期间，不再降低移动速度\n\n对比100热量时的散热移动距离：\n空手散热从5米提升至12米\n散热80的法杖从8米提升至11米\n\n不拿法杖的枪能如果依靠捏头、电手、飞刀打输出散热可以点这个，法杖流派不需要" end}, -- colors
--{	id = "talent_tree_psy_pas_010_en", -- Malefic Momentum
--	loc_keys = {"loc_talent_psyker_kills_stack_other_weapon_damage",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "恶意攻势 邪恶势能" end},
{	id = "talent_tree_psy_pas_010_desc_en",
	loc_keys = {"loc_talent_psyker_kills_stack_other_weapon_damage_both_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "非亚空间攻击的每个击杀都会叠加{#color(255,255,140)}1{#reset()}层亚空间增伤，每层增加{warp_damage:%s}亚空间伤害\n\n亚空间攻击的每个击杀都会叠加{#color(255,255,140)}1{#reset()}层非亚空间增伤，每层增加{warp_damage:%s}非亚空间伤害\n\n叠加上限{stacks:%s}层，持续{duration:%s}秒\n\n这是两个不同的buff，分开算持续时间和层数，流血、燃烧dot算非亚空间\n比如灵能大剑直接砍杀就加亚空间增伤，剑气击杀就加非亚空间增伤" end}, -- warp_damage:+4% duration:8. stacks:5. -- colors
--{	id = "talent_tree_psy_pas_010_1_desc_en",
--	loc_keys = {"loc_talent_psyker_force_staff_wield_speed_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "根据当前热量获得额外的切换速度\n你在近战1、远程2、捏头电手飞刀3、针剂4、医疗弹药箱书5之间来回切换时，速度会加快\n\n当热量0%时增加{#color(255,255,140)}10%{#reset()}切换速度\n当热量50%时增加{#color(255,255,140)}25%{#reset()}切换速度\n当热量100%时增加{#color(255,255,140)}50%{#reset()}切换速度\n\n当100%热量的时候，开始切换激光步枪到腰射开枪的间隔时间，从0.65秒加快到0.43秒，肥鲨的意思是让你用电杖打出聚能之力的伤害加成效果" end}, 

{	id = "talent_tree_psy_pas_010_2_desc_en", --Channeled Force聚能之力
	loc_keys = {"loc_talent_psyker_force_staff_both_bonus_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你使用法杖的右键完全蓄力并且进行一次攻击后（无论是否命中敌人），在接下来的{#color(255,255,140)}{time:%s}秒{#reset()}内，你的法杖左键直击伤害增加{#color(255,255,140)}{damage:%s}{#reset()}\n\n当你使用法杖的左键进行一次攻击后（无论是否命中敌人），在接下来的{#color(255,255,140)}{secondary_time:%s}秒{#reset()}内，你的法杖右键直击伤害增加{#color(255,255,140)}{secondary_damage:%s}{#reset()}\n\n对dot无效，火杖不用试了，这个天赋比较适合电杖这种出手极快的" end}, 
{	id = "talent_tree_psy_pas_010_3_desc_en", -- 灵能冲击 Empyric Shock
	loc_keys = {"loc_talent_psyker_force_staff_quick_attack_bonus_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你使用法杖的左键命中敌人后，敌人会进入{#color(255,255,140)}1{#reset()}层{#color(255,255,140)}{damage_taken:%s}{#reset()}的亚空间易伤状态，最多叠加{max_stacks:%s}层，持续{duration:%s}秒\n内部乘法叠加至33.82%\n\n魂火15层烧瘟疫欧格林224，连射5是313（39.7%），完美5是257（14.7%），冲击5是229（33.5%），连射冲击完美5是481（114.7%）" end}, 
{	id = "talent_tree_psy_pas_010_4_desc_en", -- 闪电之速Lightning Speed
	loc_keys = {"loc_talent_psyker_melee_attack_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战攻击的动画速度（同样影响蓄力）加快{#color(255,255,140)}{melee_attack_speed:%s}{#reset()}\n\n比如刺剑蓄力至自动攻击是1.45秒，加速后变成1.37秒。不影响助推时间，每层助推都是一个固定值" end}, 
{	id = "talent_tree_psy_pas_010_5_desc_en", -- Souldrinker 灵魂饮者
	loc_keys = {"loc_talent_psyker_killing_enemy_with_warpfire_boosts_duration_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当敌人身上存在灵魂之火dot时死亡会触发以下效果\n\n以每秒{#color(32,178,170)}5%{#reset()}的速度，总共恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n如果点了窃魂者，用灵魂之火烧死敌人恢复7.5%+15%\n\n增加{#color(255,255,140)}{crit_chance:%s}{#reset()}的暴击几率\n\n以上效果持续{#color(255,255,140)}{duration:%s}秒{#reset()}\n重复触发不叠加只会延长持续时间" end}, 
{	id = "talent_tree_psy_pas_010_6_desc_en", --亚空间劈裂 Warp Splitting
	loc_keys = {"loc_talent_psyker_cleave_from_peril_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据你当前的热量，近战与远程武器获得额外劈裂值（一刀可以命中几个敌人）\n\n当热量0%时增加{#color(255,255,140)}0%{#reset()}劈裂\n当热量100%时增加{#color(255,255,140)}{max_cleave:%s}{#reset()}劈裂\n\n注意+100%劈裂不代表你能穿透十几个敌人，根据武器的不同加成不同，最多大概多命中2~3个敌人，而且还要注意伤害衰减很严重\n举例球杖正常情况下满蓄力能穿7个狂人，叠满90%能一串11，不过后续衰减的已经没什么伤害了\n正向例子是飞刀，正常的1串3在高热量加成变成1串4，理论上切武器祝福的强化飞刀最高1穿13（比如重剑野蛮怒火都是近战触发，但没有限定必须近战生效）\n\n灵能大剑的剑气无限穿透，连墙都穿，这个对剑气没用；电手和捏头的触发方式不同，也一样没有用" end}, 
{	id = "talent_tree_psy_pas_010_7_desc_en", -- 骨裂之声 By Crack of Bone
	loc_keys = {"loc_talent_psyker_melee_weaving_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战武器造成弱点击杀后，立刻降低{#color(255,255,140)}{vent:%s}{#reset()}的热量（可以和驱魔者加法叠加），在单次攻击中，玩家造成多少次弱点击杀，就可以恢复多少次\n\n并且在之后的{#color(255,255,140)}{duration:%s}{#reset()}秒内，热量生成降低{#color(255,255,140)}{warp_generation:%s}{#reset()}（与其他技能乘法叠加）\n\n{#color(230,60,0)}BUG：灵能大剑的剑气击杀不算" end}, 
{	id = "talent_tree_psy_pas_010_7_1_desc_en", -- 脆弱心智 Vulnerable Minds
	loc_keys = {"loc_talent_psyker_damage_vs_ogryns_and_monsters_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "灵能者对欧格林与怪物敌人造成的伤害增加{damage:%s}\n\n{#color(255,155,55)}欧格林与怪物敌人：粉碎者、堡垒、收割者、瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主{#reset()}\n\n{#color(230,60,0)}BUG：渣滓连长、血痂连长、近战双子连长、远程双子连长不属于任何标签，无法享受增伤{#reset()}" end}, 
--{	id = "talent_tree_psy_pas_011_en", -- Unlucky for Some
--	loc_keys = {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "倒霉蛋" end},
--{	id = "talent_tree_psy_pas_011_desc_en",
--	loc_keys = {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down_description",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "当灵能者自身，或者灵能者“连携光环”范围内的队友被击倒时，为灵能者自身以及灵能者“连携光环”范围内的所有其他盟友，补充{toughness:%s}的韧性\n\n{#color(230,60,0)}BUG：如果自身或队友不是被击倒在地，而且直接死亡，那么不会增加韧性。" end}, -- toughness:50%. -- colors
--{	id = "talent_tree_psy_pas_012_en", -- One with the Warp
--	loc_keys = {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "亚空间强化 与亚空间一体" end},
{	id = "talent_tree_psy_pas_012_desc_en",
	loc_keys = {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据你当前的热量，获得韧性抗性（乘法叠加）\n\n当热量0%时{min_damage:%s}抗性\n当热量50%时{#color(255,255,140)}+21.5%{#reset()}韧性抗性\n当热量100%时{max_damage:%s}韧性抗性\n\n抗性公式=10%+0.23X当前热量" end}, -- min_damage:+10.00% max_damage:+33.00%. -- colors
{	id = "talent_tree_psy_pas_012_1_desc_en", --Immaterial Focus无形专注
	loc_keys = {"loc_talent_psyker_damage_resistance_stun_immunity_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "获得{#color(255,255,140)}{dr:%s}{#reset()}血量与韧性抗性（乘法叠加）\n\n当热量到达{#color(255,255,140)}97%{#reset()}时，玩家在{#color(255,255,140)}{duration:%s}秒{#reset()}内免疫眩晕打断动作\n每当灵能者热量大于或等于97%都可以重复刷新持续时间，被动没有冷却\n\n不免疫抓取、爆炸击飞等效果\n\n实际上无形专注是走右线占卜玩法的，非常适合给无限电手流派防打断用" end},
{	id = "talent_tree_psy_pas_012_2_desc_en", --Just a Dream空梦一场
	loc_keys = {"loc_talent_psyker_damage_to_peril_conversion_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当灵能者自身的热量低于{#color(255,255,140)}97%{#reset()}时：\n\n获得{#color(255,255,140)}{percent:%s}{#reset()}血量与韧性抗性（乘法叠加）\n\n受到的血量、韧性伤害的{#color(255,255,140)}{percent:%s}{#reset()}转化为热量\n\n转化率会受到自身亚空间抗性而降低，比如遭到100韧性的一击，如果灵能者有灵能决议减少40%热量，那么玩家只会上涨60点热量而不是100点\n\n{#color(230,60,0)}BUG：因为空梦一场技能挨打产生的热量，不会与静如止水联动，无法通过每10%的热量提升而获取4%韧性{#reset()}" end},
--{	id = "talent_tree_psy_pas_013_en", -- Empathic Evasion
--	loc_keys = {"loc_talent_psyker_dodge_after_crits",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "反射闪避" end}, --移情闪避
{	id = "talent_tree_psy_pas_013_desc_en",
	loc_keys = {"loc_talent_psyker_dodge_after_crits_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用近战、远程武器、飞镖的技能，对敌人的攻击产生了暴击、并且命中了敌人时，就会在{duration:%s}秒内无视敌人的远程投射物，持续时间内再次触发会延长持续时间\n\n移情闪避只是一个技能产生的额外远程免疫效果，没有正常闪避自带的50%韧性减伤效果\n\n预判的+50%持续时间只对玩家的主动闪避生效，不影响移情闪避的1秒持续时间。\n\n{#color(230,60,0)}BUG：当敌人处于玩家本人施加的dot状态时（魂火、燃烧、流血），你的近战、远程、飞镖攻击只要产生暴击，不管直击伤害有没有命中敌人，都可以触发一次技能效果{#reset()}" end}, -- duration:1. -- colors s->second
-- {	id = "talent_tree_psy_pas_014_en", -- Anticipation
	-- loc_keys = {"loc_talent_psyker_improved_dodge",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Anticipation" end}, 预判
 {	id = "talent_tree_psy_pas_014_desc_en",
	 loc_keys = {"loc_talent_psyker_improved_dodge_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "闪避动画结束后，仍保留闪避效果的缓冲时间延长{dodge_linger_time:%s}，从灵能者基础的0.2秒延长至0.3秒\n\n极限闪避次数上限增加{extra_consecutive_dodges:%s}次\n\n闪避动画期间：玩家免疫敌人造成的近战与远程直击伤害，自身受到的韧性伤害降低50%（乘法叠加）\n闪避动画结束后的缓冲期：只免疫敌人造成的近战直击伤害，受到韧性伤害降低50%\n\n闪避期间只免疫直击，爆炸、燃烧地板等特殊伤害还是会蹭到掉韧性的，并且预判不影响移情闪避\n\n当连续闪避时，头2次闪避距离为100%，第三次开始降低为50%，双手武器比如雷锤只有头1~2次是100%，拥有闪避次数+1的技能或祝福可以多一次100%的机会" end}, -- dodge_linger_time:+50% extra_consecutive_dodges:1.
-- {	id = "talent_tree_psy_pas_015_en", -- Puppet Master 傀儡大师
	-- loc_keys = {"loc_talent_psyker_coherency_size_increase",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Puppet Master" end},
 {	id = "talent_tree_psy_pas_015_desc_en",
	 loc_keys = {"loc_talent_psyker_coherency_size_increase_description",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "灵能者的连携光环范围增加{radius_modifier:%s}，从8米增加至14米\n\n即使队友没点过光环范围天赋，玩家也可以强行获取队友的光环主被动效果，同样你自身光环的主被动效果会也分享给队友\n比如牢兵、狂信在14米处战吼、开祷，本来你是吃不到金盾的，但是点了技能就可以吃到" end}, -- radius_modifier:50%.
-- {	id = "talent_tree_psy_pas_016_en", -- 亚空间骑士Warp Rider
	-- loc_keys = {"loc_talent_psyker_damage_based_on_warp_charge",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Warp Rider" end},
 {	id = "talent_tree_psy_pas_016_desc_en",
	 loc_keys = {"loc_talent_psyker_damage_based_on_warp_charge_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "根据你当前的热量获得全局增伤\n\n当热量0%时增加{#color(255,255,140)}+0%{#reset()}能量\n当热量50%时增加{#color(255,255,140)}+10%{#reset()}能量\n当热量100%时增加{max_damage:%s}能量" end}, -- max_damage:+20%. -- colors
 {	id = "talent_tree_psy_pas_016_1_en", -- 水晶之心Crystalline Will
	 loc_keys = {"loc_talent_psyker_alternative_peril_explosion_new_desc",},
     locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当你过热自爆的时候，不会直接倒地而是站着原地自爆，并且会扣除一格最大生命变成紫色\n如果自爆炸死了至少1个精英敌人，则不会扣除血量上限\n\n自爆前摇从3秒减少到{#color(255,255,140)}1.13{#reset()}秒，这导致了如果你是走左线火推、右线凝视，将很难反应过来用大招防止自爆\n\n自爆基础伤害增加{#color(255,255,140)}{overload_damage:%s}{#reset()}\n自爆半径扩大{#color(255,255,140)}{overload_radius:%s}{#reset()}\n爆炸中心（1.5m→1.875m）\n中心伤害（600→1200）\n边缘衰减（1.5m~10m→1.875m~12.5m）\n边缘伤害（100~0→200~0）\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}" end}, 
 {	id = "talent_tree_psy_pas_016_2_en", -- Warp Ghost亚空间幽灵
	 loc_keys = {"loc_talent_psyker_stat_mix_desc",},
     locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "灵能者基础体力增加{#color(255,255,140)}{stamina:%s}{#reset()}点，配合基础的1点现在有3点基础体力\n\n{#color(32,178,170)}韧性{#reset()}获得{#color(255,255,140)}{toughness_replenish:%s}{#reset()}的加成（近战击杀、技能、祝福、连携），比如正常砍死一个回5%，现在5X1.25=6.25%，窃魂以亚空间击杀回7.5变成9.375\n\n当灵能者自身的热量在{#color(255,255,140)}30%{#reset()}以上时，被动散热的频率降低{#color(255,255,140)}{peril_reduction:%s}{#reset()}，不影响主动散热\n\n该技能主要是为了配合高热量近战流玩法，比如灵能剑高热量20%增伤之类的\n\n如果你点了技能发现体力没上涨，按ESC→选项→界面→以每25%为区间显示体力（关闭），这样你就可以看到自己实际的体力槽了" end},
-- {	id = "talent_tree_psy_pas_017_en",
	-- loc_keys = {"loc_talent_psyker_block_costs_warp_charge",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Kinetic Deflection" end},
{	id = "talent_tree_psy_pas_017_desc_en",
	loc_keys = {"loc_talent_psyker_block_costs_warp_charge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当热量低于97%时，格挡敌人的攻击不消耗体力而是上涨热量。格挡热量上涨的幅度等同于格挡同等攻击所消耗体力值的{warp_charge_block_cost:%s}，比如玩家体力上限5，受到4体力的攻击，那么上涨热量等于4÷5X0.25=20%热量\n\n所以体力上限（武器2、饰品3）、格挡增益（武器20%、饰品12%）、亚空间抗性（灵能决意40%、危机抗性5%）都能降低格挡的热量涨幅，比如单纯堆体力：4÷（5+3X3）X0.25=7.1%热量\n这个技能在拉人的时候非常有用\n\n{#color(230,60,0)}BUG：灵能剑的亚空间抗性对动能偏转格挡不生效\n{#color(230,60,0)}BUG：97%以上热量时使用恶魔爪、刺剑的挡反对抗敌人攻击，可能导致灵能者自爆\n\n偏转器虽然能挡子弹、激光、连长等离子这类普通远程投射物，但是不能挡狙击、手雷、喷火、网子、纳垢喷屎，并且偏转器在你拉人的时候不生效，而且BOSS、大小罐头、油桶爆炸等很多攻击都可以无视格挡直接对玩家造成伤害（带有破除格挡词条的都不能挡，具体看这个www.bilibili.com/read/cv20547787）{#reset()}" end}, -- warp_charge_block_cost:25%. -- colors
--{	id = "talent_tree_psy_pas_018_en", -- Solidity
--	loc_keys = {"loc_talent_psyker_increased_vent_speed",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "稳固" end},
 {	id = "talent_tree_psy_pas_018_desc_en",
	 loc_keys = {"loc_talent_psyker_increased_vent_speed_description",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "减少主动散热的间隔时间{vent_speed:%s}" end}, -- vent_speed:30%.
--{	id = "talent_tree_psy_pas_019_en", -- True Aim
--	loc_keys = {"loc_talent_psyker_weakspot_grants_crit",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "精确瞄准" end},
{	id = "talent_tree_psy_pas_019_desc_en", --精确瞄准
	loc_keys = {"loc_talent_psyker_weakspot_grants_crit_once_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "命中敌人弱点{weakspot_hits:%s}次后，下一次远程攻击{#color(255,255,140)}100%{#reset()}触发暴击\n每次攻击最多堆叠1层buff\n\n地板杖、电杖的右键模式都是绝对无法命中弱点的，火杖左右键都不行，捏头虽然能叠加层数但是本身无法享受必爆效果\n\n灵能剑挡反的后续推动攻击算命中弱点，每次都能叠加一层BUFF\n\n{#color(230,60,0)}BUG：{#color(230,60,0)}BUG：新的灵能大剑剑气不算远程攻击，无法触发必定暴击，剑气命中弱点也无法叠加层数{#reset()}" end}, -- weakspot_hits:5. -- colors
{	id = "talent_tree_psy_pas_019_desc_en", --杀戮之平静Tranquility Through Slaughter
	loc_keys = {"loc_talent_psyker_ranged_crits_vent_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用非亚空间的远程攻击触发暴击并且命中敌人时，灵能者自身热量降低{#color(255,255,140)}{percent:%s}{#reset()}\n\n每次命中只能触发一次，命中盾牌也算命中" end},

{	id = "talent_tree_psy_pas_019_1_1_desc_en", --武备之信赖Surety of Arms
	loc_keys = {"loc_talent_psyker_reload_speed_warp_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "热量低于{#color(255,255,140)}{threshold:%s}{#reset()}时，换弹速度加快{#color(255,255,140)}{reload_speed:%s}{#reset()}\n换弹时剩余弹药越少，会产生越多的热量，最多产生{#color(255,255,140)}{warp_charge:%s}{#reset()}热量\n\n给霰弹枪装填特殊弹药不涨热量" end},

{	id = "talent_tree_psy_pas_019_1_desc_en", --灵能决意 Empyric Resolve
	loc_keys = {"loc_talent_psyker_warp_glass_cannon_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(255,255,140)}{peril_reduction:%s}{#reset()}热量提升速度减慢，灵能者获得额外亚空间抗性，与其他降低热量的主动、被动技能乘法叠加\n\n{#color(255,255,140)}{toughness_reduction:%s}{#reset()}韧性恢复量效果降低，影响玩家造成的击杀、技能给与的恢复，但不影响队友间的连携恢复量、不影响武器祝福韧性获取量\n打个比方，玩家点了倒霉蛋技能，正常情况下队友倒地你会恢复100%韧性，但是有这个技能只恢复：（100X（1-0.3）=70%）\n\n这段的代码是从渣滓毒雷兵的毒雷里扣出来的，毒雷也能减少毒雷区域内30%的击杀、祝福、技能韧性恢复量，灵能的被动还可以和毒雷这个debuff乘法叠加到降低51%韧性恢复量，以倒霉蛋为例：（100X（1-0.3）（1-0.3）=49%）\n\n可以和地图的毒气因子乘法叠加：（100X（1-0.3）（1+0.5）=105%）\n\n不用太在意这个30%削减，灵能核心恢复韧性是窃魂者的亚空间杀一个回7.5%，就灵能法杖的击杀速度，砍到5.25%等于没砍" end},
{	id = "talent_tree_psy_pas_019_2_desc_en", -- 刺穿灵魂 Penetration of the Soul
	loc_keys = {"loc_talent_psyker_warp_attacks_rending_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据灵能者当前热量，增加自身的撕裂加成，每{#color(255,255,140)}10%{#reset()}热量增加{#color(255,255,140)}2%{#reset()}撕裂\n上限{#color(255,255,140)}100%{#reset()}热量时{#color(255,255,140)}{rending:%s}{#reset()}撕裂\n\n比如50%热量时，自身的近战武器、远程武器、闪击技能、dot等都获得10%的撕裂效果，与火杖穿透火焰祝福加法叠加，对于无甲感染自身来说，100%就是上限，没有额外增伤\n\n电手倍率：不屈狂人100%→105%、无甲防弹感染虚空75%→95%、硬壳50%→70%\n\n魂火倍率：无甲防弹不屈150→157.5→162.5%，狂人虚空100→107.5→112.5%，硬壳25%→45→65%，感染125%→127.5→132.5%\n\n燃烧倍率：无甲不屈150→157.5→162.5%，防弹狂人虚空100→107.5→112.5%，硬壳10%→20→40%，感染125%→127.5→132.5%\n\n魂火15层烧瘟疫欧格林230，撕裂10是227（1.3%），撕裂20是231（3.1%），撕裂30是235（4.9%）\n\n魂火15层烧罐头12，撕裂10是24（100%），撕裂20是36（200%），撕裂30是48（300%）；连射冲击完美5基础26：撕裂10是52（333.3%），撕裂20是77（541.7%），撕裂30是103（758.3%）" end},

-- ==============================================================ZEALOT
-- ==============================================================BLITZ
--____________________________________________________Blitz 0
-- {	id = "talent_tree_zea_blitz0_000_en", -- Stun Grenade
	-- loc_keys = {"loc_ability_shock_grenade",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Stun Grenade" end},
{	id = "talent_tree_zea_blitz0_000_desc_en",
	loc_keys = {"loc_ability_shock_grenade_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "以手雷落点为中心，爆炸范围是半径7米的一个球形空间\n使爆炸范围内的所有非boss级敌人眩晕6秒，使其无法正常移动、攻击。这个期间玩家可以自由的对敌人输出，或者趁机救出倒地的队友\n每隔0.7秒，对被击晕的敌人造成8点伤害" end}, -- Notice!
--____________________________________________________Blitz 1
--{	id = "talent_tree_zea_blitz1_000_en", -- Stunstorm Grenade
--	loc_keys = {"loc_zealot_improved_stun_grenade",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "眩晕风暴手雷" end},
{	id = "talent_tree_zea_blitz1_000_desc_en",
	loc_keys = {"loc_zealot_improved_stun_grenade_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}以手雷落点为中心，爆炸范围是半径12米的一个球形空间（相比基础的晕雷范围扩大{radius:%s}）\n\n手雷会在8秒内持续产生电击雾，每隔0.7秒，对范围内的所有敌人造成8点伤害，并且可以使爆炸范围内的所有非boss级敌人眩晕1秒，使其无法正常移动、攻击（可以理解为晕8秒）。这个期间玩家可以自由的对敌人输出，或者趁机救出倒地的队友" end}, -- talent_name:Stun Grenade radius:+50%. -- Notice!
--____________________________________________________Blitz 2
--{	id = "talent_tree_zea_blitz2_000_en", -- Immolation Grenade
	--loc_keys = {"loc_talent_ability_fire_grenade",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "献祭手雷" end},
{	id = "talent_tree_zea_blitz2_000_desc_en",
	loc_keys = {"loc_talent_ability_fire_grenade_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "手榴弹爆炸后，会在地面留下一片半径{#color(255,255,140)}10米{#reset()}的火焰地面持续{#color(255,255,140)}15秒{#reset()}，每{#color(255,255,140)}0.875秒{#reset()}造成一次基础{#color(255,255,140)}87.5{#reset()}的燃烧伤害，多个火焰地板伤害不叠加（吃满基础1500正好烧死盾卫）\n火雷倍率：不屈350%，无甲狂人感染200%，防弹150%，虚空100%，硬壳10%，玩家0%，\n\n燃烧弹在落点处爆炸，造成半径1米的12点踉跄效果，与敌人手雷兵的踉跄相同\n\n火雷可以同步触发武器祝福、享受武器专长、技能加成" end}, -- colors Notice!
--____________________________________________________Blitz 3
-- {	id = "talent_tree_zea_blitz3_000_en", -- Blades of Faith
	-- loc_keys = {"loc_ability_zealot_throwing_knifes",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Blades of Faith" end},
{	id = "talent_tree_zea_blitz3_000_desc_en",
	loc_keys = {"loc_ability_zealot_throwing_knifes_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "投掷一把飞刀，以每秒移速{#color(255,255,140)}75米{#reset()}的速度最多飞行{#color(255,255,140)}1.5秒{#reset()}，对单个敌人造成{#color(255,255,140)}585米{#reset()}基础伤害，可以穿透一个弱小的敌人（小僵尸、射手、潜行者）\n伤害倍率：狂人感染150%，无甲100%，防弹80%，虚空75%，不屈50%，玩家硬壳0%\n\n携带上限：{#color(255,255,140)}12{#reset()}发\n\n近战击杀精英或专家恢复1把，拾取小弹药恢复2把，拾取弹药箱恢复100%\n\n飞刀有5%的基础暴击几率，并且继承玩家当前装备的近战、远程武器的专长增伤效果、部分祝福效果（左轮远程火炮、轮盘赌；自动枪死亡喷吐、速度装弹；激光枪地狱火、达姆弹、鬼魂、正中眉心，猎颅者；霰弹枪强力炮弹）\n举例：当玩家手持左轮时，祝福带远程火炮+轮盘赌，飞刀就有了24%的额外暴击几率+80%的暴击撕裂效果\n\n霰弹枪带有强力炮弹，你带左下角暴击天赋增加几率，如果你的飞刀产生暴击，飞刀可以穿透除了盾卫罐头之外的一大片敌人\n\n当你从近战武器切换成远程武器时，如果是喷火器、爆弹枪会有漫长的掏枪动画，但是如果你在动画期间丢一把飞刀就可以跳过这个动画直接开枪，这个操作大概可以节约0.5秒左右的时间" end}, -- colors Notice!


-- ==============================================================AURA
--____________________________________________________Aura 0
-- {	id = "talent_tree_zea_aura0_000_en", -- The Emperors's Will
	-- loc_keys = {"loc_talent_zealot_2_base_3",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "The Emperors's Will" end},
-- {	id = "talent_tree_zea_aura0_000_desc_en",
	-- loc_keys = {"loc_talent_zealot_aura_toughness_damage_coherency_desc",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "{damage_reduction:%s} {#color(0, 206, 209)}Toughness{#reset()} {#color(255, 95, 95)}Damage{#reset()} Reduction for you and Allies in Coherency." end}, -- damage_reduction:+7.5%. -- colors
--____________________________________________________Aura 1
-- {	id = "talent_tree_zea_aura_001_en", -- Benediction
	-- loc_keys = {"loc_talent_zealot_aura_efficiency",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Benediction" end},
{	id = "talent_tree_zea_aura_001_desc_en",
	loc_keys = {"loc_talent_zealot_toughness_aura_efficiency_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}会为狂信徒自身，以及狂信徒连携中的队友，韧性伤害抗性增加{damage_reduction:%s}\n\n相同光环不叠加，如果队友只带了基础光环，那么你的强化光环会覆盖它的低级光环\n\n该光环效果虽然蚊子腿，但可以为队友加成总比没有强" end}, -- damage_reduction:+15%. talent_name:The Emperor's Will -- colors
--____________________________________________________Aura 2
--{	id = "talent_tree_zea_aura_002_en", -- Beacon of Purity
--	loc_keys = {"loc_talent_zealot_corruption_healing_coherency_improved",},
 --   locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "纯洁信标" end},
{	id = "talent_tree_zea_aura_002_desc_en",
	loc_keys = {"loc_talent_zealot_corruption_healing_coherency_improved_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "会为狂信徒自身，以及狂信徒连携中的队友，每{interval:%s}秒{#color(153,50,204)}清除{corruption:%s}{#reset()}点腐化伤害（就是紫血）\n只能清除当前伤口的腐化，如果腐化伤害超过了一个伤口就无法清除了\n\n魔法书每本固定涨40点腐蚀无法削减，但是每隔10秒造成1.2腐蚀的效果，中线光环可以完全屏蔽。另外如果你捡了书立马撕掉，恢复的30~35腐蚀甚至能修复一个伤口，这是4人团队都能享受的\n\n因为狗的伤害是腐蚀伤害，所以带这个光环+3个腐蚀抗性和狗抗性，可以堆到68.55％的狗抗而无限被狗咬不会死，虽然没什么用就是了，遇到这种情况如果队友救不了建议直接用mod重连" end}, -- corruption:1.5. interval:1. -- colors
--____________________________________________________Aura 3
--{	id = "talent_tree_zea_aura_003_en", -- Loner
--	loc_keys = {"loc_talent_zealot_always_in_coherency",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "独狼" end},
--{	id = "talent_tree_zea_aura_003_desc_en", --狂热 Zealous
--	loc_keys = {"loc_talent_zealot_stamina_cost_multiplier_delay_aura_description",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "狂信徒自身，以及狂信徒连携中的队友：\n所有体力消耗降低{#color(255,255,140)}{stamina_cost_multiplier:%s}{#reset()}（乘法叠加）\n体力恢复延迟降低{#color(255,255,140)}{stamina_delay:%s}{#reset()}秒（加法叠加）\n\n比如格挡、挡反、跑步、瞄准等都生效" end}, -- coherency_min_stack:2.


-- ==============================================================ABILITIES
-- ____________________________________________________Ability 0
-- {	id = "talent_tree_zea_abil0_000_en", -- Chastise the Wicked
	-- loc_keys = {"loc_talent_zealot_2_combat",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Chastise the Wicked" end}, 惩奸除恶
{	id = "talent_tree_zea_abil0_000_desc_en",
	loc_keys = {"loc_talent_zealot_2_combat_description_new",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "向前冲锋瞬间恢复{toughness:%s}韧性，下一次近战伤害增加{damage:%s}，而且100%会产生暴击，冲锋动画中可以蓄力或者随意挥舞武器\n\n基础冷却时间：{cooldown:%s}秒\n\n使用近战武器时，如果敌人是硬壳则被视为防弹，如果敌人是防弹则被视为无甲（但是敌人的护甲计算仍然是原来的，比如专长增伤只享受硬壳的25%而不是破甲后的效果）。\n\n在不锁定敌人时，向玩家正前方以每秒10米的速度冲锋，移动距离上限7米，撞击敌人时造成3米范围的踉跄效果，开始冲锋0.5秒后随时可以按S停止冲锋（不过一般情况下来不及反应就停了）\n在长按F锁定一个20米内的敌人时，向其以每秒10米的速度冲锋，移动距离上限21米，撞击敌人时造成3米范围的踉跄效果，开始冲锋0.5秒后随时可以按S停止冲锋（如果距离为极限的21米，则近战武器的增伤时间只剩下2秒）" end}, -- toughness:50% damage:25%. cooldown:30. -- colors Notice! s->seconds
-- ____________________________________________________Ability 1
-- {	id = "talent_tree_zea_abil1_000_en", -- Fury of the Faithful
	-- loc_keys = {"loc_talent_maniac_attack_speed_after_dash",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Fury of the Faithful" end}, 信徒之怒
{	id = "talent_tree_zea_abil1_000_desc_en",
	loc_keys = {"loc_talent_zealot_attack_speed_after_dash_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "向前冲锋瞬间恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n近战攻击的动画速度{attack_speed:%s}（同样影响蓄力），持续{time:%s}秒\n{#color(255,255,140)}3秒{#reset()}内的下一次近战伤害增加{damage:%s}\n近战攻击{#color(255,255,140)}100%{#reset()}会产生暴击\n近战破甲倍率提升{#color(255,255,140)}100%{#reset()}\n\n举例：比如重剑9，无甲100%→125%、感染80%→120%、不屈60%→110%、硬壳4%→101%、狂人73%→118%（无甲感染100%就是上限，没有额外增伤）\n玩家可以蓄力冲锋，或者在动画期间随意挥舞武器，动画期间玩家也免疫韧性伤害，并且处于闪避姿态（韧性减伤50%）\n\n基础冷却时间：{cooldown:%s}秒\n\n在不锁定敌人时，向玩家正前方以每秒10米的速度冲锋，移动距离上限7米，撞击敌人时造成3米范围的踉跄效果，开始冲锋0.5秒后随时可以按S停止冲锋（不过一般情况下来不及反应就停了）\n在长按F锁定一个20米内的敌人时，向其以每秒10米的速度冲锋，移动距离上限21米，撞击敌人时造成3米范围的踉跄效果，开始冲锋0.5秒后随时可以按S停止冲锋（如果距离为极限的21米，则近战武器的增伤时间只剩下2秒）" end}, -- toughness:50% attack_speed:+20% time:10. damage:+25%. cooldown:30. talent_name:Chastise the Wicked. -- colors Notice! s->seconds
-- ____________________________________________________Ability 1 Modifier 1
-- {	id = "talent_tree_zea_abil1_001_en", -- Redoubled Zeal
	-- loc_keys = {"loc_talent_zealot_dash_has_more_charges",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Redoubled Zeal" end},
{	id = "talent_tree_zea_abil1_001_desc_en",
	loc_keys = {"loc_talent_zealot_dash_has_more_charges_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}现在有{charges:%s}层充能上限" end}, -- talent_name:Fury of the Faithful charges:2.
-- ____________________________________________________Ability 1 Modifier 2
-- {	id = "talent_tree_zea_abil1_002_en", -- Invocation of Death
	-- loc_keys = {"loc_talent_maniac_cooldown_on_melee_crits",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Invocation of Death" end}, 无尽怒火
{	id = "talent_tree_zea_abil1_002_desc_en",
	loc_keys = {"loc_talent_zealot_fotf_refund_cooldown_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用{talent_name:%s}大招后的{#color(255,255,140)}{duration:%s}秒{#reset()}内，用任意方式击杀一个精英或专家敌人，大招冷却时间降低{#color(255,255,140)}{cooldown_regen:%s}{#reset()}\n\n每次攻击不管击杀了多少敌人，都只能触发一次技能效果" end}, -- time:1.5. -- colors s->seconds
-- ____________________________________________________Ability 2
--{	id = "talent_tree_zea_abil2_000_en", -- Chorus of Spiritual Fortitude
--	loc_keys = {"loc_talent_zealot_bolstering_prayer",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "不屈灵魂合唱" end}, 心灵之坚毅合唱团
{	id = "talent_tree_zea_abil2_000_desc_en",
	loc_keys = {"loc_talent_zealot_bolstering_prayer_variant_two_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "狂信徒挥舞圣物，每{interval:%s}秒释放一次能量脉冲，最多引导7次脉冲，也就是持续5.6秒\n每个脉冲都会给予处于“连携光环”范围内的盟友，持续1.5秒，免疫眩晕和不会死亡的buff\n每个脉冲可为处于“连携光环”范围内的盟友，补充{toughness:%s}的{#color(32,178,170)}韧性{#reset()}，如果盟友的韧性已满，他们将获得{flat_toughness:%s}点额外{#color(32,178,170)}韧性{#reset()}（金盾），额外韧性的上限是{max_toughness:%s}点\n每个脉冲都会踉跄并压制4米范围内的近战敌人无法移动、攻击，踉跄并压制10米范围内的远程敌人无法移动、攻击\n第1、3、5、7次脉冲甚至可以踉跄BOSS（除了纳垢兽和有盾的连长）\n范围压制的距离每次脉冲都会增加0.1米，最大堆叠至10.5米\n\n基础冷却时间：{cooldown:%s}秒\n\n金盾即使只有1点，也可以完全抵御粉碎者砸地板、狙击手、自爆人的伤害，不会降低生命值。\n虽然脉冲期间玩家不会，但依然会坠崖；被变种人等抓取；被自爆、油桶等击飞，如果狂信被抓会中断大招\n受到医疗箱治疗期间受到巨额攻击，可能会导致不会死亡特效不生效\n\n{#color(230,60,0)}BUG：1.11.1补丁后，重剑特殊攻击会导致无法释放狂信开祷、渣滓箱子技能{#reset()}" end}, -- interval:0.8. toughness:45%. flat_toughness:+20 max_toughness:+100. cooldown:60. -- colors s->seconds
-- ____________________________________________________Ability 2 Modifier 1
--{	id = "talent_tree_zea_abil2_001_en", -- Holy Cause
	--loc_keys = {"loc_talent_zealot_zealot_channel_grants_defensive_buff",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "神圣事业" end},
{	id = "loc_talent_zealot_zealot_channel_grants_defensive_buff",
	loc_keys = {"loc_talent_zealot_zealot_channel_grants_defensive_buff_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家引导不屈灵魂合唱至第{stacks:%s}次脉冲时，使狂信徒自身，与狂信徒“连携光环”范围内的盟友，获得{toughness:%s}韧性伤害减免（乘法叠加），持续{duration:%s}秒" end}, -- stacks:5 damage:+20%. duration:10. -- colors s->seconds
-- ____________________________________________________Ability 2 Modifier 2

-- ____________________________________________________Ability 2 Modifier 3
--{	id = "talent_tree_zea_abil2_003_en", -- Ecclesiarch's Call
--	loc_keys = {"loc_talent_zealot_zealot_channel_grants_offensive_buff",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "教宗之唤 教宗之召" end},
{	id = "talent_tree_zea_abil2_003_desc_en",
	loc_keys = {"loc_talent_zealot_zealot_channel_grants_offensive_buff_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家引导不屈灵魂合唱至第{stacks:%s}次脉冲时，使狂信徒自身，与狂信徒“连携光环”范围内的盟友，获得{damage:%s}全伤害增幅，持续{duration:%s}秒" end}, -- stacks:5 damage:+20%. duration:10. -- colors s->seconds
-- ____________________________________________________Ability 2 Modifier 4
--{	id = "talent_tree_zea_abil2_004_en", -- 
	--loc_keys = {"loc_talent_zealot_damage_taken_restores_cd",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "殉道者之愿 " end},
 {	id = "talent_tree_zea_abil3_004_2_desc_en", --殉道者使命 Martyr's Purpose
	 loc_keys = {"loc_talent_zealot_damage_taken_restores_cd_new_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "根据玩家当前生命值百分比，加快大招的恢复速度，每损失{#color(255,255,140)}15%{#reset()}生命值，大招冷却加快{#color(255,255,140)}10%{#reset()}\n最低剩余{#color(255,255,140)}{current_health:%s}{#reset()}生命时，大招恢复加快{#color(255,255,140)}{cooldown_regen:%s}{#reset()}\n\n加快50%的意思是正常过1秒，大招恢复1秒，在此技能加成50%的情况下，正常过1秒，大招恢复1.5秒\n比如大招60秒时，叠满就可以加快到40秒，带3个4%饰品变成35.2秒" end},
-- ____________________________________________________Ability 3
--{	id = "talent_tree_zea_abil3_000_en", -- Shroudfield
--	loc_keys = {"loc_ability_zealot_stealth",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "隐秘领域" end}, 隐匿罩衣
{	id = "talent_tree_zea_abil3_000_desc_en",
	loc_keys = {"loc_ability_zealot_stealth_rending_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "进入隐身状态{duration:%s}秒\n隐形期间移动速度增加{movement_speed:%s}\n近战背刺伤害增加{backstab_damage:%s}\n娴熟伤害增加{finesse_damage:%s}（弱点与暴击伤害倍率）\n暴击几率增加{crit_chance:%s}\n玩家当前使用的近战武器对敌人的破甲倍率提升{#color(255,255,140)}{rending:%s}{#reset()}\n\n基础冷却时间：{cooldown:%s}秒\n进行任何近战、远程攻击、投掷手雷、把队友救起来后，都会退出隐身状态\n恶魔宿主现在能看到使用隐身的狂信徒，避免狂信徒开怪没打死，恶魔宿主反而去揍队友的问题\n隐身之前对敌人造成的流血、燃烧、触电这类dot持续伤害，在隐身后不会导致玩家破隐\n投掷手雷后再隐身，那么手雷造成的伤害不会破除玩家隐形\n隐身期间玩手机解码小游戏不会破隐\n\n破甲举例：比如重剑9，无甲100%→125%、感染80%→120%、不屈60%→110%、硬壳4%→101%、狂人73%→118%（无甲感染100%就是上限，没有额外增伤）\n\n{#color(230,60,0)}BUG：狂信在武器蓄力期间使用隐身技能，会导致蓄力中断，必须重新蓄力{#reset()}\n{#color(230,60,0)}BUG：隐身期间推搡一个自爆人后，如果自爆人死亡，玩家会退出隐身状态（因为造成了击杀）{#reset()}" end}, -- duration:3. movement_speed:+20% backstab_damage:+100% finesse_damage:+100% crit_chance:+100%. cooldown:30. -- colors Notice! s->seconds
-- ____________________________________________________Ability 3 Modifier 1
--{	id = "talent_tree_zea_abil3_001_en", -- Master-Crafted Shroudfield
--	loc_keys = {"loc_talent_zealot_increased_stealth_duration",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "大师级隐秘领域" end},大师级隐匿罩衣
{	id = "talent_tree_zea_abil3_001_desc_en",
	loc_keys = {"loc_talent_zealot_stealth_duration_threat_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}持续时间延长至{#color(255,255,140)}{duration:%s}秒{#reset()}\n并且离开隐身后的{#color(255,255,140)}{buff_duration:%s}秒{#reset()}内，玩家对敌人的威胁降低{#color(255,255,140)}{threat:%s}{#reset()}，近战背刺伤害增加{#color(255,255,140)}{damage:%s}{#reset()}\n\n{#color(230,60,0)}BUG：没写明但是代码里有的，隐身期间降低10%冲刺体力消耗{#reset()}\n\n通常情况下在战斗中有多个权重因素（例如与敌人的距离、玩家身边有多少敌人、是否被抓、是否被怪物追杀等）用于计算决定敌人对玩家单位目标选择的分数。这个技能提供一个额外的权重乘数，操纵该分数计算以有利于玩家，使玩家更不容易被敌人锁定" end}, -- duration_2:6. -- colors s->seconds
-- ____________________________________________________Ability 3 Modifier 2
--{	id = "talent_tree_zea_abil3_002_en", -- Perfectionist
--	loc_keys = {"loc_talent_zealot_stealth_increased_damage",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "完美主义者" end},
{	id = "talent_tree_zea_abil3_002_desc_en",
	loc_keys = {"loc_talent_zealot_stealth_cooldown_regeneration_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "隐身持续期间，狂信徒以任意方式击杀敌人后（直击、流血燃烧dot、火雷都算），根据击杀的敌人类型，恢复大招的CD\n触发特效有{#color(255,255,140)}1{#reset()}秒内置CD\n\n击杀人形敌人恢复{#color(255,255,140)}{other:%s}{#reset()}（4.5秒）\n击杀欧格林敌人恢复{#color(255,255,140)}{ogryn:%s}{#reset()}（9秒）\n击杀BOSS级敌人恢复{#color(255,255,140)}{monster:%s}{#reset()}（15秒）\n\n欧格林敌人：{#color(255,155,55)}粉碎者、盾卫、收割者{#reset()}\n\nBOSS：{#color(255,155,55)}瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主、渣滓连长、血痂连长、近战双子连长、远程双子连长{#reset()}\n\n{#color(230,60,0)}BUG：隐身期间推搡一个自爆人后，如果自爆人死亡，玩家会退出隐身状态（因为造成了击杀）{#reset()}" end}, -- talent_name:Shroudfield damage:+50% damage_2:+50% cooldown:50%. colors and Notice!
-- ____________________________________________________Ability 3 Modifier 3
 --{	id = "talent_tree_zea_abil3_003_en", -- Invigorating Revelation
--	 loc_keys = {"loc_talent_zealot_leaving_stealth_restores_toughness",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "振奋启示" end},
 {	id = "talent_tree_zea_abil3_003_desc_en",
	 loc_keys = {"loc_talent_zealot_stealth_toughness_dr_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "开启{talent_name:%s}立刻恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n在离开隐身状态后的{#color(255,255,140)}{duration:%s}秒{#reset()}内，获得{#color(255,255,140)}{dr:%s}{#reset()}的韧性伤害抗性" end}, -- toughness:40% time:5. damage:+20% time:5. -- colors s->seconds
-- ____________________________________________________Ability 3 Modifier 4
 --{	id = "talent_tree_zea_abil3_004_en", -- Pious Cut-Throat
--	 loc_keys = {"loc_talent_zealot_backstab_kills_restore_cd",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "虔诚刺客" end}, 虔诚割喉
 {	id = "talent_tree_zea_abil3_004_desc_en",
	 loc_keys = {"loc_talent_zealot_cooldown_on_backstab_weakspot_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "使用近战背刺命中敌人后，或者近战命中敌人弱点后，大招恢复加快{#color(255,255,140)}{cooldown:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n重复触发不叠加，重置持续时间\n\n加快100%的意思是正常过1秒，大招恢复1秒，在此技能加成75%的情况下，正常过1秒，大招恢复1.75秒\n\n背刺并不一定必须在完全正背后，侧身一点的位置也能触发" end}, -- ability_cooldown:20%. -- colors
 {	id = "talent_tree_zea_abil3_004_1_desc_en", --死亡祷文 Invocation of Death
	 loc_keys = {"loc_talent_maniac_cooldown_on_melee_crits_buff_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战产生暴击并且命中敌人时，大招冷却加快{#color(255,255,140)}{cooldown_regen:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n重复触发不叠加，重置持续时间\n\n加快100%的意思是正常过1秒，大招恢复1秒，在此技能加成100%的情况下，正常过1秒，大招恢复2秒" end},

-- ==============================================================KEYSTONES
-- ____________________________________________________Keystone 1
--{	id = "talent_tree_zea_keys1_000_en", -- Blazing Piety
--	loc_keys = {"loc_talent_zealot_fanatic_rage",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "炽热虔诚" end},
{	id = "talent_tree_zea_keys1_000_desc_en",
	 loc_keys = {"loc_talent_zealot_fanatic_rage_crit_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当{radius:%s}米范围内有任意敌人因为任意原因死亡时，玩家获得一层炽热虔诚buff持续10秒，如果10秒内玩家没有获得新的层数，会每隔10秒掉一层。\n\n当炽热虔诚叠加到{max_stacks:%s}层的时候，狂信徒自身会获得一层狂怒buff，可以增加玩家自身暴击几率{crit_chance:%s}，持续{duration:%s}秒\n\n玩家每次获得1层炽热虔诚，都会重置炽热虔诚与愤怒的持续时间\n\n当玩家使用近战、远程、飞刀武器产生暴击，并且命中敌人时（盾牌不行、连长虚空盾可以），即使该次攻击没能杀掉敌人，也会为自身叠加一层炽热虔诚，获得层数按照命中数量计算，暴击命中的越多，单次叠加层数越高" end},  -- crit_chance:+15% duration:8. max_stacks:25 radius:25. -- rewrite colors m->meters s->seconds
	-- {crit_chance:%s} {#color(255, 255, 95)}Critical Hit{#reset()} Chance for {duration:%s} seconds when in Fury. Fury is triggered when {max_stacks:%s} Enemies have died within {radius:%s} meters.
-- ____________________________________________________Keystone 1 Modifier 1
-- {	id = "talent_tree_zea_keys1_001_en", -- 忠诚拥护Stalwart
	-- loc_keys = {"loc_talent_zealot_fanatic_rage_toughness",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Stalwart" end},
{	id = "talent_tree_zea_keys1_001_desc_en",
	 loc_keys = {"loc_talent_zealot_fanatic_rage_toughness_replenish_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家叠满25层触发buff的瞬间，玩家自身恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}，想再次触发这个特效只能等buff消失后重新叠25层\n在buff持续期间玩家获得{#color(255,255,140)}25%{#reset()}韧性伤害抗性（乘法叠加），并且每秒自身恢复{#color(255,255,140)}2%{#reset()}{#color(32,178,170)}韧性{#reset()}" end}, -- toughness:50%. -- colors
-- ____________________________________________________Keystone 1 Modifier 2
-- ____________________________________________________Keystone 1 Modifier 3
 --{	id = "talent_tree_zea_keys1_003_en", -- Infectious Zeal
--	 loc_keys = {"loc_talent_zealot_shared_fanatic_rage",},
	-- locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "迅疾狂热" end}, 热情感染
{	id = "talent_tree_zea_keys1_003_desc_en",
	loc_keys = {"loc_talent_zealot_shared_fanatic_rage_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当{talent_name:%s}技能触发时，处于“连携光环”范围内的盟友，也可获得{crit_chance:%s}暴击几率的效果" end}, -- crit_chance:+33% talent_name:Blazing Piety. -- colors
-- ____________________________________________________Keystone 1 Modifier 4
 --{	id = "talent_tree_zea_keys1_004_en", -- Righteous Warrior
--	 loc_keys = {"loc_talent_zealot_fanatic_rage_improved",},
	-- locales = {"zh-cn",},
--	 handle_func = function(locale, value)
	-- return "正义勇士" end},
{	id = "talent_tree_zea_keys1_004_desc_en",
	 loc_keys = {"loc_talent_zealot_fanatic_rage_improved_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "{talent_name:%s}技能额外增加{crit_chance:%s}暴击几率，从15%加法叠加至25%" end}, -- crit_chance:+10% talent_name:Blazing Piety. -- colors

-- ____________________________________________________Keystone 2
-- {	id = "talent_tree_zea_keys2_000_en", -- Martyrdom
	-- loc_keys = {"loc_talent_zealot_martyrdom",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Martyrdom" end}, 殉道
{	id = "talent_tree_zea_keys2_000_desc_en",
	loc_keys = {"loc_talent_zealot_martyrdom_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每当损失血量超过1个伤口，就会增加近战伤害{damage:%s}，最多损失{max_wounds:%s}个伤口\n\n只要白血低于伤口格子就算损失一个，不是必须紫色腐蚀\n\n即使依靠技能、饰品最多叠加7个伤口，但技能上限只有5个，所以近战伤害叠加上限是50%" end}, -- damage:+8% max_wounds:7. -- colors
-- ____________________________________________________Keystone 2 Modifier 1
-- {	id = "talent_tree_zea_keys2_001_en", -- I Shall Not Fall
	-- loc_keys = {"loc_talent_zealot_martyrdom_grants_toughness",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "I Shall Not Fall" end}, 永不倒下
{	id = "talent_tree_zea_keys2_001_desc_en",
	loc_keys = {"loc_talent_zealot_martyrdom_grants_toughness_upd_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "以{talent_name:%s}损失的每个伤口，都会使玩家获得{toughness_damage_reduction:%s}韧性伤害抗性（与小节点加法叠加）\n\n即使依靠技能、饰品最多叠加7个伤口，但技能上限只有5个，所以抗性叠加上限是37.5%\n\n因为是加法叠加，可以配合小节点叠加至47.5%常驻韧性抗性" end}, -- talent_name:Martyrdom toughness_damage_reduction:+5%. -- colors
-- ____________________________________________________Keystone 2 Modifier 2
-- {	id = "talent_tree_zea_keys2_002_en", -- Maniac
	-- loc_keys = {"loc_talent_zealot_attack_speed_per_martyrdom",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Maniac" end}, 狂人
{	id = "talent_tree_zea_keys2_002_desc_en",
	loc_keys = {"loc_talent_zealot_attack_speed_per_martyrdom_upd_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}损失的每个伤口，都会使狂信徒获得{attack_speed:%s}近战攻击的动画速度（同样影响蓄力）加成\n\n即使依靠技能、饰品最多叠加7个伤口，但技能上限只有5个，所以攻速叠加上限是30%" end}, -- talent_name:Martyrdom attack_speed:+4%. -- colors
{	id = "talent_tree_zea_keys2_002_1_desc_en", --生死一线 On the Brink
	loc_keys = {"loc_talent_zealot_corruption_resistance_stacking_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}损失的每个伤口，都会使狂信徒获得{corruption_resistance:%s}{#color(153,50,204)}腐化{#reset()}抗性\n\n即使依靠技能、饰品最多叠加7个伤口，但技能上限只有5个，所以叠加上限是50%" end}, 
{	id = "talent_tree_zea_keys2_002_2_desc_en", --治愈圣歌 Restorative Verses
	loc_keys = {"loc_talent_zealot_martyrdom_toughness_modifier_upd_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}损失的每个伤口，都会使狂信徒获得{#color(255,255,140)}{toughness_modifier:%s}{#reset()}的最终{#color(32,178,170)}韧性{#reset()}恢复加成\n\n依靠技能、饰品最多叠加7个伤口，但技能上限只有5个，所以叠加上限是25%\n\n圣歌X5：5X1.25=6.25%\n\n圣歌X5+鲜血：5X2X1.25=12.5%\n\n圣歌X5+邪恶：（5+10）X1.25=18.75%\n\n圣歌X5+鲜血+邪恶：（5X2+10）X1.25=25%" end}, 
-- ____________________________________________________Keystone 3
--{	id = "talent_tree_zea_keys3_000_en", -- Inexorable Judgement
	--loc_keys = {"loc_talent_zealot_quickness",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "命定审判" end},
 {	id = "talent_tree_zea_keys3_000_desc_en",
	 loc_keys = {"loc_talent_zealot_quickness_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "根据移动距离可持续获得无情buff，每移动4米增加1层，上限{max_stacks:%s}层，当你对敌人的近战或远程攻击命中时触发势能buff，持续{duration:%s}秒\n\n每层势能增加近战、远程武器全局伤害{damage_modifier:%s}，增加近战武器攻速{melee_attack_speed:%s}，增加远程武器攻速{ranged_attack_speed:%s}\n\n{#color(230,60,0)}BUG：技能说明没写，但是代码里还有：闪避速度0.5%，闪避距离0.5%，闪避冷却时间降低1%{#reset()}\n\n叠满15层后：15%的攻速+15%的全局伤害+7.5%闪避速度+7.5%闪避距离+15%闪避冷却加快\n\n闪避冷却是什么：不同的武器有不同的闪避上限，到闪避极限后闪避距离和速度都会大幅度降低，冷却时间就是恢复闪避层数的" end}, -- max_stacks:20. melee_attack_speed:+1% ranged_attack_speed:+1% damage_modifier:+1%. duration:8. -- rewrite colors Notice!
-- ____________________________________________________Keystone 3 Modifier 1
 --{	id = "talent_tree_zea_keys3_001_en", -- Retributor's Stance
	-- loc_keys = {"loc_talent_zealot_quickness_toughness_per_stack",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "惩罚者姿态" end},
 {	id = "talent_tree_zea_keys3_001_desc_en",
	 loc_keys = {"loc_talent_zealot_quickness_toughness_per_stack_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "每消耗1层气势，补充{toughness:%s}{#color(32,178,170)}韧性{#reset()}" end}, -- toughness:2%. -- colors
-- ____________________________________________________Keystone 3 Modifier 2
 --{	id = "talent_tree_zea_keys3_002_en", -- Inebriate's Poise
	-- loc_keys = {"loc_talent_zealot_quickness_dodge_stacks",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "飘忽身形" end},
 {	id = "talent_tree_zea_keys3_002_desc_en",
	 loc_keys = {"loc_talent_zealot_quickness_dodge_stacks_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "成功闪避敌人锁定玩家的近战或远程攻击后，获得{stacks:%s}层气势buff\n\n因为没有冷却时间，所以当刷尸潮、或者枪手众多的时候，闪避一下就可能叠满buff\n\n{#color(230,60,0)}BUG：闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果{#reset()}" end}, -- stacks:3. -- colors


-- ==============================================================PASSIVES
-- {	id = "talent_tree_zea_pas_000_en", -- Disdain
	-- loc_keys = {"loc_talent_zealot_3_tier_2_ability_1",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Disdain" end},鄙视
{	id = "talent_tree_zea_pas_000_desc_en",
	loc_keys = {"loc_talent_zealot_3_tier_2_ability_1_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在单次攻击中，玩家每命中一个敌人，你的下一次近战直击伤害就会增加{damage:%s}，叠加上限{max_stacks:%s}层\n\n第一击不增伤，单纯叠层数\n第二击增伤，但是丢失所有层数，即使你打空也会丢失，然后按照你这次攻击命中敌人的数量来叠层数\n第三击按照你上一击命中的敌人数量来增伤（没打中就是0）\n第四击增伤，但是丢失所有层数，即使你打空也会丢失，以此类推……" end}, -- damage:+5%. max_stacks:5. -- colors Notice!
-- {	id = "talent_tree_zea_pas_001_en", -- Backstabber
	-- loc_keys = {"loc_talent_zealot_increased_backstab_damage",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Backstabber" end}, 背刺者
 {	id = "talent_tree_zea_pas_001_desc_en",
	 loc_keys = {"loc_talent_zealot_backstab_flanking_damage_all_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	return "近战背刺直击伤害增加{damage:%s}\n\n背刺并不一定必须在完全正背后，侧身一点的位置也能触发" end}, -- damage:+20%. -- colors -- colors
 {	id = "talent_tree_zea_pas_001_1_desc_en",--敌后作战 Behind the Lines
	 loc_keys = {"loc_talent_zealot_suppress_on_backstab_kill_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	return "近战蓄力攻击背刺击杀一个敌人后，压制{#color(255,255,140)}{range:%s}米{#reset()}内的敌人\n\n冷却时间{#color(255,255,140)}{cooldown:%s}秒{#reset()}\n\n背刺并不一定必须在完全正背后，侧身一点的位置也能触发，电棍和链锯的特殊模式背刺击杀也可以\n\n远程压制仅对这些敌人生效：{#color(255,155,55)}呻吟者、装甲呻吟者、血痂射手、血痂渣滓潜行者、血痂渣滓炮手、收割者{#reset()}（看不懂就理解为小僵尸潮、枪兵、炮手）" end}, -- damage:+20%. -- colors -- colors
 {	id = "talent_tree_zea_pas_001_2_desc_en",--杀戮时刻 time to kill
	 loc_keys = {"loc_talent_zealot_backstab_periodic_damage_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	return "近战背刺直击伤害增加{damage:%s}\n\n冷却时间{#color(255,255,140)}{cooldown:%s}秒{#reset()}\n\n背刺并不一定必须在完全正背后，侧身一点的位置也能触发，如果没命中敌人背后就不会进入冷却\n\n该技能对链锯、电棍的特殊攻击也能增加伤害" end}, -- damage:+20%. -- colors -- colors
 --{	id = "talent_tree_zea_pas_002_en", -- Anoint in Blood
	-- loc_keys = {"loc_talent_zealot_ranged_damage_increased_to_close",},
--	 locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "鲜血圣膏" end},
{	id = "talent_tree_zea_pas_002_desc_en",
	loc_keys = {"loc_talent_zealot_ranged_damage_increased_to_close_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用远程武器时，0~12.5米伤害加成{damage:%s}，12.5~30米伤害加成逐渐降低，30米外失去所有加成效果\n\n在敌人30米内时，对所有类型的伤害都有额外加加成，包括直击、dot、爆炸" end}, -- damage:+25%. -- colors Notice!
 --{	id = "talent_tree_zea_pas_003_en", -- Scourge 
--	 loc_keys = {"loc_talent_zealot_bleed_melee_crit_chance",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "天灾" end},
 {	id = "talent_tree_zea_pas_003_desc_en",
	 loc_keys = {"loc_talent_zealot_bleed_melee_crit_chance_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战武器产生暴击并且命中敌人时，会对其施加{#color(255,255,140)}2{#reset()}层流血效果\n玩家对正在流血的敌人攻击，会增加1层{crit_chance:%s}近战暴击几率\n\n最多叠加{max_stacks:%s}层（30%暴击）\n持续{duration:%s}秒\n\n流血上限16层，0.5秒一跳，持续1.5秒（跳3次掉1层），倍率：无甲感染50%，防弹不屈75%，玩家狂人虚空100%，硬壳25%\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数" end}, -- crit_chance:+10% duration:3. max_stacks:3. -- colors
{	id = "talent_tree_zea_pas_003_1_desc_en", --杀气腾腾 Blinded by Blood
	 loc_keys = {"loc_talent_zealot_bled_enemies_take_more_damage_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "狂信徒使用任意方式使敌人进入流血状态时，对其施加一个持续{#color(255,255,140)}{duration:%s}秒{#reset()}的debuff，其额外受到{#color(255,255,140)}{damage_taken:%s}{#reset()}任意伤害（队友也能吃到，近战、远程、直击、爆炸、dot都可以）\n\n持续期间再次施加流血可以重置debuff持续时间，注意流血的持续时间和层数都跟debuff持续时间没关系，流血只不过是一个前置条件\n\n{#color(227,23,13)}{#color(230,60,0)}BUG：如果敌人已经被队友挂上出血debuff（比如老兵流血雷、欧格林轻重击等），狂信对身上有流血的敌人攻击，是无法挂易伤debuff的{#reset()}" end}, -- crit_chance:+10% duration:3. max_stacks:3. -- colors
{	id = "talent_tree_zea_pas_003_2_desc_en", --首要目标 Prime Target
	 loc_keys = {"loc_talent_zealot_elite_kills_empowers_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家使用任意方式击杀精英敌人后：\n以每秒{#color(32,178,170)}3%{#reset()}的速度，持续恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n提升自身{#color(255,255,140)}{damage:%s}{#reset()}能量（全局伤害，包括近战、远程、直击、爆炸、dot都可以）\n\n上面两个buff持续{#color(255,255,140)}{duration:%s}秒{#reset()}，再次击杀精英敌人只会重置持续时间，效果不叠加\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}" end}, 
{	id = "talent_tree_zea_pas_003_3_desc_en", --乘胜追击 No Respite
	 loc_keys = {"loc_talent_zealot_melee_crits_restore_stamina_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "狂信徒使用近战武器产生暴击并且命中敌人后，恢复自身{#color(255,255,140)}{stamina:%s}{#reset()}体力\n\n这一特效有{#color(255,255,140)}{cooldown:%s}秒{#reset()}冷却时间" end}, 
{	id = "talent_tree_zea_pas_003_4_desc_en", --渐入佳境 Relentless Fervor
	 loc_keys = {"loc_talent_zealot_sprint_improvements_alt_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "狂信徒疾跑速度{#color(255,255,140)}{sprint_speed:%s}{#reset()}\n疾跑消耗降低{#color(255,255,140)}{sprint_cost:%s}{#reset()}\n疾跑持续{duration:%s}秒后，免疫因为敌人近战、远程攻击造成的减速效果\n\n它并不能免疫敌人造成的其他减速效果，比如纳垢兽和浩劫搞出的减速黄色粘液\n\n跑步、跳跃每秒5.2米→5.72米" end}, 
-- {	id = "talent_tree_zea_pas_004_en", -- Enemies Within, Enemies Without
	-- loc_keys = {"loc_talent_zealot_toughness_regen_in_melee",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Enemies Within, Enemies Without" end},
-- {	id = "talent_tree_zea_pas_004_desc_en",
	-- loc_keys = {"loc_talent_zealot_toughness_regen_in_melee_desc",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Replenish {toughness:%s} {#color(0, 206, 209)}Toughness{#reset()} per second while within {range:%s} meters of at least {num_enemies:%s} Enemies." end}, -- toughness:2.5% range:5 num_enemies:3. -- colors
-- {	id = "talent_tree_zea_pas_005_en", -- Fortitude in Fellowship
	-- loc_keys = {"loc_talent_zealot_increased_coherency_regen",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Fortitude in Fellowship" end},
{	id = "talent_tree_zea_pas_005_desc_en",
	loc_keys = {"loc_talent_zealot_increased_coherency_regen_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "狂信徒自身，以及狂信徒连携中的队友，连携{#color(32,178,170)}韧性{#reset()}恢复量增加{toughness:%s}，他同样会加成持续恢复性的韧性加成，例如振奋启示的40%韧性恢复到60%\n\n每秒连携韧性恢复量：2人时3.75→5.625、3人5.625→8.4375、4人7.5→11.25\n\n{#color(230,60,0)}BUG：当玩家选择这个被动时，即使身边没有任何队友的情况下，也会获得每秒5.88的韧性恢复量，数据比独狼还高。这额外的每秒5.88点韧性恢复会享受饰品30%韧性加成。但是加成方式不是正常的5.88X（1+0.3X3），而是缩短每秒恢复的间隔，从每1秒恢复5.88变为每1÷1.2÷1.2÷1.2=0.58秒恢复一次。简单来说，就是不带饰品时39.8秒恢复234韧性，带3饰品后21.6秒恢复234韧性。\n患难+独狼：20.49秒就可以恢复234韧性，每秒恢复11.42\n患难+独狼+3饰品：12.5秒就可以恢复241韧性，每秒恢复19.28\n\n当玩家被近战敌人锁定时，会暂停韧性恢复，将其击杀或者敌人不在锁定你时，才会继续回复韧性" end}, -- toughness:+25%. -- colors
-- {	id = "talent_tree_zea_pas_006_en", -- Purge the Unclean
--	 loc_keys = {"loc_talent_zealot_3_passive_2",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "净化不洁" end},
 {	id = "talent_tree_zea_pas_006_desc_en",
	 loc_keys = {"loc_talent_zealot_3_passive_2_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "对感染和不屈的敌人造成额外{damage:%s}全伤害增幅\n\n感染：{#color(255,155,55)}瘟疫行尸、瘟疫猎犬、装甲瘟疫猎犬、瘟疫自爆手{#reset()}\n\n不屈：{#color(255,155,55)}收割者、盾卫、瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主{#reset()}" end}, -- damage:+20%. -- colors
-- {	id = "talent_tree_zea_pas_007_en", -- Blood Redemption
--	 loc_keys = {"loc_talent_zealot_toughness_on_melee_kill",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "鲜血救赎" end},
{	id = "talent_tree_zea_pas_007_desc_en",
	loc_keys = {"loc_talent_zealot_toughness_on_melee_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战击杀基础{#color(32,178,170)}韧性{#reset()}恢复量提升{toughness:%s}\n\n鲜血救赎恢复量：5X2=10%\n\n邪恶供奉+鲜血救赎：5X2+10=20%\n\n会受到毒雷-30%、毒气因子+50%等影响" end}, -- toughness:+50%. -- colors
-- {	id = "talent_tree_zea_pas_008_en", -- Bleed for the Emperor
	-- loc_keys = {"loc_talent_zealot_3_tier_3_ability_2",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Bleed for the Emperor" end}, 为帝皇流血
{	id = "talent_tree_zea_pas_008_desc_en",
	loc_keys = {"loc_talent_zealot_3_tier_3_ability_2_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家受到生命值伤害时（包括油桶爆炸和跳楼摔掉血），如果该次伤害会使玩家血量从当前格子掉到下个格子，那么该次生命值伤害会降低{damage_reduction:%s}\n受到韧性伤害时不产生效果，该减伤也不降低韧性伤害\n\n比如大罐头正常情况下一锤子造成416伤害会直接秒了玩家，那么当玩家有这个被动的时候，只会打掉玩家250血" end}, -- damage_reduction:40%. -- colors
 --{	id = "talent_tree_zea_pas_009_en", -- Vicious Offering
--	 loc_keys = {"loc_talent_zealot_toughness_on_heavy_kills",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "恶毒赠礼邪恶供奉" end},
{	id = "talent_tree_zea_pas_009_desc_en",
	loc_keys = {"loc_talent_zealot_toughness_on_heavy_kills_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战武器蓄力击杀敌人时会额外恢复{toughness:%s}韧性\n这是一个额外的加成，不会受到其他基础韧性加成的影响\n\n邪恶供奉恢复量：5+10=15%\n\n邪恶供奉+鲜血救赎：5X2+10=20%\n\n会受到毒雷-30%、毒气因子+50%等影响" end}, -- toughness:7.5%. -- colors
-- {	id = "talent_tree_zea_pas_010_en", -- The Voice of Terra
	-- loc_keys = {"loc_talent_zealot_toughness_on_ranged_kill",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "The Voice of Terra" end}, 泰拉之声
{	id = "talent_tree_zea_pas_010_desc_en",
	loc_keys = {"loc_talent_zealot_toughness_on_ranged_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用远程武器直击击杀敌人时，恢复自身{#color(0,206,209)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n流血、燃烧、电击的dot击杀不算" end}, -- toughness:2.5%. -- colors
{	id = "talent_tree_zea_pas_010_1_desc_en", --四面楚歌 Enemies Within, Enemies Without
	loc_keys = {"loc_talent_zealot_toughness_near_enemies_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家自身半径{#color(0,206,209)}{range:%s}米{#reset()}范围内有1个敌人时，每秒恢复{#color(0,206,209)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n当敌人超过1个时，每多1个敌人就额外恢复1%韧性，恢复上限是{#color(0,206,209)}{more_toughness:%s}{#reset()}\n\n当{monster_count:%s}米内存在BOSS时，每秒恢复直接拉满到{max:%s}\n\nBOSS：瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主、渣滓连长、血痂连长、近战双子连长、远程双子连长\n\n{#color(230,60,0)}BUG：目前显示敌人数量的时候少一个，比如有两个敌人但只显示1层图标，堆叠上限也因此显示错误，不是显示5层而是6层" end}, -- toughness:2.5%. -- colors
-- {	id = "talent_tree_zea_pas_011_en", -- Restoring Faith
	-- loc_keys = {"loc_talent_zealot_heal_damage_taken",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Restoring Faith" end},恢复信仰
{	id = "talent_tree_zea_pas_011_desc_en",
	loc_keys = {"loc_talent_zealot_heal_damage_taken_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "受到任何生命值伤害时（包括油桶爆炸和跳楼摔掉血），系统会记录该次数值，并在{time:%s}秒内缓慢恢复该次伤害{damage_reduction:%s}的生命\n记录上限为10次，超过就不记录了\n\n只对生命值伤害有恢复效果，韧性伤害、腐蚀伤害都无法恢复，对至死不渝伪无敌期间受到的超额攻击造成的生命损伤，不能完全恢复\n被自爆炸的时候，生命值降低（50血+50腐蚀），该技能会在4秒内恢复20点血\n如果你带了3个15%腐蚀抗性，那么生命值降低（50血+30腐蚀），该技能会在4秒内恢复16点血\n饰品词条里其实有自爆伤害抗性20%但一直没实装，如果实装后配合腐蚀抗性，自爆炸一下就只掉（25.6+15.7216）=41血，垃圾肥鲨" end}, -- damage_reduction:25%. time:5. -- colors s->seconds
 --{	id = "talent_tree_zea_pas_012_en", -- Second Wind
	-- loc_keys = {"loc_talent_zealot_toughness_on_dodge",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "精力复苏" end},复苏之风
 {	id = "talent_tree_zea_pas_012_desc_en",
	 loc_keys = {"loc_talent_zealot_toughness_on_dodge_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家成功闪避一次敌人锁定玩家的近战或远程攻击时，恢复{toughness:%s}的{#color(32,178,170)}韧性{#reset()}，内置冷却时间0.5秒\n武器祝福带来的闪避例如鬼魂等，闪避炮手、狙击之外的远程攻击时也会生效\n\n会受到毒雷-30%、毒气因子+50%等影响" end}, -- toughness:15%. -- colors
 {	id = "talent_tree_zea_pas_012_1_desc_en",
	 loc_keys = {"loc_talent_zealot_stacking_melee_damage_after_dodge_desc",}, --以牙还牙 Riposte
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家成功闪避一次敌人锁定玩家的近战或远程攻击时，近战直击伤害提升{#color(255,255,140)}{damage:%s}{#reset()}\n\n叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层（叠满15%）\n持续{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n武器祝福带来的闪避例如鬼魂等，闪避炮手、狙击之外的远程攻击时也会生效" end}, -- toughness:15%. -- colors
 --{	id = "talent_tree_zea_pas_013_en", -- Enduring Faith
--	 loc_keys = {"loc_talent_zealot_toughness_melee_effectiveness",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "坚韧信仰" end}, 持久信仰
 {	id = "talent_tree_zea_pas_013_desc_en",
	 loc_keys = {"loc_talent_zealot_toughness_melee_effectiveness_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "使用近战、远程武器造成暴击并且命中敌人时，玩家获得{toughness_damage_reduction:%s}韧性伤害抗性（乘法叠加），持续{time:%s}秒" end}, -- toughness_damage_reduction:+50% time:4. -- colors s->seconds
-- {	id = "talent_tree_zea_pas_014_en", -- The Emperor's Bullet
	-- loc_keys = {"loc_talent_zealot_improved_melee_after_no_ammo",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "帝皇之弹" end},
 {	id = "talent_tree_zea_pas_014_desc_en",
	 loc_keys = {"loc_talent_zealot_improved_melee_after_no_ammo_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "打空当前远程武器的一个弹夹后，近战武器攻击的动画速度（同样影响蓄力）增加{attack_speed:%s}，近战武器的踉跄力{impact:%s}，持续{duration:%s}秒，不可叠加" end}, -- impact:+30% attack_speed:+10% duration:5. -- colors and s->seconds
-- {	id = "talent_tree_zea_pas_015_en", -- Dance of Death
	-- loc_keys = {"loc_talent_zealot_improved_spread_post_dodge",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Dance of Death" end},
{	id = "talent_tree_zea_pas_015_desc_en",
	 loc_keys = {"loc_talent_zealot_improved_spread_post_dodge_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "成功闪避敌人锁定玩家的近战或远程攻击后，减少{spread:%s}的远程武器扩散，降低{recoil:%s}远程武器后坐力，持续{duration:%s}秒\n\n{#color(230,60,0)}BUG：闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果{#reset()}" end}, -- spread:-75% recoil:-50% duration:3. -- colors s->seconds
 --{	id = "talent_tree_zea_pas_016_en", -- Duellist
--	 loc_keys = {"loc_talent_zealot_increased_finesse_post_dodge",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "决斗者" end},
 {	id = "talent_tree_zea_pas_016_desc_en",
	 loc_keys = {"loc_talent_zealot_duelist_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "成功闪避敌人锁定玩家的近战或远程攻击后，娴熟伤害增加{damage:%s}（弱点和暴击倍率），持续{duration:%s}秒\n\n{#color(230,60,0)}BUG：不与坚定迅捷联动，闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果{#reset()}\n\n肥鲨的弱点、暴击伤害加成与其他游戏不同，它只计算弱点、暴击的那一部分伤害增幅，这就导致了所有加成弱点伤害、娴熟伤害的技能、祝福，实际增伤效果都非常尴尬\n举例：决斗剑蓄力打硬壳身体253、头627，弱点倍率是2.5\n当你加成50%弱点后：决斗剑蓄力打硬壳身体253、头814，弱点倍率是3.2\n所以50%弱点的实际收益是814÷627=30%" end}, -- damage:+50% duration:3. -- colors s->seconds
-- {	id = "talent_tree_zea_pas_017_en", -- Until Death
	-- loc_keys = {"loc_talent_zealot_resist_death",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Until Death" end},
 {	id = "talent_tree_zea_pas_017_desc_en",
	 loc_keys = {"loc_talent_zealot_resist_death_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家受到致命伤害时会进入伪无敌状态{active_duration:%s}秒，持续时间内玩家生命值不会低于1（不免疫坠崖摔死），冷却时间{cooldown_duration:%s}秒\n\n如果受到腐蚀攻击，还是会扣除生命最大值（紫条）\n\n{#color(230,60,0)}BUG：无敌期间玩家生命值不会少于1，但如果受到医疗箱治疗期间受到攻击，可能会导致玩家生命值低于1然后倒地" end}, -- active_duration:5. cooldown_duration:120. -- colors s->seconds
-- {	id = "talent_tree_zea_pas_018_en", -- Unremitting
--	 loc_keys = {"loc_talent_zealot_reduced_sprint_cost",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "坚持不懈" end},
 {	id = "talent_tree_zea_pas_018_desc_en",
	 loc_keys = {"loc_talent_zealot_reduced_sprint_cost_description",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "跑步体力消耗降低{cost:%s}（乘法叠加）" end}, -- cost:-20%.
-- {	id = "talent_tree_zea_pas_019_en", -- Shield of Contempt
	-- loc_keys = {"loc_talent_zealot_3_tier_4_ability_3",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Shield of Contempt" end},蔑视之盾
{	id = "talent_tree_zea_pas_019_desc_en",
	loc_keys = {"loc_talent_zealot_3_tier_4_ability_3_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当狂信徒或者队友受到生命值伤害时，受到伤害的那个人将会获得{damage_reduction:%s}的韧性与生命全伤害减免（与其他抗性乘法叠加），持续{duration:%s}秒\n\n当技能效果触发时就会进入{cooldown:%s}秒的全局冷却时间\n\n该效果同一时间内只能由一个玩家（机器人）触发，如果有多个狂信都点了这个增益，那么会在有人受到伤害时依次触发，比如A挨打触发一次持续4秒，4秒内再挨打触发第二次（0.4²），第三第四以此类推，不会由单次攻击触发4次减伤\n\n当然如果是类似踩火的频繁攻击，那就差不多等于瞬间触发4次\n\n这个效果在倒地状态下也能触发\n队友触发没有距离限制，并不需要在连携光环内\n\n该技能不会减少挨打的第一次伤害，但是在接下来的技能持续期间内都会有减伤效果，也就是说这其实是鼠疫2的树皮术" end}, -- damage_reduction:+60% duration:4. cooldown:10. -- colors s->seconds
-- {	id = "talent_tree_zea_pas_020_en", -- Thy Wrath be Swift
	-- loc_keys = {"loc_talent_zealot_movement_speed_on_damaged",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Thy Wrath be Swift" end}, 怒火速临
{	id = "talent_tree_zea_pas_020_desc_en",
	loc_keys = {"loc_talent_zealot_movement_speed_on_damaged_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "敌人的近战与远程攻击无法眩晕狂信徒，不会因为普通受击而进入减速异常状态（包括燃烧地面）\n当狂信徒的生命或韧性数值降低时，会增加{movement_speed:%s}移动速度，持续{time:%s}秒\n\n当选择这个被动后，玩手机解密时不会被敌人的攻击打断，使用远程武器持续开火也不会被打断，只有敌人的抓取、击飞（炸飞）效果能打断动作" end}, -- movement_speed:+15% time:2. -- colors s->seconds
{	id = "talent_tree_zea_pas_020_2_desc_en",
	loc_keys = {"loc_talent_zealot_uninterruptible_no_slow_heavies_desc",}, --不屈之志 Unfaltering
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在近战攻击的蓄力阶段，移除移速惩罚，并且让狂信徒进入无法打断、无法眩晕的状态，直到蓄力完成\n\n只有敌人的抓取、击飞（炸飞）效果能打断玩家" end},
{	id = "talent_tree_zea_pas_020_1_desc_en",
	loc_keys = {"loc_talent_zealot_reload_from_backstab_desc",}, --自掏腰包 Out of Pocket
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当选择这个天赋后，可以在你从近战武器切换为远程武器时，将备弹中的弹药转移到武器弹夹中\n\n每当你进行一次近战背刺击杀敌人，就会叠加一层buff，每层buff可以转移当前弹夹的{#color(255,255,140)}{ammo:%s}{#reset()}（最少转移1发），叠加上限{#color(255,255,140)}{stacks:%s}层{#reset()}\n\n装填弹药不会超过弹夹上限；如果备弹中已经没弹药了那就无法装填\n\n{#color(230,60,0)}BUG：肥鲨忘记填写层数限制，理论上杀19~20个就能完全填充弹夹" end}, -- movement_speed:+15% time:2. -- colors s->seconds
{	id = "talent_tree_zea_pas_020_2_desc_en",
	loc_keys = {"loc_talent_zealot_damage_vs_nonthreat_desc",}, --无形之刃 Unseen Blade
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "对一个锁定队友，但没锁定你的敌人进行攻击时，可以对其造成额外{#color(255,255,140)}{damage:%s}{#reset()}伤害（近战、远程、直击、dot都增幅）\n\n没有锁定你这个判定非常简单，很容易达成，但要注意如果敌人处于没有任何仇恨的状态时（游荡逛街没发现你），技能的增伤也不生效" end}, -- movement_speed:+15% time:2. -- colors s->seconds
-- {	id = "talent_tree_zea_pas_021_en", -- Good Balance
	-- loc_keys = {"loc_talent_reduced_damage_after_dodge",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Good Balance" end},
{	id = "talent_tree_zea_pas_021_desc_en",
	loc_keys = {"loc_talent_reduced_damage_after_dodge_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "成功闪避敌人锁定玩家的近战或远程攻击后，获得{damage:%s}韧性与生命值全伤害抗性，持续{duration:%s}秒\n\n{#color(230,60,0)}BUG：闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果" end}, -- damage:+25% duration:2.5. -- colors s->seconds
{	id = "talent_tree_zea_pas_021_1_desc_en", --盛气凌人
	loc_keys = {"loc_talent_zealot_weakspot_damage_reduction_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战或远程造成一次弱点击杀后，获得{#color(255,255,140)}15%{#reset()}韧性与生命值全伤害抗性（乘法叠加），持续{duration:%s}秒" end}, -- damage:+25% duration:2.5. -- colors s->seconds
 --{	id = "talent_tree_zea_pas_022_en", -- Desperation
--	 loc_keys = {"loc_talent_zealot_increased_damage_on_low_stamina",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "背水一战" end},
 {	id = "talent_tree_zea_pas_022_desc_en",
	 loc_keys = {"loc_talent_zealot_increased_damage_on_low_stamina_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家体力耗尽时，近战伤害提高{damage:%s}，持续{duration:%s}秒" end}, -- damage:+20% duration:5. -- colors s->seconds
-- {	id = "talent_tree_zea_pas_023_en", -- Holy Revenant
	-- loc_keys = {"loc_talent_zealot_heal_during_resist_death",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Holy Revenant" end},
{	id = "talent_tree_zea_pas_023_desc_en",
	loc_keys = {"loc_talent_zealot_heal_during_resist_death_clamped_desc",}, --神圣亡魂 Holy Revenant
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当{talent_name:%s}技能效果结束时，你会根据{talent_name:%s}期间造成的伤害恢复健康值\n最多记录10次受到的生命值攻击\n最多恢复上限{max_health:%s}的生命\n\n远程武器伤害的0.7%转化为生命值恢复\n\n近战武器伤害的2.1%转化为生命值恢复" end}, -- talent_name:Until Death max_health:25%. melee_multiplier:3. -- colors
{	id = "talent_tree_zea_pas_023_1_desc_en",
	loc_keys = {"loc_talent_zealot_offensive_vs_many_desc",}, --逆境得胜 Against the Odds
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身{#color(255,255,140)}{range:%s}米{#reset()}半径内，每存在{num_enemies:%s}个敌人，就会增加一层buff\n没有持续时间，敌人死亡或离开buff就会消失，BOSS按一个敌人算\n\n能量{#color(255,255,140)}{damage:%s}{#reset()}（近战、远程、直击、dot）\n近战与远程的劈裂{#color(255,255,140)}{cleave:%s}{#reset()}\n\n叠加上限{#color(255,255,140)}{stacks:%s}层{#reset()}（10%全伤、50%劈裂）\n\n当狂信被控后技能失效（趴下、挂壁、网住、吞了等等）" end}, -- talent_name:Until Death max_health:25%. melee_multiplier:3. -- colors
{	id = "talent_tree_zea_pas_023_2_desc_en",
	loc_keys = {"loc_talent_zealot_damage_based_on_stamina_desc",}, --孤注一掷 Desperation
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据玩家体力增加近战武器直击伤害，体力越低伤害加成越高，每10%体力换2%伤害\n\n体力为100%时伤害加成为0%\n体力为0%时伤害加成为{#color(255,255,140)}{damage:%s}{#reset()}" end}, -- talent_name:Until Death max_health:25%. melee_multiplier:3. -- colors
{	id = "talent_tree_zea_pas_023_3_desc_en",
	loc_keys = {"loc_talent_zealot_revive_speed_desc",}, --神恩庇护 Providence
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "与被绑着、坠崖扒边、倒在地上、被网住的队友，按E时的交互动画加快{revive_speed:%s}\n\n面对被控制的队友时，玩家自身的移动速度加快{movement_speed:%s}\n被控制：彻底死亡后被绑着等待救援、被网住、被狗咬、被变种人抓住、被恶魔宿主抓住、被混沌卵摔打、被混沌卵吞吃、被纳垢兽吞吃的队友、坠崖扒边的队友\n\n被你救起的队友获得韧性与生命的全伤害抗性{#color(255,255,140)}{tdr:%s}{#reset()}（乘法叠加），持续{duration:%s}秒\n\n基础救人时间为3秒\n带3个12%饰品：救人时间从3秒降低至2.23秒，节约0.77秒\n神恩庇护：救人时间从3秒降低至2.5秒，节约0.5秒\n3饰品+神恩庇护：救人时间从3秒降低至1.93秒，节约1.07秒" end}, 
{	id = "talent_tree_zea_pas_023_4_desc_en",
	loc_keys = {"loc_talent_zealot_block_dodging_desc",}, --不痛不痒 Impassible 
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家成功闪避一次敌人的攻击，在闪避期间与闪避后的{linger_time:%s}秒内，格挡体力消耗降低{#color(255,255,140)}{block_cost:%s}{#reset()}（乘法叠加）\n\n完美格挡一次敌人的近战攻击后，玩家自身恢复{#color(255,255,140)}{dodges:%s}{#reset()}次闪避机会\n这一特效的冷却时间为{#color(255,255,140)}{cooldown:%s}秒{#reset()}" end}, 
{	id = "talent_tree_zea_pas_023_5_desc_en",
	loc_keys = {"loc_talent_zealot_stamina_on_block_break_alt_desc",}, --反制护盾 Retaliatory Defence
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "格挡敌人攻击失败后不在眩晕，并且会直接恢复{#color(255,255,140)}{stamina:%s}{#reset()}体力\n这一特效的冷却时间为{#color(255,255,140)}{cooldown:%s}秒{#reset()}\n\n正常情况下格挡失败后体力归零，并且根据敌人攻击力道的不同（小僵尸~罐头），进入0.4~2秒的减速，0.75~1秒的动作禁用眩晕状态。这个天赋相当于无视了动作禁用的眩晕状态，不过减速依然会有" end}, 
{	id = "talent_tree_zea_pas_023_6_desc_en",
	loc_keys = {"loc_talent_zealot_damage_vs_elites_desc",}, --清剿恶党 Abolish Blasphemers
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "对精英敌人造成额外{#color(255,255,140)}{damage:%s}{#reset()}伤害\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}" end},  
-- {	id = "talent_tree_zea_pas_024_en", -- Sainted Gunslinger
	-- loc_keys = {"loc_talent_zealot_increased_reload_speed_on_melee_kills",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "封圣神射手" end},
 {	id = "talent_tree_zea_pas_024_desc_en",
	 loc_keys = {"loc_talent_zealot_increased_reload_speed_on_melee_kills_desc",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "每个近战击杀增加{reload_speed:%s}换弹速度，叠加上限{max_stacks:%s}次\n\n没有持续时间限制，但是换弹一次后失效" end}, -- reload_speed:+3%. max_stacks:10.
-- {	id = "talent_tree_zea_pas_025_en", -- Hammer of Faith
	-- loc_keys = {"loc_talent_zealot_3_tier_1_ability_1",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Hammer of Faith" end},
 {	id = "talent_tree_zea_pas_025_desc_en",
	 loc_keys = {"loc_talent_zealot_3_tier_1_ability_1_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战与远程武器造成的踉跄力增加{stagger:%s}\n\n狂信的技能踉跄比如惩戒30%、重创50%、信仰之锤30%等是加法叠加的，而与武器祝福踉跄效果则是乘法叠加" end}, -- stagger:+30%. -- colors
 --{	id = "talent_tree_zea_pas_026_en", -- Grievous Wounds
	-- loc_keys = {"loc_talent_zealot_increased_stagger_on_weakspot_melee",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "重伤" end},
 {	id = "talent_tree_zea_pas_026_desc_en",
	 loc_keys = {"loc_talent_zealot_increased_stagger_on_weakspot_melee_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战攻击命中弱点后，造成的踉跄效果增加{impact_modifier:%s}\n\n狂信的技能踉跄比如惩戒30%、重创50%、信仰之锤30%等是加法叠加的，而与武器祝福踉跄效果则是乘法叠加" end}, -- impact_modifier:+50%. -- colors
-- {	id = "talent_tree_zea_pas_027_en", -- Ambuscade
--	 loc_keys = {"loc_talent_zealot_increased_flanking_damage",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "伏击" end},
 {	id = "talent_tree_zea_pas_027_desc_en",
	 loc_keys = {"loc_talent_zealot_increased_flanking_damage_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "远程武器对敌人造成的子弹直击背刺伤害提升{damage:%s}，对dot没有加成\n\n背刺并不一定必须在完全正背后，侧身一点的位置也能触发" end}, -- damage:+20%. -- colors
-- {	id = "talent_tree_zea_pas_028_en", -- Punishment 惩戒
	-- loc_keys = {"loc_talent_zealot_multi_hits_increase_impact",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Punishment" end},
 {	id = "talent_tree_zea_pas_028_desc_en",
	 loc_keys = {"loc_talent_zealot_multi_hits_increase_impact_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战攻击命中{min_hits:%s}个以上敌人时，玩家所有攻击动作造成的踉跄效果增加{impact_modifier:%s}，持续{time:%s}秒，最多叠加{max_stacks:%s}次\n\n当叠加至上限时，持续期间内狂信徒的近战攻击不会被打断、不会被敌人的攻击击晕（以及救人、治疗站等操作不会被轻易打断）\n但是不免疫敌人的抓取和击飞效果\n\n狂信的技能踉跄比如惩戒、重创、信仰之锤等是加法叠加的，而与武器祝福踉跄效果则是乘法叠加" end}, -- min_hits:3 impact_modifier:+30% time:5. max_stacks:5. -- colors s->seconds
 --{	id = "talent_tree_zea_pas_029_en", -- Faithful Frenzy
	-- loc_keys = {"loc_talent_zealot_attack_speed",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "信仰狂乱" end},
-- {	id = "talent_tree_zea_pas_029_desc_en",
	-- loc_keys = {"loc_talent_zealot_attack_speed_desc",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "{attack_speed:%s} Melee Attack Speed." end}, -- attack_speed:+10%.
 --{	id = "talent_tree_zea_pas_030_en", -- Sustained Assault
--	 loc_keys = {"loc_talent_zealot_increased_damage_stacks_on_hit",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "持续突击" end},
 {	id = "talent_tree_zea_pas_030_desc_en",
	 loc_keys = {"loc_talent_zealot_increased_damage_stacks_on_hit_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "每次使用近战武器命中敌人，都会增加玩家近战武器伤害加成{damage:%s}，持续{time:%s}秒，最多堆叠{amount:%s}层\n\n不增加debuff持续伤害，对远程武器和投掷武器无效\n\n{#color(230,60,0)}BUG：链锯系武器虽然是多重攻击，但是每次也只能触发一层" end}, -- damage:+4% time:5. amount:5. -- colors s->seconds
-- {	id = "talent_tree_zea_pas_031_en", -- The Master's Retribution
	-- loc_keys = {"loc_talent_zealot_3_tier_3_ability_1",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "The Master's Retribution" end},人类之主的惩罚
{	id = "talent_tree_zea_pas_031_desc_en",
	loc_keys = {"loc_talent_zealot_3_tier_3_ability_1_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "受到近战攻击时，造成{#color(255,255,140)}2.75米{#reset()}半径仅有踉跄效果的爆炸，可击退附近的绝大多数敌人，冷却时间{cooldown:%s}秒\n\n无法踉跄变种人、罐头、BOSS\n踉跄效果与质量有关,弱小敌人变成滚地葫芦、狂战盾卫晃一下\n可以弹开正在啃玩家的狗。但是不能弹开抓玩家的变种人和混沌卵\n\n{#color(230,60,0)}BUG：1.11.4补丁后，如果在技能冷却期间受到狗扑，那么即使技能冷却已经恢复，也无法弹开正在咬玩家的狗{#reset()}" end}, -- cooldown:10. -- s->seconds Notice!
-- {	id = "talent_tree_zea_pas_032_en", -- Faith's Fortitude
--	 loc_keys = {"loc_talent_zealot_3_tier_1_ability_3",},
--	 locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "信仰之勇" end},信仰之毅
 {	id = "talent_tree_zea_pas_032_desc_en",
	 loc_keys = {"loc_talent_zealot_3_tier_1_ability_3_description",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家获得额外{health_segment:%s}个伤口，伤口代表玩家可倒地的次数\n\n伤口会平均玩家血量，比如玩家血量上限为200，有5个伤口，这就代表一格伤口包含40点血量\n\n每当玩家倒地后就会损失一格的血量上限变成紫色，全部损失后死亡\n\n目前这个技能主要是为殉道服务，因为殉道有了5层上限，玩家无需再堆叠7层，所以点了这个技能后，玩家就可以少带1个伤口格子，换成血量格子来增加容错" end}, -- health_segment:+2.
-- {	id = "talent_tree_zea_pas_033_en", -- Swift Certainty
--	 loc_keys = {"loc_talent_zealot_improved_sprint",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "坚定迅捷" end},
 {	id = "talent_tree_zea_pas_033_desc_en",
	 loc_keys = {"loc_talent_zealot_improved_sprint_description",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "按下shift后冲刺的速度提高{speed:%s}，冲刺期间始终算作闪避状态（即韧性伤害降低50%效果），即使体力耗尽依然有效\n\n只增加冲刺的速度，平常走路不加速\n只是单纯的享受韧性减伤，不与其他任何闪避技能、闪避武器祝福联动" end}, -- speed:+10%.


-- ==============================================================VETERAN
-- ==============================================================BLITZ
--____________________________________________________Blitz 0
-- {	id = "talent_tree_vet_blitz_000_en", -- Frag Grenade
	-- loc_keys = {"loc_ability_frag_grenade",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Frag Grenade" end},
{	id = "talent_tree_vet_blitz_000_desc_en",
	loc_keys = {"loc_ability_frag_grenade_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "破片手雷爆炸后造成范围伤害与踉跄\n\n基础伤害：{#color(255,255,140)}500{#reset()}\n\n爆炸核心半径{#color(255,255,140)}2{#reset()}米，最大半径{#color(255,255,140)}10{#reset()}米，压制半径{#color(255,255,140)}15{#reset()}米\n\n爆炸造成半径2米的20点踉跄效果，影响范围最大半径15米，随距离递减" end}, -- Notice!
--____________________________________________________Blitz 1
-- {	id = "talent_tree_vet_blitz1_000_en", -- Shredder Frag Grenade
	-- loc_keys = {"loc_talent_veteran_grenade_apply_bleed",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Shredder Frag Grenade" end},
{	id = "talent_tree_vet_blitz1_000_desc_en",
	loc_keys = {"loc_talent_veteran_grenade_apply_bleed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "投掷一枚{talent_name:%s}\n\n爆炸中心{#color(255,255,140)}2米{#reset()}不衰减基础{#color(255,255,140)}500{#reset()}伤害，边缘衰减{#color(255,255,140)}10米{#reset()}基础{#color(255,255,140)}200{#reset()}伤害（10米处衰减为0），压制半径{#color(255,255,140)}15{#reset()}米\n伤害倍率：无甲狂人100%，感染不屈虚空75%，防弹50%，硬壳20%\n\n手雷爆炸会使半径10米内的敌人进入{stacks:%s}层流血状态\n\n携带上限{#color(255,255,140)}3{#reset()}个\n\n流血上限16层，0.5秒一跳，持续1.5秒（跳3次掉1层），倍率：无甲感染50%，防弹不屈75%，玩家狂人虚空100%，硬壳25%\n\n{#color(230,60,0)}BUG：爆弹手枪的祝福致命距离可以增加25%爆炸范围：爆炸核心半径2→2.5米，最大半径10→12.5米，压制半径15→18.75米" end}, -- stacks:6. talent_name:Frag Grenade. -- colors Notice!
--____________________________________________________Blitz 2
-- {	id = "talent_tree_vet_blitz2_000_en", -- Krak Grenade 穿甲手雷
	-- loc_keys = {"loc_talent_ability_krak_grenade",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Krak Grenade" end},
{	id = "talent_tree_vet_blitz2_000_desc_en",
	loc_keys = {"loc_talent_ability_krak_grenade_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "投掷一枚{talent_name:%s}\n\n在飞行{#color(255,255,140)}0.33{#reset()}秒后开启黏附模式（左键每秒30米，贴脸丢不直击命中粘不上），如果投掷物附近{#color(255,255,140)}3{#reset()}米内有防弹、硬壳、不屈、盾牌词条的敌人部位，会黏附在其身上（蓝针后不管什么敌人全身都变硬壳）\n\n爆炸中心{#color(255,255,140)}1.5米{#reset()}不衰减基础{#color(255,255,140)}2500{#reset()}伤害，边缘衰减{#color(255,255,140)}5米{#reset()}基础{#color(255,255,140)}500{#reset()}伤害（5米处衰减为0），压制半径{#color(255,255,140)}6{#reset()}米\n伤害倍率：防弹不屈硬壳200%，狂人130%，虚空110%，无甲100%，感染75%（对BOSS额外降低20%）\n\n携带上限{#color(255,255,140)}3{#reset()}个\n\n{#color(230,60,0)}BUG：爆弹手枪的祝福致命距离可以增加25%爆炸范围：爆炸核心半径1.5→1.875米，最大半径5→6.25米，压制半径6→7.5米" end}, -- colors Notice!
--____________________________________________________Blitz 3
 --{	id = "talent_tree_vet_blitz3_000_en", -- Smoke Grenade
--	 loc_keys = {"loc_ability_smoke_grenade",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "烟雾手雷" end},烟雾弹
{	id = "talent_tree_vet_blitz3_000_desc_en",
	loc_keys = {"loc_ability_smoke_grenade_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "投掷一枚{talent_name:%s}，在{duration:%s}秒内产生大幅降低视野的烟云，半径{#color(255,255,140)}5.5米{#reset()}\n\n携带上限{#color(255,255,140)}3{#reset()}个\n\n如果远程敌人已经发现玩家，那么烟雾会让这个敌人朝着玩家最后出现的方向继续开火射击，但它无法继续追踪玩家移动后的位置\n\n如果近战敌人已经发现了玩家，那么他会正常冲过来攻击，所以烟雾弹也很难在尸潮救人\n\n{#color(255,155,55)}血痂狙击手{#reset()}无法瞄准与射击烟雾中的玩家\n{#color(255,155,55)}瘟疫猎犬{#reset()}能发现烟雾中的玩家，但是只能绕着烟雾弹跑，无法攻击烟雾中的玩家\n{#color(255,155,55)}血痂喷火兵、渣滓喷火兵、血痂霰弹枪手、渣滓霰弹枪手、血痂陷阱手{#reset()}都能看到烟雾中的玩家，但是必须靠近5米内才开火\n{#color(255,155,55)}变种人、自爆人、毒雷火雷{#reset()}无视烟雾弹\n\n烟雾会降低未醒的普通{#color(255,155,55)}恶魔宿主{#reset()}视野。如果遇到宿主挡路，你可以对他附近丢一个，然后在持续时间内快速通过（但也别靠近2米内会惊醒），也别丢脚下因为爆炸的踉跄可能会惊醒，对突变宿主无效\n\n{#color(230,60,0)}BUG：连长因为缺失怪兽标签，所以当连长手持远程武器时，无法对烟雾中的玩家开火、丢手雷，只会绕着烟雾转圈，这包括了{#color(255,155,55)}渣滓连长、血痂连长、远程双子{#reset()}" end}, -- duration:15. -- colors Notice!


-- ==============================================================AURA
--____________________________________________________Aura 0
-- {	id = "talent_tree_vet_aura_000_en", -- Scavenger
	-- loc_keys = {"loc_talent_veteran_elite_kills_grant_ammo_coop",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Scavenger" end},
-- {	id = "talent_tree_vet_aura_000_desc_en",
	-- loc_keys = {"loc_talent_veteran_elite_kills_grant_ammo_coop_desc",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Replenish {ammo:%s} Ammo for you and Allies in Coherency whenever any of you Kill an Elite or Specialist Enemy." end}, -- ammo:0.75%.
--____________________________________________________Aura 1
-- {	id = "talent_tree_vet_aura_001_en", -- Survivalist
--	 loc_keys = {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "生存专家 生存主义者" end},
{	id = "talent_tree_vet_aura_001_desc_en",
       loc_keys = {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc",},
       locales = {"zh-cn",},
       handle_func = function(locale, value)
       return "注意该光环目前有{#color(255,255,140)}{cooldown:%s}{#reset()}秒的CD\n浩劫40拾取弹药亏60%效果不影响光环\n\n帝国老兵自己，或者帝国老兵的“连携光环”范围内的队友，杀死一个精英或专家敌人时，所有“连携光环”范围内的玩家，都将获得{talent_name:%s}给予的远程武器备弹量上限{ammo_2:%s}的弹药补充\n\n相同光环不叠加，但可以和基础光环加法叠加（0.75+1=1.75%）\n\n只计算当前的备弹量，而不是总弹药量\n举例：弹夹120、备弹120的等离子，总弹药量240。计算击杀一个敌人恢复1.2发弹药，而不是120+120=240的每次击杀恢复2.4弹药\n\n如果恢复量不足1发，比如上面例子的1.2发，就只给玩家1发弹药，剩下的0.2等攒够5次到1发后，再给玩家1发弹药\n\n有效范围包括：{#color(255,155,55)}血痂渣滓炮手、血痂渣滓霰弹枪手、血痂等离子炮手、血痂无线电操作员、血痂渣滓火焰兵、血痂渣滓狂暴者、血痂重锤兵、粉碎者、盾卫、收割者、血痂狙击手、血痂渣滓轰炸者、血痂陷阱手、变种人、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手{#reset()}\n\n{#color(230,60,0)}BUG：1.11.5补丁后，即使队友在光环外的击杀专家精英，光环也会进入CD，并且谁都无法获得弹药恢复" end}, -- ammo:1%. talent_name:Scavenger.
--____________________________________________________Aura 2
-- {	id = "talent_tree_vet_aura_002_en", -- Fire Team
	-- loc_keys = {"loc_talent_veteran_damage_coherency",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Fire Team" end},火力小队
 {	id = "talent_tree_vet_aura_002_desc_en",
	 loc_keys = {"loc_talent_veteran_damage_coherency_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "帝国老兵自己，或者帝国老兵的“连携光环”范围内的队友，全伤害增加{damage:%s}（对dot、爆炸、手雷都生效）" end}, -- damage:+5%. -- colors
--____________________________________________________Aura 3
-- {	id = "talent_tree_vet_aura_003_en", -- Close and Kill
--	 loc_keys = {"loc_talent_veteran_movement_speed_coherency",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "抵近杀敌" end},
 {	id = "talent_tree_vet_aura_003_desc_en",
	 loc_keys = {"loc_talent_veteran_movement_speed_coherency_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "帝国老兵自己，或者帝国老兵的“连携光环”范围内的队友，移动速度增加{movement_speed:%s}" end}, -- movement_speed:+5%.


-- ==============================================================ABILITIES
-- ____________________________________________________Ability 0
-- {	id = "talent_tree_vet_abil_000_en", -- Volley Fire
	-- loc_keys = {"loc_talent_veteran_2_combat_ability",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Volley Fire" end},
-- {	id = "talent_tree_vet_abil_000_desc_en",
	-- loc_keys = {"loc_ability_veteran_base_ability_desc",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Enter Ranged Stance for {duration:%s} seconds. When in Ranged Stance you instantly equip your ranged weapon and deal:\n{damage:%s} Ranged {#color(255, 95, 95)}Damage{#reset()} and\n{weakspot_damage:%s} Ranged Weakspot {#color(255, 95, 95)}Damage{#reset()}. Your Spread & Recoil are also greatly reduced.\n\nBase Cooldown: {cooldown:%s} seconds." end}, -- duration:5. damage:+25% weakspot_damage:+25%. cooldown:25. -- colors s->seconds!
-- ____________________________________________________Ability 1
--{	id = "talent_tree_vet_abil1_000_en", -- Executioner's Stance
	-- loc_keys = {"loc_talent_veteran_combat_ability_elite_and_special_outlines",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "处决者姿态" end},刽子手姿态
{	id = "talent_tree_vet_abil1_000_desc_en",
	loc_keys = {"loc_talent_veteran_ranged_stance_toughness_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用{old_talent_name:%s}进入远程姿态后，你会立即装备远程武器，并且高亮显示当前{#color(255,255,140)}50米{#reset()}内，除了欧格林之外的精英和专家敌人（后续进入50米内的不会高亮）\n\n大招持续{duration:%s}秒并且击杀高亮敌人可以重置大招持续时间（再次高亮当前50米内的敌人）\n\n持续期间每秒恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n免疫敌人近战与远程攻击带来的减速、压制、眩晕\n\n持续期间远程直击伤害增加{damage:%s}（不包括dot、手雷），弱点伤害增加{weakspot_damage:%s}\n远程武器的扩散减少{#color(255,255,140)}38%{#reset()}，后坐减少{#color(255,255,140)}24%{#reset()}，摇摆减少{#color(255,255,140)}60%{#reset()}，对敌人造成踉跄{#color(255,255,140)}+100%{#reset()}\n\n基础冷却时间:{cooldown:%s}秒\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(255, 155, 55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}" end}, -- duration:5. damage:+25% weakspot_damage:+25%. duration:5. cooldown:35. old_talent_name:Volley Fire. -- colors s->seconds
-- ____________________________________________________Ability 1 Modifier 1
 --{	id = "talent_tree_vet_abil1_001_en", -- Enhanced Target Priority
	-- loc_keys = {"loc_talent_veteran_combat_ability_coherency_outlines",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "目标导引增强" end},
 {	id = "talent_tree_vet_abil1_001_desc_en",
	 loc_keys = {"loc_talent_veteran_combat_ability_coherency_outlines_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "{talent_name:%s}的淡黄色精英轮廓效果，现在处于帝国老兵“连携光环”范围内的所有队友都能看到，持续{duration:%s}秒\n\n老兵击杀对应敌人刷新轮廓持续时间时，光环内的队友也能刷新轮廓持续时间" end}, -- talent_name:Executioner's Stance duration:5. -- s->seconds
-- ____________________________________________________Ability 1 Modifier 2
-- {	id = "talent_tree_vet_abil1_002_en", -- Relentless
--	 loc_keys = {"loc_talent_veteran_combat_ability_outlined_kills_extends_duration",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
	---- return "毫不留情" end},
-- {	id = "talent_tree_vet_abil1_002_desc_en",
--	 loc_keys = {"loc_talent_veteran_combat_ability_outlined_kills_extends_duration_description",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "在{talent_name:%s}持续期间击杀高亮目标，会将大招的持续时间恢复至{duration:%s}秒" end}, -- talent_name:Executioner's Stance duration:5. -- s->seconds
-- ____________________________________________________Ability 1 Modifier 3
 ----{	id = "talent_tree_vet_abil1_003_en", -- Counter-Fire
	-- loc_keys = {"loc_talent_veteran_combat_ability_ranged_enemies_outlines",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "火力反击" end},
 {	id = "talent_tree_vet_abil1_003_desc_en",
	 loc_keys = {"loc_talent_veteran_combat_ability_ranged_enemies_outlines_description",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "{talent_name:%s}现在除了精英和专家之外，还会标记除了欧格林之外的所有的远程敌人（血痂枪兵，血痂渣滓潜行者）" end}, -- talent_name:Executioner's Stance.
-- ____________________________________________________Ability 1 Modifier 4
-- {	id = "talent_tree_vet_abil1_004_en", -- The Bigger they Are... 敌人越大
	-- loc_keys = {"loc_talent_ranger_volley_fire_big_game_hunter",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "The Bigger they Are..." end},
 {	id = "talent_tree_vet_abil1_004_desc_en",
	 loc_keys = {"loc_talent_veteran_combat_ability_ogryn_outlines_damage_description",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "{talent_name:%s}的持续时间从6秒延长至{#color(255,255,140)}9{#reset()}秒\n\n高亮效果除了人类体型精英和专家生效外，还可以对以下敌人生效：\n\n{#color(255,155,55)}盾卫、粉碎者、收割者、纳垢兽、混沌卵、恶魔宿主、群兽大师、瘟疫欧格林、渣滓连长、血痂连长、近战双子连长、远程双子连长{#reset()}\n\n{#color(230,60,0)}BUG：高亮效果对纳垢兽不生效，但是击杀纳垢兽可以正常重置大招持续时间" end}, -- talent_name:Executioner's Stance.
-- ____________________________________________________Ability 1 Modifier 5
-- {	id = "talent_tree_vet_abil1_005_en", -- Marksman
	-- loc_keys = {"loc_talent_veteran_ability_marksman",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Marksman" end},
-- {	id = "talent_tree_vet_abil1_005_desc_en",
	-- loc_keys = {"loc_talent_veteran_ability_marksman_desc",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "On Ability use, for {duration:%s} seconds any Weakspot hits gain {power:%s} Power.\n\nWhen using {talent_name:%s}, this is applied after leaving {#color(150, 150, 150)}Stealth{#reset()}." end}, -- duration:10 power:+20%. talent_name:Infiltrate. -- colors s->seconds
-- ____________________________________________________Ability 2
-- {	id = "talent_tree_vet_abil2_000_en", -- Voice of Command
--	 loc_keys = {"loc_talent_veteran_combat_ability_stagger_nearby_enemies",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "发号施令" end},
{	id = "talent_tree_vet_abil2_000_desc_en",
	loc_keys = {"loc_talent_veteran_combat_ability_stagger_nearby_enemies_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "100%补充你的{#color(32,178,170)}韧性{#reset()}，并且踉跄{range:%s}米内包括boss在内的所有敌人2.5秒（不包括有盾的连长），踉跄力会受到武器祝福、专长的加成\n\n基础冷却时间：{cooldown:%s}秒\n\n简单介绍下韧性，韧性会按比例减少你受到的近战伤害\n100%韧性时减伤率是100%，该次伤害只扣除韧性，扣完韧性后才会扣血量\n韧性50%时，伤害分成50%的两段，一段扣韧性、一段扣血量，扣韧性的部分如果还有剩余那么继续扣血量\n\n韧性会100%吸收远程武器伤害，当韧性被打空时才会开始扣除血量\n当玩家韧性被打空的一瞬间，玩家会获得一个远程攻击伤害降低的buff，这个buff会降低玩家接下来受到的远程伤害（对于把玩家打破盾的那一发伤害没有减伤效果）\n减伤效果会随着难度的升高而递减：85%、80%、70%、60%、50%\n敌人远程弹道散步增加：300%、300%、250%、200%、200%\n持续时间会随着难度的升高而递减：2、2、1.5、1.25、1秒\n冷却时间会随着难度的升高而递增：1.5、2、3、5、8" end}, -- range:9. cooldown:30. -- colors m->meters s->seconds
-- ____________________________________________________Ability 2 Modifier 1
-- {	id = "talent_tree_vet_abil2_001_en", -- Duty and Honour
--	 loc_keys = {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "责任与荣耀" end},
{	id = "talent_tree_vet_abil2_001_desc_en",
	loc_keys = {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}现在也为帝国老兵自己，以及帝国老兵的“连携光环”范围内的队友，增加{toughness:%s}点{#color(32,178,170)}韧性{#reset()}，持续{duration:%s}秒，超过最大值的部分会转化为金盾\n老兵金盾不像狂信有75上限，老兵没有上限\n\n当玩家拥有金盾时，就算只有1点（比如上限100，金盾被打的只剩1，1+100=101），也可以用这1点金盾完全抗下粉碎者砸地板、狙击手、自爆人的伤害，虽然清空韧性但不会降低生命值、也不会被腐蚀扣血。如果被打的完全失去金盾，那就是按照正常百分比计算\n\n当你拥有金盾时，你的最大韧性就变成了基础+金盾\n举个例子：你的基础韧性是120点，在120韧性时近战挨打算100%吸收\n当你有了额外50韧时，你需要维持120+50=170韧的时候才算是100%，低于170的时候就按照比例来分担近战伤害" end}, -- talent_name:Voice of Command toughness:+50 duration:15. -- colors s->seconds
-- ____________________________________________________Ability 2 Modifier 2
-- {	id = "talent_tree_vet_abil2_002_en", -- Only In Death Does Duty End
	-- loc_keys = {"loc_talent_veteran_combat_ability_revives",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Only In Death Does Duty End" end}, 只有在死亡时,职责才会终结
{	id = "talent_tree_vet_abil2_002_desc_en",
	loc_keys = {"loc_talent_veteran_combat_ability_revives_new_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}现在可以拉起趴在地上还未死亡的队友（挂墙壁、被网、彻底死亡后被绑住等待救援的都不行）" end}, -- talent_name:Voice of Command range:33% ability_cooldown:50%. -- colors &
-- ____________________________________________________Ability 2 Modifier 3
-- {	id = "talent_tree_vet_abil2_003_en", -- For the Emperor!
--	 loc_keys = {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "为了帝皇!" end},
 {	id = "talent_tree_vet_abil2_003_desc_en",
	 loc_keys = {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "老兵自己，以及帝国老兵的“连携光环”范围内的队友，近战伤害增加{melee_damage:%s}，远程伤害增加{ranged_damage:%s}，持续{duration:%s}秒\n\n对dot和手雷无效" end}, -- melee_damage:+10% ranged_damage:+10% duration:5. -- rewrite colors & s->seconds
-- ____________________________________________________Ability 3
-- {	id = "talent_tree_vet_abil3_000_en", -- Infiltrate
	-- loc_keys = {"loc_talent_veteran_invisibility_on_combat_ability",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Infiltrate" end},--渗透
 {	id = "talent_tree_vet_abil3_000_desc_en",
	 loc_keys = {"loc_talent_veteran_invisibility_on_combat_ability_damage_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "进入{talent_name:%s}状态会补充{#color(255,255,140)}100%{#reset()}{#color(32,178,170)}韧性{#reset()}\n隐身期间与隐身结束后的{#color(255,255,140)}{duration:%s}秒{#reset()}内，玩家伤害提高{#color(255,255,140)}+30%{#reset()}\n隐身期间移动速度{movement_speed:%s}，持续{duration:%s}秒\n除恶魔宿主外，隐身会让敌人立刻丢失老兵的仇恨，转向攻击其他队友\n\n破隐：近战、远程、特殊攻击、丢手雷、拉起倒地的队友后，会立即使你离开隐身状态\n不会破隐：扎针、玩手机、推搡敌人，先丢手雷然后在隐身，手雷触碰敌人以及手雷爆炸都不会使你现形\n\n离开隐身状态会压制帝国老兵9米半径内的敌人\n\n基础冷却时间{cooldown:%s}秒\n\n恶魔宿主现在能看到使用隐身的老兵，避免老兵开怪没打死，恶魔宿主反而去揍队友的问题" end}, -- duration:8. movement_speed:+25%. cooldown:45. -- rewrite colors s->seconds
-- ____________________________________________________Ability 3 Modifier 1
-- {	id = "talent_tree_vet_abil3_001_en", -- Low Profile
--	 loc_keys = {"loc_talent_veteran_reduced_threat_after_combat_ability",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "低调" end},
 {	id = "talent_tree_vet_abil3_001_desc_en",
	 loc_keys = {"loc_talent_veteran_reduced_threat_after_stealth_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "离开潜行后的{duration:%s}秒内，玩家对敌人的威胁降低{threat_multiplier:%s}\n\n通常情况下在战斗中有多个权重因素（例如与敌人的距离、玩家身边有多少敌人、是否被抓、是否被怪物追杀等）用于计算决定敌人对玩家单位目标选择的分数。这个技能提供一个额外的权重乘数，操纵该分数计算以有利于玩家，使玩家更不容易被敌人锁定" end}, -- threat_multiplier:-90% duration:10. -- colors s->seconds
-- ____________________________________________________Ability 3 Modifier 2
-- {	id = "talent_tree_vet_abil3_002_en", -- Overwatch
--	 loc_keys = {"loc_talent_veteran_combat_ability_extra_charge",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "掩护射击" end},
 {	id = "talent_tree_vet_abil3_002_desc_en",
	 loc_keys = {"loc_talent_veteran_combat_ability_extra_charge_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "渗透获得{charges:%s}次额外充能，但是冷却时间延长{ability_cooldown:%s}（延长至 60 秒）" end}, -- charges:+1 ability_cooldown:+33%.
-- ____________________________________________________Ability 3 Modifier 3
-- {	id = "talent_tree_vet_abil3_003_en", -- Hunter's Resolve
	-- loc_keys = {"loc_talent_veteran_toughness_bonus_leaving_invisibility",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Hunter's Resolve" end},
 {	id = "talent_tree_vet_abil3_003_desc_en",
	 loc_keys = {"loc_talent_veteran_toughness_bonus_leaving_invisibility_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "离开{talent_name:%s}后的{duration:%s}秒内，玩家获得{tdr:%s}韧性伤害减免" end}, -- talent_name:Infiltrate tdr:+50% duration:10. -- colors s->seconds
-- ____________________________________________________Ability 3 Modifier 4
-- {	id = "talent_tree_vet_abil3_004_en", -- Surprise Attack
	-- loc_keys = {"loc_talent_veteran_damage_bonus_leaving_invisibility",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "突然袭击" end},
-- {	id = "talent_tree_vet_abil3_004_desc_en",
	-- loc_keys = {"loc_talent_veteran_damage_bonus_leaving_invisibility_desc",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "{talent_name:%s} now also grants {damage:%s} {#color(255, 95, 95)}Damage{#reset()} for {duration:%s} seconds when leaving {#color(150, 150, 150)}Stealth{#reset()}." end}, -- talent_name:Infiltrate damage:+30% duration:5. -- colors s->seconds
-- ____________________________________________________Ability 3 Modifier 5
-- {	id = "talent_tree_vet_abil3_005_en", -- 近战杀伤区 Close Quarters Killzone
	-- loc_keys = {"loc_talent_veteran_ability_assault",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Close Quarters Killzone" end},
 {	id = "talent_tree_vet_abil3_005_desc_en",
	 loc_keys = {"loc_talent_veteran_ability_assault_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "使用大招后，在{duration:%s}秒内获得全局伤害加成，0~12.5米能量加成{power:%s}，12.5~30米加成逐渐降低，30米外失去所有加成效果\n\n在12.5米内可以包括手雷、飞刀、流血、燃烧等效果都增加25%，但是12.5米外完全失去加成\n\n如果大招点了{talent_name:%s}，在隐身消失后才会有伤害加成" end}, -- power:+15% duration:10 talent_name:Infiltrate. -- colors s->seconds


-- ==============================================================KEYSTONES
--____________________________________________________Keystone 1
-- {	id = "talent_tree_vet_keys1_000_en", -- Marksmans Focus
	-- loc_keys = {"loc_talent_veteran_snipers_focus",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Marksman's Focus" end}, 神射手的专注
 {	id = "talent_tree_vet_keys1_000_desc_en",
	 loc_keys = {"loc_talent_veteran_snipers_focus_duration_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "远程弱点击杀获得{stacks:%s}层buff，上限{#color(255,255,140)}10{#reset()}层\n\n每层提升{power:%s}弱点和暴击伤害加成\n每层增加{reload_speed:%s}换弹速度\n\n技能持续持续{#color(255,255,140)}5秒{#reset()}，5秒持续时间结束后只消失1层而不是全部消失\n命中弱点即使没造成击杀也可以重置持续时间" end}, -- stacks:3. power:+7.5% reload_speed:+1%. grace_time:3. grace_time_hit:1. -- colors () s->second/seconds Notice!
--____________________________________________________Keystone 1 Modifier 1
-- {	id = "talent_tree_vet_keys1_001_en", -- Chink in their Armour
	-- loc_keys = {"loc_talent_veteran_snipers_focus_rending_bonus",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Crack in their Armour" end},盔甲裂隙
 {	id = "talent_tree_vet_keys1_001_desc_en",
	 loc_keys = {"loc_talent_veteran_snipers_focus_rending_bonus_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当基石堆叠层数超过{stacks:%s}层的时候，老兵获得{rending:%s}撕裂加成（近战、远程、直击、dot、爆炸都生效）" end},-- colors
--____________________________________________________Keystone 1 Modifier 2
-- {	id = "talent_tree_vet_keys1_002_en", -- Tunnel Vision
	-- loc_keys = {"loc_talent_veteran_snipers_focus_toughness_bonus",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Tunnel Vision" end}, 隧道视野
 {	id = "talent_tree_vet_keys1_002_desc_en",
	loc_keys = {"loc_talent_veteran_snipers_focus_stamina_bonus_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每层可以获得额外{toughness_replenish_multiplier:%s}{#color(32,178,170)}韧性{#reset()}恢复量，可以加成近战击杀、技能、祝福、连携光环的恢复量，比如正常砍死一个恢复5%，10层可以恢复5X1.4=7%\n\n造成远程弱点击杀后还可以恢复{#color(255,255,140)}10%{#reset()}体力" end}, -- toughness_replenish_multiplier:+2.5%. -- colors
--____________________________________________________Keystone 1 Modifier 3
-- {	id = "talent_tree_vet_keys1_003_en", -- Long Range Assassin
	-- loc_keys = {"loc_talent_veteran_snipers_focus_increased_stacks",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Long Range Assassin" end},
-- {	id = "talent_tree_vet_keys1_003_desc_en",
	-- loc_keys = {"loc_talent_veteran_snipers_focus_increased_stacks_description",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Increase Maximum stacks of {#color(122, 66, 122)}Focus{#reset()} from {stacks:%s} to {new_stacks:%s}." end}, -- stacks:10 new_stacks:15. -- colors
--____________________________________________________Keystone 1 Modifier 4
-- {	id = "talent_tree_vet_keys1_004_en", -- Camouflage
	-- loc_keys = {"loc_talent_veteran_snipers_focus_stacks_on_still",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Camouflage" end},
-- {	id = "talent_tree_vet_keys1_004_desc_en",
	-- loc_keys = {"loc_talent_veteran_snipers_focus_stacks_on_still_description",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Gain {stack:%s} stack of {#color(122, 66, 122)}Focus{#reset()} every {time:%s} seconds when standing still or walking when crouched." end}, -- stack:1 time:0.75. -- colors () s->seconds
--____________________________________________________Keystone 2
-- {	id = "talent_tree_vet_keys2_000_en", -- Focus Target!
	-- loc_keys = {"loc_talent_veteran_improved_tag",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Focus Target!" end}, --聚焦目标
 {	id = "talent_tree_vet_keys2_000_desc_en",
	 loc_keys = {"loc_talent_veteran_improved_tag_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家主动标记敌人时，会使用所有充能为敌人添加易伤效果，敌人受到的所有伤害都会获得增幅，同时充能回归为{#color(255,255,140)}1层{#reset()}继续缓慢叠加\n标记持续{#color(255,255,140)}25秒{#reset()}，或你再次标记其他敌人\n叠加上限{max_stacks:%s}层，每层{damage:%s}易伤效果\n每隔{time:%s}秒恢复一层充能\n\n因为内部是乘法叠加，所以叠满4层的伤害是1.05⁴=1.22，6层是1.05⁶=1.34\n\n当你标记第二个敌人时，第一次的标记增伤失效，第二个敌人会以你目前的充能层数来标记\n\n{#color(230,60,0)}BUG：牢兵中基石标记会和狗标记冲突，法务标记让狗咬的目标，如果牢兵标记，可能会让狗脱离锁定去找别的敌人，当然已经开始咬就不会松口{#reset()}" end}, -- time:2 max_stacks:5. damage:+4%. -- colors () s->seconds
--____________________________________________________Keystone 2 Modifier 1
-- {	id = "talent_tree_vet_keys2_001_en", -- Target Down!
	-- loc_keys = {"loc_talent_veteran_improved_tag_dead_bonus",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Target Down!" end},
-- {	id = "talent_tree_vet_keys2_001_desc_en",
	-- loc_keys = {"loc_talent_veteran_improved_tag_dead_bonus_description",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "If an Enemy you have Tagged dies, replenish {toughness:%s} {#color(0, 206, 209)}Toughness{#reset()} and {stamina:%s} Stamina for each stack of {#color(66, 155, 155)}Focus Target{#reset()} applied to you and Allies in Coherency." end}, -- toughness:5% stamina:5%. -- colors
--____________________________________________________Keystone 2 Modifier 2
-- {	id = "talent_tree_vet_keys2_002_en", -- 重定向火力Redirect Fire!
	-- loc_keys = {"loc_talent_veteran_improved_tag_dead_coherency_bonus",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Redirect Fire!" end},
 {	id = "talent_tree_vet_keys2_002_desc_en",
	 loc_keys = {"loc_talent_veteran_improved_tag_dead_coherency_bonus_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当你标记的敌人死亡时（你或队友击杀，甚至敌人间的友伤击杀都算），你和连携光环范内的队友，每层标记都可获得{damage:%s}的能量加成（近战、远程、dot全伤害加成）\n持续{duration:%s}秒\n\n重复获取buff效果：\n\n高层级覆盖低层级——比如当前你有1层定向buff，有个被你标记4层的敌人死了，此时你的定向buff会被覆盖到4层\n\n重置持续时间——比如当前你有4层buff，你击杀了一个1层标记的敌人，此时你的重复获得buff时，不会变回1层，而是维持4层，持续时间变回10秒\n\n{#color(230,60,0)}BUG：联机期间，如果队友也是中线牢兵，并且你俩一个是4层、一个是6层，那么你们俩的重定向火力不会相互覆盖，而是同时出现俩图标，技能加法叠加到10层（25%）" end}, -- damage:+1.5%. duration:10. -- colors s->seconds
--____________________________________________________Keystone 2 Modifier 3
-- {	id = "talent_tree_vet_keys2_003_en", -- 集中火力Focussed Fire
	-- loc_keys = {"loc_talent_veteran_improved_tag_more_damage",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Focussed Fire" end},
 --{	id = "talent_tree_vet_keys2_003_desc_en",
	 --loc_keys = {"loc_talent_veteran_improved_tag_more_damage_description",},
	--locales = {"zh-cn",},
	 --handle_func = function(locale, value)
	 --return "聚焦目标的最大叠加层数变为{max_stacks:%s}层" end}, -- max_stacks:8. -- colors
--____________________________________________________Keystone 3
-- {	id = "talent_tree_vet_keys3_000_en", -- Weapons Specialist
	-- loc_keys = {"loc_talent_veteran_weapon_switch",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Weapons Specialist" end}, 武器专家
 {	id = "talent_tree_vet_keys3_000_desc_en",
	 loc_keys = {"loc_talent_veteran_weapon_switch_new_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "使用近战武器击杀敌人\n每个击杀都会为你叠加1层远程专家buff，叠加上限{ranged_stacks:%s}层\n每个击杀都会为你叠加1层远程暴击buff，叠加上限{#color(255,255,140)}3层{#reset()}\n\n当你从近战武器切换至远程武器时，会激活远程专家buff：\n在{ranged_duration:%s}秒内，每层buff{ranged_attack_speed:%s}远程攻速、{#color(255,255,140)}+2%{#reset()}换弹速度，每层暴击buff在玩家第一次射击时会获得{ranged_crit_chance:%s}远程暴击率\n\n使用远程武器击杀敌人\n每个击杀都会为你叠加1层近战专家buff，叠加上限{melee_stacks:%s}层\n\n当你从远程武器切换至近战武器时，会激活近战专家buff：\n在{melee_duration:%s}秒内，每层buff{melee_attack_speed:%s}近战攻速，每层buff+{dodge_modifier:%s}闪避速度和闪避距离\n\n这个天赋在判定是否有效叠加层数，是以敌人因玩家而死的时候（比如流血燃烧dot或者坠落），玩家当前手持的武器是近战还是远程，当然如果玩家手里拿的是手雷、针、弹药箱则不叠加任何层数。游戏中的绝大部分天赋、祝福，都只看直击击杀的那一下用的是什么武器，除非特别说明，否则流血、魂火、燃烧、电击这些dot打死的敌人，享受不到武器祝福之类的效果加成" end}, -- ranged_stacks:10. melee_stacks:1. ranged_attack_speed:+2% ranged_crit_chance:+33%. ranged_duration:5. melee_attack_speed:+15% dodge_modifier:10%. melee_duration:10. -- colors ()  s->seconds
--____________________________________________________Keystone 3 Modifier 1
-- {	id = "talent_tree_vet_keys3_001_en", -- Always Prepared
	-- loc_keys = {"loc_talent_veteran_weapon_switch_replenish_ammo",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Always Prepared" end},
 {	id = "talent_tree_vet_keys3_001_desc_en", --Always Prepared 时刻准备
	 loc_keys = {"loc_talent_veteran_weapon_switch_replenish_ammo_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当你切换至远程武器时，如果有至少1层的远程专家buff，每层远程专家buff都会从备弹中，转移当前远程武器弹夹{ammo:%s}的子弹，到玩家当前装备的远程武器中\n\n叠满10层时恢复当前弹夹33%的弹药，比如等离子弹夹为135发，当弹夹打空为0的时候，可以恢复135X0.33=44.55发→45发\n\n但是如果当然弹夹中已经有了弹药，那么就是按照弹夹总数减去当前弹药的33%。比如等离子弹夹为135发，当弹夹剩余45发的时候，可以恢复（135-45）X0.33=29.7发→30发弹药" end}, -- ammo:3.3%.  colors
--____________________________________________________Keystone 3 Modifier 2
-- {	id = "talent_tree_vet_keys3_002_en", -- Invigorated
	-- loc_keys = {"loc_talent_veteran_weapon_switch_replenish_stamina",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Invigorated" end},
-- {	id = "talent_tree_vet_keys3_002_desc_en",
	-- loc_keys = {"loc_talent_veteran_weapon_switch_replenish_stamina_description",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Activating {#color(128, 66, 66)}Melee Specialist{#reset()} restores {stamina:%s} Stamina." end}, -- stamina:20%. -- colors
--____________________________________________________Keystone 3 Modifier 3
-- {	id = "talent_tree_vet_keys3_003_en", -- On Your Toes
	-- loc_keys = {"loc_talent_veteran_weapon_switch_replenish_toughness",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "On Your Toes" end},
-- {	id = "talent_tree_vet_keys3_003_desc_en",
	-- loc_keys = {"loc_talent_veteran_weapon_switch_replenish_toughness_description",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Activating {#color(128, 66, 66)}Melee Specialist{#reset()} and {#color(66, 66, 128)}Ranged Specialist{#reset()} replenishes {toughness:%s} {#color(0, 206, 209)}Toughness{#reset()}. {cooldown:%s} seconds Cooldown for each." end}, -- toughness:20%. cooldown:3. -- colors s->seconds
--____________________________________________________Keystone 3 Modifier 4
-- {	id = "talent_tree_vet_keys3_004_en", -- Fleeting Fire
	-- loc_keys = {"loc_talent_veteran_weapon_switch_reload_speed",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Fleeting Fire" end},
-- {	id = "talent_tree_vet_keys3_004_desc_en",
	-- loc_keys = {"loc_talent_veteran_weapon_switch_reload_speed_description",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Activating {#color(66, 66, 128)}Ranged Specialist{#reset()} grants {reload_speed:%s} Reload Speed for {duration:%s} seconds." end}, -- reload_speed:20% duration:5. -- colors s->seconds
--____________________________________________________Keystone 3 Modifier 5
-- {	id = "talent_tree_vet_keys3_005_en", -- Conditioning
	-- loc_keys = {"loc_talent_veteran_weapon_switch_stamina_reduction",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Conditioning" end},
-- -- {	id = "talent_tree_vet_keys3_005_desc_en",
	-- loc_keys = {"loc_talent_veteran_weapon_switch_stamina_reduction_description",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Activating {#color(128, 66, 66)}Melee Specialist{#reset()} grants {stamina_reduction:%s} Stamina Cost Reduction for {duration:%s} seconds." end}, -- stamina_reduction:25% duration:3. -- colors s->seconds

-- ==============================================================PASSIVES
 --{	id = "talent_tree_vet_pas_000_en", -- Longshot
--	 loc_keys = {"loc_talent_veteran_increased_damage_based_on_range",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "远射" end},
{	id = "talent_tree_vet_pas_000_desc_en",
	loc_keys = {"loc_talent_veteran_increased_damage_based_on_range_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "远程直击伤害随距离的增加而增强\n{#color(255,255,140)}0~{ranged_close:%s}米{#reset()}内增加{#color(255,255,140)}{ranged_damage:%s}{#reset()}伤害\n{#color(255,255,140)}12.5~{ranged_far:%s}米{#reset()}伤害逐渐递增，30米处增伤达到最大值{#color(255,255,140)}{max_ranged_damage:%s}{#reset()}，30米外仍有25%伤害加成" end}, -- max_damage:+20%. -- colors Notice!
-- {	id = "talent_tree_vet_pas_001_en", -- Close Order Drill
--	 loc_keys = {"loc_talent_veteran_toughness_damage_reduction_per_ally",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "密集队形训练" end},
 {	id = "talent_tree_vet_pas_001_desc_en",
	 loc_keys = {"loc_talent_veteran_toughness_damage_reduction_per_ally_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "在连携状态下，盟友越多，韧性伤害减免越高，三个队友都在身边的时候，帝国老兵自身的韧性伤害抗性增加{toughness:%s}（乘法叠加）\n单人无加成，2人11%，3人22%\n\n老兵1级就拥有的两个被动：\n掩体视觉\n当老兵蹲伏在一个足够遮掩其身体的掩体时，如果手持远程武器进行瞄准（自动手枪和等离子除外），玩家可以获得短暂的探头视野查看外部环境，这个动作不会让玩家真的探头遭到攻击\n\n压制免疫\n现在是被动技能了，正常情况下敌人的远程射击会导致玩家手持远程武器时，镜头乱晃无法瞄准，开火子弹乱飞，而现在老兵完全免疫这个debuff" end}, -- toughness:+33%. -- colors
 --{	id = "talent_tree_vet_pas_002_en", -- Vanguard
--	 loc_keys = {"loc_talent_veteran_reduce_sprinting_cost",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "先锋" end},
 --{	id = "talent_tree_vet_pas_002_desc_en",
--	 loc_keys = {"loc_talent_veteran_reduce_sprinting_cost_desc",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "跑步体力消耗降低{sprinting:%s}" end}, -- sprinting:-20%.
 {	id = "loc_talent_veteran_reduce_swap_time_desc_en", --快手
	 loc_keys = {"loc_talent_veteran_reduce_swap_time_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家在1、2、3、4、5数字间切换装备的速度加快{#color(255,255,140)}50%{#reset()}\n\n比如掏出爆弹枪1.25÷1.5=0.83秒\n卢修斯从0.83降低至0.5秒\n\n其他武器装备相对来说加成不明显" end}, -- sprinting:-20%.
 --{	id = "talent_tree_vet_pas_003_en", -- Exhilarating Takedown
--	 loc_keys = {"loc_talent_veteran_toughness_on_weakspot_kill",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "振奋击倒" end},毙敌亢奋
 {	id = "talent_tree_vet_pas_003_desc_en",
	 loc_keys = {"loc_talent_veteran_toughness_on_weakspot_kill_alt_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家使用远程武器造成弱点击杀时，自身恢复{toughness:%s}的{#color(32,178,170)}韧性{#reset()}\n\n获得{toughness_damage_reduction:%s}韧性伤害抗性（乘法叠加，3层27.1%），最多叠加{stacks:%s}层，持续{duration:%s}秒\n\n每隔{#color(255,255,140)}8{#reset()}秒只会降低一层，而不是直接消失全部层数\n\n10层隧道视野可以将恢复量提升至15X1.4=21" end}, -- toughness:15% toughness_damage_reduction:+10% duration:8. stacks:3. -- colors s->seconds
 --{	id = "talent_tree_vet_pas_004_en", -- Volley Adept
--	 loc_keys = {"loc_talent_veteran_reload_speed_on_elite_kill",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "齐射能手" end},
 {	id = "talent_tree_vet_pas_004_desc_en",
	 loc_keys = {"loc_talent_veteran_reload_speed_on_elite_kill_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "以任意方式击杀精英或专家敌人后，换弹速度加快{reload_speed:%s}，换弹完成后buff消失\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(255,155,55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}" end}, -- reload_speed:+30%. -- &
-- {	id = "talent_tree_vet_pas_005_en", -- Charismatic
	-- loc_keys = {"loc_talent_veteran_increased_aura_radius",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Charismatic" end},
-- {	id = "talent_tree_vet_pas_005_desc_en",
--	 loc_keys = {"loc_talent_veteran_increased_aura_radius_description",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "帝国老兵的连携光环范围扩大{radius:%s}，从基础8米提升至12米\n\n队友的光环仍然是8米，你必须靠近队友8米内才能享受队友光环的效果" end}, -- radius:+50%. -- Notice!
-- {	id = "talent_tree_vet_pas_006_en", -- Confirmed Kill
	-- loc_keys = {"loc_talent_veteran_toughness_on_elite_kill",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Confirmed Kill" end},
 {	id = "talent_tree_vet_pas_006_desc_en",
	 loc_keys = {"loc_talent_veteran_toughness_on_elite_kill_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "击杀精英或专家级敌人时，瞬间补充{toughness:%s}的{#color(32,178,170)}韧性{#reset()}，并且在{duration:%s}秒内以每秒2%的速度持续恢复{toughness_over_time:%s}的{#color(32,178,170)}韧性{#reset()}\n\n每秒{#color(255,255,140)}2%{#reset()}的恢复效果可以多次叠加，不过游戏UI最多显示15个buff图标" end}, -- toughness:10% toughness_over_time:20% duration:10. -- colors s->seconds
-- {	id = "talent_tree_vet_pas_007_en", -- Tactical Reload
	-- loc_keys = {"loc_talent_ranger_reload_speed_empty_mag",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Tactical Reload" end},
-- {	id = "talent_tree_vet_pas_007_desc_en",
	-- loc_keys = {"loc_talent_veteran_reload_speed_non_empty_mag_desc",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "{reload_speed:%s} Reload Speed if your weapon contains Ammo." end}, -- reload_speed:+20%.
-- {	id = "talent_tree_vet_pas_008_en", -- Out for Blood
	-- loc_keys = {"loc_talent_veteran_all_kills_replenish_toughness",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Out for Blood" end},
 {	id = "talent_tree_vet_pas_008_desc_en",
	 loc_keys = {"loc_talent_veteran_all_kills_replenish_toughness_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家造成的任何击杀都将额外恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n使用手雷、流血dot等击杀恢复5%\n使用近战击杀恢复5+5=10%韧性" end}, -- toughness:3.5%. -- colors
 --{	id = "talent_tree_vet_pas_009_en", -- Get Back in the Fight!
	-- loc_keys = {"loc_talent_veteran_movement_speed_on_toughness_broken",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "重投战斗!" end},
 {	id = "talent_tree_vet_pas_009_desc_en",
	 loc_keys = {"loc_talent_veteran_movement_bonus_on_toughness_broken_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当韧性被打空的时候，玩家立刻恢复{stamina_percent:%s}的体力，并且在{duration:%s}秒内免疫减速、眩晕效果\n\n基础冷却时间：{cooldown:%s}秒\n\n实际上它的免疫减速，是为老兵自身增加了一个持续5秒，每秒+12%移速的效果，用来抵消移速惩罚，不被打断的穿越火焰地板" end}, -- duration:6 stamina_percent:+50%. cooldown:30. -- colors & s->seconds
-- {	id = "talent_tree_vet_pas_010_en", -- Catch a Breath 宁神喘气
	-- loc_keys = {"loc_talent_veteran_replenish_toughness_outside_melee",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Catch a Breath" end}, 凝神喘气
 {	id = "talent_tree_vet_pas_010_desc_en",
	 loc_keys = {"loc_talent_veteran_replenish_toughness_outside_melee_hit_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家在{#color(255,255,140)}5秒{#reset()}内没有受到过近战攻击时，每秒恢复{toughness:%s}的{#color(32,178,170)}韧性{#reset()}\n\n10层隧道视野可以将恢复量提升至5X1.4=7%\n\n{#color(230,60,0)}BUG：即使成功格挡敌人攻击，100%韧性时近战挨打，都会导致技能中断\n\n{#color(230,60,0)}BUG：该技能图标在联机时可能因为网络问题而永远存在，但是挨打后仍然会中断5秒" end}, -- toughness:5% range:8. -- colors m->meters
 --{	id = "talent_tree_vet_pas_011_en", -- Grenade Tinkerer
--	 loc_keys = {"loc_talent_veteran_improved_grenades",},
--	 locales = {"zh-cn",},
	-- handle_func = function(locale, value)
--	 return "手雷匠师" end},
{	id = "talent_tree_vet_pas_011_desc_en",
	loc_keys = {"loc_talent_veteran_improved_grenades_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "改进你选择的手榴弹\n\n{krak_grenade:%s}：爆炸伤害增加{krak:%s}\n\n{frag_grenade:%s}：爆炸伤害增加{frag_damage:%s}\n最大伤害范围从2米提升至2.5米\n最大覆盖范围从10米提升至12.5米\n流血覆盖范围从10米提升至12.5米\n压制半径从15米提升至18.75米\n\n{smoke_grenade:%s}：烟雾弹持续时间增加{smoke:%s}，从15秒提升至30秒\n\n{#color(230,60,0)}BUG：爆弹手枪的祝福致命距离可以增加25%爆炸范围：爆炸核心半径2.5→3.125米，最大半径10→15.625米，压制半径15→23.4375米" end}, -- krak_grenade:Krak Grenade krak:+50%. frag_grenade:Frag Grenade frag_damage:+25%. smoke_grenade:Smoke Grenade smoke:+100%. -- colors
 --{	id = "talent_tree_vet_pas_012_en", -- Covering Fire
--	 loc_keys = {"loc_talent_veteran_replenish_toughness_and_boost_allies",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "火力掩护" end},
{	id = "talent_tree_vet_pas_012_desc_en",
	loc_keys = {"loc_talent_veteran_replenish_toughness_and_boost_allies_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你用远程武器击杀一个以自己为中心8米外的敌人时，被击杀单位的{radius:%s}米内，所有的盟友都将补充{toughness:%s}的{#color(32,178,170)}韧性{#reset()}\n\n使受益的玩家在{duration:%s}秒内所有伤害增加{base_damage:%s}（和其他增伤技能加法叠加，和武器祝福乘法叠加）\n\n10层隧道视野可以将恢复量提升至15X1.4=21" end}, -- radius:5 toughness:15% base_damage:+10% duration:3. -- colors & s->seconds
-- {	id = "talent_tree_vet_pas_013_en", -- Serrated Blade
--	 loc_keys = {"loc_talent_veteran_hits_cause_bleed",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "锯齿刀刃" end},
 {	id = "talent_tree_vet_pas_013_desc_en",
	 loc_keys = {"loc_talent_veteran_hits_cause_bleed_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战命中目标时会造成{stacks:%s}层出血效果" end}, -- stacks:1. -- colors
-- {	id = "talent_tree_vet_pas_014_en", -- Agile Engagement
--	 loc_keys = {"loc_talent_veteran_kill_grants_damage_to_other_slot",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "灵活接敌" end},
 {	id = "talent_tree_vet_pas_014_desc_en",
	 loc_keys = {"loc_talent_veteran_kill_grants_damage_to_other_slot_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家使用近战或远程武器击杀敌人后，另一把武器的伤害提高{damage:%s}，持续{duration:%s}秒\n\n手雷击杀敌人不会增加近战、远程武器的伤害，同样近战远程武器造成的击杀也不会增幅手雷伤害\n增幅伤害不包括任何dot" end}, -- damage:+25% duration:5. -- colors s->seconds
 --{	id = "talent_tree_vet_pas_015_en", -- Kill Zone
--	 loc_keys = {"loc_talent_veteran_ranged_power_out_of_melee",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "杀戮地带" end},
{	id = "talent_tree_vet_pas_015_desc_en",
	loc_keys = {"loc_talent_veteran_ranged_power_out_of_melee_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家在{#color(255,255,140)}{cooldown:%s}{#reset()}秒内没有受到过近战攻击时，远程武器直击伤害增加{ranged_damage:%s}（不加成dot和爆炸）\n\n{#color(230,60,0)}BUG：即使成功格挡敌人攻击也会导致技能进入CD，100%韧性时近战挨打也会进入CD" end}, -- ranged_damage:+15% radius:8. -- colors m->meters
-- {	id = "talent_tree_vet_pas_016_en", -- Opening Salvo
--	 loc_keys = {"loc_talent_veteran_bonus_crit_chance_on_ammo",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "首轮齐射" end},
 {	id = "talent_tree_vet_pas_016_desc_en",
	 loc_keys = {"loc_talent_veteran_bonus_crit_chance_on_ammo_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "弹夹的前{ammo:%s}弹药拥有额外{crit_chance:%s}暴击几率加成" end}, -- ammo:10% crit_chance:+10%. -- colors
 --{	id = "talent_tree_vet_pas_017_en", -- Field Improvisation
--	 loc_keys = {"loc_talent_veteran_better_deployables",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "临场发挥" end},
{	id = "talent_tree_vet_pas_017_desc_en",
	loc_keys = {"loc_talent_veteran_better_deployables_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "拾取弹药箱除了{#color(255,255,140)}100%{#reset()}补充弹药外，还可以{#color(255,255,140)}100%{#reset()}恢复手雷的数量\n浩劫40扣60%弹药的效果，会同样影响手雷获取量\n\n医疗包的治疗速度加快{damage_heal:%s}，从每秒玩家血量上限的6%提升至{#color(255,255,140)}12%{#reset()}，注意医疗箱的储量是{#color(255,255,140)}500{#reset()}血，而且放下{#color(255,255,140)}5{#reset()}分钟后就没了\n治疗会清除当前伤口的腐化，但无法超过当前伤口\n以每秒{toughness:%s}的速度恢复韧性（即使满血也会持续补充，补充韧性不会消耗治疗量）\n\n只要有一个玩家带这个被动，所有玩家拾取的弹药箱、医疗包都会有这个效果，但是带被动的玩家死了就没效果了\n\n魔法书每本固定涨40点腐蚀，每隔10秒造成1.2腐蚀的效果，如果你捡了书立马撕掉，恢复的30~35腐蚀甚至能修复一个伤口，这是4人团队都能享受的\n\n{#color(230,60,0)}BUG：如果队友携带魔法书，医疗箱会快速消耗掉" end}, -- damage_heal:+100% toughness:1%. -- colors &
 --{	id = "talent_tree_vet_pas_018_en", -- Twinned Blast
--	 loc_keys = {"loc_talent_veteran_extra_grenade_throw_chance",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "双响炮" end},
-- {	id = "talent_tree_vet_pas_018_desc_en",
--	 loc_keys = {"loc_talent_veteran_extra_grenade_throw_chance_desc",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "玩家在投掷手雷的时，有{chance:%s}几率以V形投出两颗手雷，只消耗1枚库存" end}, -- chance:20%. -- ()
-- {	id = "talent_tree_vet_pas_019_en", -- Demolition Stockpile
--	 loc_keys = {"loc_talent_ranger_replenish_grenade",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "爆破储备" end},
{	id = "talent_tree_vet_pas_019_desc_en",
	 loc_keys = {"loc_talent_veteran_grenade_regeneration_per_grenade_desc",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "每隔{#color(255,255,140)}{smoke_time:%s}{#reset()}秒补充{#color(255,255,140)}{amount:%s}{#reset()}枚{smoke_grenade:%s}\n每隔{#color(255,255,140)}{frag_time:%s}{#reset()}秒补充{#color(255,255,140)}{amount:%s}{#reset()}枚{frag_grenade:%s}\n每隔{#color(255,255,140)}{krak_time:%s}{#reset()}秒补充{amount:%s}枚{krak_grenade:%s}" end}, -- amount:1 time:60. -- () s->seconds
 --{	id = "talent_tree_vet_pas_020_en", -- Grenadier
--	 loc_keys = {"loc_talent_veteran_extra_grenade",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "掷弹兵" end},
 {	id = "talent_tree_vet_pas_020_desc_en",
	 loc_keys = {"loc_talent_veteran_extra_grenade_and_throw_chance_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "手雷携带上限增加{ammo:%s}颗\n每次投掷手雷，有{#color(255,255,140)}{chance:%s}{#reset()}几率额外投掷一颗手榴弹，白送的这一发手雷不消耗你的库存，随机以V形向左或右方射出\n\nBUG：1.11.6补丁后出现，以女武神飞船过场动画的方式进入副本，而不是以倒计时60秒的方式进入副本时，携带上限+1会失效，变成只有3颗雷而不是4颗雷进图，当然上限依然是4个" end}, -- ammo:1. -- ()
 --{	id = "talent_tree_vet_pas_021_en", -- Leave No One Behind
	-- loc_keys = {"loc_talent_veteran_movement_speed_towards_downed",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "不抛弃，不放弃" end},
{	id = "talent_tree_vet_pas_021_desc_en",
	loc_keys = {"loc_talent_veteran_movement_speed_towards_downed_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "与被绑着、坠崖扒边、倒在地上、被网住的队友，按E时的交互动画加快{revive_speed:%s}\n\n玩家以正面120°向着被控制的队友移动时，玩家自身的移动速度加快{movement_speed:%s}\n被控制：彻底死亡后被绑着等待救援、被网住、被狗咬、被变种人抓住、被恶魔宿主抓住、被混沌卵摔打、被混沌卵吞吃、被纳垢兽吞吃的队友、坠崖扒边的队友\n\n被你救起的队友获得韧性与生命的全伤害抗性{damage_reduction:%s}（乘法叠加），持续{duration:%s}秒\n\n基础救人时间为3秒\n\n正常玩家刚加入游戏、被捆绑后拉起来时，有3秒的宽限期，1秒内100%无敌，2~3秒有50%血量减伤和75%韧性减伤，这个天赋会在前三秒增强这个被动效果\n带3个12%饰品：救人时间从3秒降低至2.23秒，节约0.77秒，解网从1秒降低至0.74秒\n3饰品+老兵不抛弃不放弃：救人时间从3秒降低至1.92秒，解网从1秒降低至0.64秒" end}, -- revive_speed:+20%. movement_speed:+20%. damage_reduction:+33% duration:5. -- colors & s->seconds
-- {	id = "talent_tree_vet_pas_022_en", -- Precision Strikes
--	 loc_keys = {"loc_talent_veteran_increased_weakspot_damage",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "精准打击" end},
 {	id = "talent_tree_vet_pas_022_desc_en",
	 loc_keys = {"loc_talent_veteran_increased_weakspot_damage_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "使用近战或远程武器，对敌人的弱点造成的伤害提升{damage:%s}\n\n肥鲨的弱点、暴击伤害加成与其他游戏不同，它只计算弱点、暴击的那一部分伤害增幅，这就导致了所有加成弱点伤害、娴熟伤害的技能、祝福，实际增伤效果都非常尴尬\n举例：动力剑打不屈身体67、头99，弱点倍率是1.5\n当你加成30%弱点后：动力剑打不屈身体67、头109，弱点倍率是1.62\n所以30%弱点的实际收益是109÷99=10%" end}, -- damage:+30%. -- colors
-- {	id = "talent_tree_vet_pas_023_en", -- Deadshot
	-- loc_keys = {"loc_talent_ranged_ads_drains_stamina_boost",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Deadshot" end},
{	id = "talent_tree_vet_pas_023_desc_en",
	loc_keys = {"loc_talent_veteran_ads_drains_stamina_boost_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用等离子以外的远程武器，在右键瞄准期间获得以下加成：\n暴击几率增加{crit_chance:%s}\n晃动减少{sway_reduction:%s}，子弹扩散减少{#color(255,255,140)}25%{#reset()}\n后坐力减少{#color(255,255,140)}25%{#reset()}\n晃动减少{#color(255,255,140)}50%{#reset()}\n\n按住右键会以每秒{stamina:%s}的速度损失体力\n每次开火损失{stamina_per_shot:%s}的体力\n\n当体力为0时，该天赋失效" end}, -- crit_chance:+25% sway_reduction:+60% stamina:0.75 stamina_per_shot:0.25. -- rewrite colors & on_Aim!
-- {	id = "talent_tree_vet_pas_024_en", -- Born Leader
--	 loc_keys = {"loc_talent_veteran_allies_share_toughness",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "天生领袖" end},
 {	id = "talent_tree_vet_pas_024_desc_en",
	 loc_keys = {"loc_talent_veteran_allies_share_toughness_coherency_increase_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "帝国老兵的连携光环范围增加{#color(255,255,140)}{radius:%s}{#reset()}，从8米增加至{#color(255,255,140)}12米{#reset()}\n\n帝国老兵“连携光环”中的队友，可以享受到帝国老兵从各种方式中获得{#color(32,178,170)}韧性{#reset()}的{toughness:%s}，包括不限于近战击杀、武器祝福、天赋恢复、连携光环等\n比如连携恢复，假如玩家连携韧性恢复量是10，在100%韧性以下的时候，每秒会额外给光环内所有队友每人2.5的韧性。但玩家韧性恢复至100%时，连携恢复效果会被禁用，但其他方式获取的韧性仍会正常给予队友25%\n\n比如老兵杀了个专家，队友可以获得（25%+25%）X15%=瞬间恢复3.75%，并在随后的10秒内持续恢复3.75%的效果\n\n即使队友没点过光环范围天赋，玩家也可以强行获取队友的光环主被动效果，同样你自身光环的主被动效果会也分享给队友\n比如牢兵、狂信在12米处战吼、开祷，本来你是吃不到金盾的，但是点了技能就可以吃到\n\n老兵的天生领袖，跟法务官的紧急指令，使用了相同的为队友恢复韧性方式" end}, -- toughness:15%. -- colors
-- {	id = "talent_tree_vet_pas_025_en", -- Reciprocity
	-- loc_keys = {"loc_talent_veteran_dodging_grants_crit",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Reciprocity" end},
 {	id = "talent_tree_vet_pas_025_desc_en",
	 loc_keys = {"loc_talent_veteran_dodging_grants_crit_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "成功闪避敌人锁定玩家的近战或远程攻击后，玩家在{duration:%s}秒内获得{crit_chance:%s}的暴击几率，可叠加{stacks:%s}次\n当武器上有鬼魂之类的祝福时，也可以通过轻松闪避敌人的攻击获得加成\n\n{#color(230,60,0)}BUG：闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果" end}, -- crit_chance:+5% duration:8. stacks:5. -- colors s->seconds
-- {	id = "talent_tree_vet_pas_026_en", -- Duck and Dive
	-- loc_keys = {"loc_talent_ranger_stamina_on_ranged_dodge",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Duck and Dive" end}, 灵活应对
 {	id = "talent_tree_vet_pas_026_desc_en",
	 loc_keys = {"loc_talent_veteran_stamina_on_ranged_dodge_desc",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家使用闪避、冲刺或滑步来躲避敌人的远程攻击时，获得{stamina:%s}的体力，该天赋有3秒的内置CD\n\n{#color(230,60,0)}BUG：闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果" end}, -- stamina:+30%.
 --{	id = "talent_tree_vet_pas_027_en", -- Tactical Awareness
--	 loc_keys = {"loc_talent_veteran_elite_kills_reduce_cooldown",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "战术意识" end},
{	id = "talent_tree_vet_pas_027_desc_en",
	loc_keys = {"loc_talent_veteran_elite_kills_reduce_cooldown_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每当玩家亲自击杀一个专家敌人，自身大招冷却加快{#color(255,255,140)}{regen:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}秒{#reset()}，该效果只有1层不叠加，重复触发只会延长持续时间\n\n加快100%是指正常情况下时间过1秒只能回复1秒的大招CD，有了这个1秒就可以恢复2秒的大招CD\n\n{#color(255,155,55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}" end}, -- duration:6. -- colors s->seconds
-- {	id = "talent_tree_vet_pas_028_en", -- Keep Their Heads Down!
--	 loc_keys = {"loc_talent_veteran_increase_suppression",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "让他们全趴下!" end},
 {	id = "talent_tree_vet_pas_028_desc_en",
	 loc_keys = {"loc_talent_veteran_increase_suppression_desc",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "远程武器造成的压制效果提升{suppression:%s}\n\n远程压制仅对这些敌人生效：{#color(255,155,55)}呻吟者、装甲呻吟者、血痂射手、血痂渣滓潜行者、血痂渣滓炮手、收割者{#reset()}（看不懂就理解为小僵尸潮、枪兵、炮手）" end}, -- suppression:+50%.
-- {	id = "talent_tree_vet_pas_029_en", -- Shock Trooper
--	 loc_keys = {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "突击队" end},
{	id = "talent_tree_vet_pas_029_desc_en",
	loc_keys = {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用激光类武器射击时如果产生暴击，那么该次攻击不消耗弹药\n\n等离子不属于激光武器" end}, -- colors
 --{	id = "talent_tree_vet_pas_030_en", -- Determined
--	 loc_keys = {"loc_talent_veteran_supression_immunity",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "坚定不移" end},
 {	id = "talent_tree_vet_pas_030_desc_en",
	 loc_keys = {"loc_talent_veteran_supression_immunity_desc",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家免疫敌人的远程攻击压制效果（镜头乱晃无法瞄准，开火子弹会乱飞）" end},
-- {	id = "talent_tree_vet_pas_031_en", -- Desperado
--	 loc_keys = {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "亡命之徒" end},
 {	id = "talent_tree_vet_pas_031_desc_en",
	 loc_keys = {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战武器暴击几率增加{crit_chance:%s}，近战武器娴熟伤害增加{finesse:%s}（弱点与暴击伤害倍率）" end}, -- crit_chance:+10% finesse:+25%. -- colors & Notice!
-- {	id = "talent_tree_vet_pas_032_en", -- Onslaught
	-- loc_keys = {"loc_talent_veteran_continous_hits_apply_rending",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Onslaught" end},
 {	id = "talent_tree_vet_pas_032_desc_en",
	 loc_keys = {"loc_talent_veteran_continous_hits_apply_rending_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "使用近战或者远程武器的直击效果，对单个敌人进行连续攻击，从第二次命中开始每次为其增加1层{rending_multiplier:%s}的脆弱debuff效果（全队有效），持续{duration:%s}秒，叠加上限{max_stacks:%s}层（也就是40%）\n\n武器直击命中第二个敌人就会停止叠加（dot不算）\n\n猛攻与雷鸣、撕裂冲击波等是同一个代码，叠加上限是40%，与穿透火焰的20%可以叠加至60%\n\n当武器的撕裂叠加超过100%时，超过的部分算作四分之一增伤，比如160%破甲就等于（160%-100%）÷4=15%增伤）" end}, -- rending_multiplier:2.5% duration:5. max_stacks:16. -- colors
-- {	id = "talent_tree_vet_pas_033_en", -- Always Prepared
	-- loc_keys = {"loc_talent_veteran_ammo_increase",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Always Prepared" end},
-- {	id = "talent_tree_vet_pas_033_desc_en",
	-- loc_keys = {"loc_talent_veteran_ammo_increase_desc",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "{ammo:%s} Ammo." end}, -- ammo:+25%.
 --{	id = "talent_tree_vet_pas_034_en", -- Iron Will
--	 loc_keys = {"loc_talent_veteran_block_break_gives_tdr",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "钢铁意志" end},
 {	id = "talent_tree_vet_pas_034_desc_en",
	 loc_keys = {"loc_talent_veteran_tdr_on_high_toughness_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当韧性在{toughness_percent:%s}以上时，受到近战或远程攻击会有{toughness_damage_reduction:%s}的韧性伤害减免\n\n举例玩家韧性上限为100，在100~75之间受到攻击都会降低50%\n如果玩家韧性是100+50（金盾），那么在韧性112.5以上时才会触发减伤判定" end}, -- toughness_damage_reduction:+50% toughness_percent:75%. -- colors
-- {	id = "talent_tree_vet_pas_035_en", -- Demolition Team
	-- loc_keys = {"loc_talent_ranger_grenade_on_elite_kills_coop",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Demolition Team" end},
 {	id = "talent_tree_vet_pas_035_desc_en",
	 loc_keys = {"loc_talent_veteran_grenade_on_elite_kills_coop_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "帝国老兵自己，或者帝国老兵的“连携光环”范围内的队友，杀死一个精英或专家敌人时，都有{chance:%s}的几率给与帝国老兵自身1颗手雷\n\n{#color(255,155, 55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(255, 155, 55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}" end}, -- chance:5%.
-- {	id = "talent_tree_vet_pas_036_en", -- Skirmisher
--	 loc_keys = {"loc_talent_veteran_damage_damage_after_sprinting",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "游击者" end},
 {	id = "talent_tree_vet_pas_036_desc_en",
	 loc_keys = {"loc_talent_veteran_damage_damage_after_sprinting_or_sliding_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "持续跑步或者滑铲{#color(255,255,140)}0.5秒{#reset()}后，每秒获得1层能量{base_damage:%s}伤害加成（近战、远程、dot全增加），持续{duration:%s}秒，叠加上限{stacks:%s}次\n\n因为有初始至少0.5秒的限制，所以部分玩家使用左右滑铲或者什么后退滑铲的神奇操作，如果持有等离子之类没机动加成的武器，在滑铲时间很短的情况下，可能无法触发游击buff）" end}, -- base_damage:+5% duration:5. stacks:5. -- colors s->seconds
-- {	id = "talent_tree_vet_pas_037_en", -- Exploit Weakness
	-- loc_keys = {"loc_talent_veteran_crits_rend",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Exploit Weakness" end}, 抓住弱点
 {	id = "talent_tree_vet_pas_037_desc_en",
	 loc_keys = {"loc_talent_veteran_crits_rend_alt_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家使用近战武器产生暴击并且命中敌人时，玩家自身提升{#color(255,255,140)}{damage:%s}{#reset()}能量（近战、远程、dot伤害全提升），持续{#color(255,255,140)}{duration:%s}秒{#reset()}" end}, -- rending_multiplier:10%. max_stacks:2 duration:5. -- colors s->seconds
 --{	id = "talent_tree_vet_pas_038_en", -- Superiority Complex
--	 loc_keys = {"loc_talent_veteran_increase_damage_vs_elites",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "优越情节" end},
 {	id = "talent_tree_vet_pas_038_desc_en",
	 loc_keys = {"loc_talent_veteran_increase_damage_vs_elites_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家对精英敌人的伤害增加{damage:%s}\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}" end}, -- damage:+15%. -- colors ()
 --{	id = "talent_tree_vet_pas_039_en", -- Competitive Urge
--	 loc_keys = {"loc_talent_veteran_ally_kills_increase_damage",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "求胜心" end},竞争冲动
 {	id = "talent_tree_vet_pas_039_desc_en",
	 loc_keys = {"loc_talent_veteran_ally_kills_increase_damage_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "每当有一个敌人被队友或者敌人、环境击杀死亡时（只要不是帝国老兵亲手动手击杀的），就有{proc_chance:%s}的概率，为帝国老兵自身增加{damage:%s}伤害，{melee_impact:%s}的武器踉跄、{suppression:%s}的武器压制效果，持续{duration:%s}秒\n\n远程压制仅对这些敌人生效：{#color(255,155,55)}呻吟者、装甲呻吟者、血痂射手、血痂渣滓潜行者、血痂渣滓炮手、收割者{#reset()}（看不懂就理解为小僵尸潮、枪兵、炮手）" end}, -- proc_chance:2.5% damage:+20% melee_impact:+20% suppression:+20% duration:8. -- rewrite colors & s->seconds
-- {	id = "talent_tree_vet_pas_040_en", -- Bring it Down!
--	 loc_keys = {"loc_talent_veteran_big_game_hunter",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "干掉他!" end},
 {	id = "talent_tree_vet_pas_040_desc_en",
	 loc_keys = {"loc_talent_veteran_big_game_hunter_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "帝国老兵自身对欧格林和怪兽的伤害增加{damage:%s}\n\n{#color(255,155,55)}欧格林与怪物敌人：粉碎者、堡垒、收割者、瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主{#reset()}\n\n{#color(230,60,0)}BUG：渣滓连长、血痂连长、近战双子连长、远程双子连长不属于任何标签，无法享受增伤\n如果你使用某些mod修改单位标签，那么他们也会在离线模式下享受增伤效果，在线模式无效" end}, -- damage:+25%. -- colors & ()
-- {	id = "talent_tree_vet_pas_041_en", -- Trench Fighter Drill
	-- loc_keys = {"loc_talent_veteran_attack_speed",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Trench Fighter Drill" end},
-- {	id = "talent_tree_vet_pas_041_desc_en",
	-- loc_keys = {"loc_talent_veteran_attack_speed_description",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "{melee_attack_speed:%s} Melee Attack Speed." end}, -- melee_attack_speed:+10%.
-- {	id = "talent_tree_vet_pas_042_en", -- Rending Strikes
	-- loc_keys = {"loc_talent_veteran_rending_bonus",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Rending Strikes" end},
 {	id = "talent_tree_vet_pas_042_desc_en",
	 loc_keys = {"loc_talent_veteran_rending_bonus_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "帝国老兵的近战武器、远程武器、手雷，获得{rending_multiplier:%s}撕裂加成（加法叠加，只对自身有效）\n\n比如左轮手枪基础40%撕裂+10%就是50%撕裂，如果罐头已经受到过其他的脆弱效果（40%），那么就是40+10+40=90%撕裂，对于无甲感染自身来说，100%就是上限，没有额外增伤" end}, -- rending_multiplier:+10%. -- colors


-- ==============================================================OGRYN
-- ==============================================================BLITZ
--____________________________________________________Blitz 0
-- {	id = "talent_tree_ogr_blitz0_000_en", -- Big Box of Hurt
	-- loc_keys = {"loc_ability_ogryn_grenade_box",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Big Box of Hurt" end},
-- {	id = "talent_tree_ogr_blitz0_000_desc_en",
	-- loc_keys = {"loc_ability_ogryn_grenade_box_description",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Throw a box of grenades with great strength and enthusiasm for high {#color(255, 95, 95)}Damage{#reset()} against a Single Enemy.\n\n{#color(255, 155, 55)}Kills all enemies with oneshot to the head, except: Crushers and Monstrosities.{#reset()}" end}, -- colors Notice!
--____________________________________________________Blitz 1
-- {	id = "talent_tree_ogr_blitz1_000_en", -- Big Friendly Rock 大石头朋友
	-- loc_keys = {"loc_ability_ogryn_friend_rock",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Big Friendly Rock" end},
{	id = "talent_tree_ogr_blitz1_000_desc_en",
	loc_keys = {"loc_ability_ogryn_friend_rock_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "向敌人投掷一块大石头或大块垃圾\n飞行距离超过12米后防弹甲伤害减50%、不屈减25%；石头命中弱点时可以踉跄并击退boss（连长有盾的时候不行，纳垢兽需要打背后黄包）\n\n直击伤害：{#color(255,255,140)}1200{#reset()}\n伤害倍率：狂人125%，无甲感染防弹不屈虚空100%、硬壳25%（专家必死）\n\n欧格林每{recharge:%s}秒自动获得一块新石头，储备上限{max_charges:%s}块，无法通过手雷箱补充石头\n算上重量级的30%伤害加成后，打硬壳不屈依然不好用\n\n{#color(255,155,55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}" end}, -- recharge:45 max_charges:4. -- s->seconds Notice!
{	id = "talent_tree_ogr_blitz1_001_desc_en", --That One Didn't Count 这次不算！
	loc_keys = {"loc_talent_ogryn_replenish_rock_on_miss_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当{talent_name:%s}命中敌人弱点时，石头会自动返回背包里\n如果没打中任何一个敌人，此次攻击也不消耗石头\n\n冷却时间{#color(255,255,140)}{cooldown_duration:%s}秒{#reset()}" end}, -- recharge:45 max_charges:4. -- s->seconds Notice!
--____________________________________________________Blitz 2
-- {	id = "talent_tree_ogr_blitz2_000_en", -- Bombs Away! 投弹完毕 大爆弹箱
	-- loc_keys = {"loc_talent_bonebreaker_grenade_super_armor_explosion",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Bombs Away!" end},
{	id = "talent_tree_ogr_blitz2_000_desc_en",
	loc_keys = {"loc_talent_bonebreaker_grenade_super_armor_explosion_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用{talent_name:%s}击中敌人或墙壁地板时，里面的{num_grenades:%s}颗手雷会掉落出来，并以{#color(255,255,140)}0.3秒{#reset()}的间隔挨个发生爆炸\n\n直击伤害：{#color(255,255,140)}1850{#reset()}\n伤害倍率：虚空200%、不屈150%、无甲感染防弹狂人100%、硬壳15%\n箱子直击秒杀：炮手、霰弹枪手、渣滓狂战、血痂重锤兵、变种人、瘟疫猎犬、自爆人、脓包大眼睛\n\n爆炸中心{#color(255,255,140)}2米{#reset()}不衰减基础{#color(255,255,140)}500{#reset()}伤害，边缘衰减{#color(255,255,140)}8米{#reset()}基础{#color(255,255,140)}150{#reset()}伤害（8米处衰减为0），压制半径{#color(255,255,140)}15{#reset()}米\n伤害倍率：无甲狂人100%，感染不屈虚空75%，防弹50%，硬壳20%\n\n携带上限{#color(255,255,140)}3个{#reset()}\n\n成就里的砸恶魔眼睛，指的是精炼厂、沙漠图里面打爆3个脓包后，墙上炸出来的大眼睛，拿手雷盒砸就行了\n\n{#color(230,60,0)}BUG：这个技能造成的卡顿目前无法解决，只能等肥鲨更新修复" end}, -- num_grenades:6. talent_name:Big Box of Hurt. -- colors Notice!
	
{	id = "talent_tree_ogr_blitz2_001_desc_en", --Bigger Box of Hurt 更大爆箱
	loc_keys = {"loc_talent_ogryn_big_box_of_hurt_more_bombs_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "小手雷数量{amount:%s}，从基础的{#color(255,255,140)}6{#reset()}个提升至{#color(255,255,140)}9{#reset()}个" end}, -- num_grenades:6. talent_name:Big Box of Hurt. -- colors Notice!
--____________________________________________________Blitz 3
{	id = "talent_tree_ogr_blitz3_000_en", -- Frag Bomb
	loc_keys = {"loc_ability_ogryn_grenade_demolition",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "胖男孩" end},
{	id = "talent_tree_ogr_blitz3_000_desc_en",
	loc_keys = {"loc_ability_ogryn_grenade_demolition_instakill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "投掷一枚欧格林大小的（唯一合适的类型！）碎片手榴弹，造成大范围高伤害的爆炸\n\n爆炸伤害：核心半径{#color(255,255,140)}2{#reset()}米内{#color(255,255,140)}1500{#reset()}伤害，最大半径{radius:%s}米{#color(255,255,140)}1250{#reset()}伤害，压制半径{#color(255,255,140)}25{#reset()}米\n伤害倍率：不屈262.5%、狂人167.5%、防弹155%、无甲硬壳100%、感染虚空75%（人类大小必死）\n\n{#color(230,60,0)}BUG：不能隔着盾伤敌，所以架盾的盾卫不受伤" end}, -- radius:16. -- colors m->meters Notice!


-- ==============================================================AURA
--____________________________________________________Aura 0
-- {	id = "talent_tree_ogr_aura0_000_en", -- Intimidating Presence
	-- loc_keys = {"loc_talent_ogryn_2_base_4",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Intimidating Presence" end},
-- {	id = "talent_tree_ogr_aura0_000_desc_en",
	-- loc_keys = {"loc_talent_ogryn_2_base_4_description_new",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "{damage:%s} Heavy Melee Attack {#color(255, 95, 95)}Damage{#reset()} for you and Allies in Coherency." end}, -- damage:+7.5%. -- colors
--____________________________________________________Aura 1
-- {	id = "talent_tree_ogr_aura1_000_en", -- Bonebreaker's Aura
	-- loc_keys = {"loc_talent_damage_aura",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "碎颅者光环" end},
 {	id = "talent_tree_ogr_aura1_000_desc_en",
	 loc_keys = {"loc_talent_damage_aura_improved",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "{talent_name:%s}会使欧格林自身，以及欧格林“连携光环”中的队友，近战武器造成的直击伤害增加{damage:%s}\n同样会增加部分远程武器的近战攻击模式\n\n相同光环不叠加，但可以和基础光环加法叠加" end}, -- damage:+10%. talent_name:Intimidating Presence. -- colors
--____________________________________________________Aura 2
 --{	id = "talent_tree_ogr_aura2_000_en", -- Stay Close!
	-- loc_keys = {"loc_talent_ogryn_toughness_regen_aura",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "跟紧我!" end},
 {	id = "talent_tree_ogr_aura2_000_desc_en",
	 loc_keys = {"loc_talent_ogryn_toughness_regen_aura_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "欧格林自身，以及欧格林“连携光环”中的队友，全{#color(32,178,170)}韧性{#reset()}恢复量提升{toughness_regen_rate_modifier:%s}（连携、技能、祝福）\n\n连携韧性恢复量：2人时3.6（每秒）、3人时5.4（每秒）、4人时7.2（每秒）\n近战击杀韧性恢复量：5→6\n老兵战吼：50→60\n\n相同光环不叠加" end}, -- toughness_regen_rate_modifier:+20%. -- colors
--____________________________________________________Aura 3
 --{	id = "talent_tree_ogr_aura3_000_en", -- Coward Culling
--	 loc_keys = {"loc_talent_ogryn_damage_vs_suppressed",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "优胜劣汰 剔除糟粕" end},
 {	id = "talent_tree_ogr_aura3_000_desc_en",
	 loc_keys = {"loc_talent_ogryn_damage_vs_suppressed_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "欧格林自身，以及欧格林“连携光环”中的队友，远程武器的压制增加{#color(255,255,140)}{suppression:%s}{#reset()}，并且对被远程武器压制的敌人造成额外{damage:%s}的伤害\n\n远程压制仅对这些敌人生效：{#color(255,155,55)}呻吟者、装甲呻吟者、血痂射手、血痂渣滓潜行者、血痂渣滓炮手、收割者{#reset()}\n看不懂就理解为小僵尸潮、枪兵、炮手\n\n相同光环不叠加" end}, -- damage:+20%. -- colors


-- ==============================================================ABILITIES
--____________________________________________________Ability 0
-- {	id = "talent_tree_ogr_abil0_000_en", -- Bull Rush
	-- loc_keys = {"loc_ability_ogryn_charge",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Bull Rush" end},
-- {	id = "talent_tree_ogr_abil0_000_desc_en",
	-- loc_keys = {"loc_ability_ogryn_charge_description_new",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Charge forward with great force, knocking back enemies and {#color(155, 155, 55)}Staggering{#reset()} them. Gain {attack_speed:%s} Attack Speed and {move_speed:%s} Movement Speed for {duration:%s} seconds. Charge is stopped on collision with Carapace Armoured Enemies, Unyielding Enemies and Monstrosities.\n\nBase Cooldown: {cooldown:%s} seconds.\n\n{#color(255, 155, 55)}- You rush forward at a distance of up to 12 meters.\n- All enemies will be stunned, except for the Scab Captain under the shield.\n- To stop the Charge, press RMB or back [S].{#reset()}" end}, -- attack_speed:+25% move_speed:+25% duration:5. cooldown:30. -- colors s->seconds Notice!
--____________________________________________________Ability 1
-- {	id = "talent_tree_ogr_abil1_000_en", -- Indomitable
	-- loc_keys = {"loc_talent_ogryn_bull_rush_distance",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Indomitable" end}, 坚韧不屈
{	id = "talent_tree_ogr_abil1_000_desc_en",
	loc_keys = {"loc_talent_ogryn_bull_rush_distance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "释放{talent_name:%s}技能后，玩家以每秒7米的速度向前冲锋24米（比普通版强{distance:%s}）\n冲锋期间在玩家身体半径2米内碰到的敌人，都会受到持续4秒爬不起来的高额踉跄效果（可以踉跄所有敌人，包括各种突变加成下的敌人，踉跄力会受到玩家冲锋时携带的武器专长、祝福加成），只有BOSS、有盾的连长才能停止欧格林冲锋的脚步（没盾的连长会被撞翻）\n\n使用技能后，攻击的动画速度（同样影响蓄力）加快{attack_speed:%s}，移动速度加快{move_speed:%s}，持续{duration:%s}秒\n\n基础冷却时间：{cooldown:%s}秒\n\n玩家在冲锋期间被视为闪避，可以免疫远程投射物攻击（子弹、狙击），并且受到的近战韧性伤害减少50%，但是不免疫地面火焰、毒气、爆炸击飞等效果，也不免疫网子姐、牛等抓取效果\n\n除了正常冲锋区域外，大招结束时同样会对正前方造成半径2.5米的球形踉跄区域，可以按S强制停止冲锋来主动触发这个二次踉跄效果\n\n{#color(230,60,0)}BUG：1.11.1补丁后，由于加入强制踉跄词条，可以直接激活浩劫的仪式宿主，在底血量时期就将其直接斩杀{#reset()}" end}, -- attack_speed:+25% move_speed:+25% duration:5. cooldown:30. talent_name:Bull Rush distance:100%. -- colors s->seconds Notice!
--____________________________________________________Ability 1 Modifier 1
-- {	id = "talent_tree_ogr_abil1_001_en", -- Stomping Boots
	-- loc_keys = {"loc_talent_ogryn_toughness_on_bull_rush",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Stomping Boots" end},
-- {	id = "talent_tree_ogr_abil1_001_desc_en",
	-- loc_keys = {"loc_talent_ogryn_toughness_on_bull_rush_desc",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Replenish {toughness:%s} {#color(0, 206, 209)}Toughness{#reset()} per Enemy Hit with {ability:%s}." end}, -- toughness:+10% ability:Indomitable. -- colors
--____________________________________________________Ability 1 Modifier 2
-- {	id = "talent_tree_ogr_abil1_002_en", -- Trample 践踏
	-- loc_keys = {"loc_talent_ogryn_ability_charge_trample",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Trample" end},
{	id = "talent_tree_ogr_abil1_002_desc_en",
	loc_keys = {"loc_talent_ogryn_ability_charge_trample_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用{talent_name:%s}时，大招每击中一个敌人获得一层践踏buff，践踏会让玩家所有伤害增加{damage:%s}，持续{duration:%s}秒，最多叠加{stack:%s}层" end}, -- talent_name:Bull Rush damage:+1% duration:8. stack:25. -- rewrite colors s->seconds
--____________________________________________________Ability 1 Modifier 3
-- {	id = "talent_tree_ogr_abil1_003_en", -- Pulverise 粉碎
	-- loc_keys = {"loc_talent_ogryn_bleed_on_bull_rush",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Pulverise" end},
{	id = "talent_tree_ogr_abil1_003_desc_en",
	loc_keys = {"loc_talent_ogryn_bleed_on_bull_rush_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用{ability:%s}时，大招击中的敌人会获得{stacks:%s}层的流血debuff（上限16层）\n\n流血上限16层，0.5秒一跳，持续1.5秒（跳3次掉1层），倍率：无甲感染50%，防弹不屈75%，玩家狂人虚空100%，硬壳25%\n\n可以对举盾的盾卫造成流血效果，有虚空盾的连长也行\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数" end}, -- stacks:5 ability:Indomitable. -- colors
--____________________________________________________Ability 2
-- {	id = "talent_tree_ogr_abil2_000_en", -- Loyal Protector
	-- loc_keys = {"loc_ability_ogryn_taunt_shout",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Loyal Protector" end}, 忠诚护卫
{	id = "talent_tree_ogr_abil2_000_desc_en",
	loc_keys = {"loc_ability_ogryn_taunt_shout_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "嘲讽半径{radius:%s}米内的敌人（头上出现嘲讽标记）并使其踉跄{#color(255,255,140)}1秒{#reset()}，被嘲讽的敌人会在{duration:%s}秒内强制只攻击玩家\n除第一次释放外，在{#color(255,255,140)}{first_pulse:%s}秒{#reset()}、{#color(255,255,140)}{second_pulse:%s}秒{#reset()}时，欧格林自身还会再次发射不带踉跄的嘲讽波，命中敌人可刷新嘲讽的持续时间（也就是说理论上最大嘲讽时间是21秒）\n\n当欧格林被狗、变种人、网、boss等抓取时，嘲讽失效\n嘲讽的只攻击玩家效果，对怪物词条的敌人无效（混沌卵、纳垢兽、瘟疫欧格林、群猎之主、恶魔宿主），但是连长和双子不属于怪物，被嘲讽时会正常只追着玩家揍\n\n基础冷却时间：{cooldown:%s}秒\n\n枪兵和炮手（血痂、渣滓、收割者）被嘲讽时只会用远程武器攻击玩家，除此之外的远程敌人，被嘲讽时会强制切换为近战武器攻击玩家\n\n1.4新增的索敌{#color(230,60,0)}BUG：狙击手、血痂渣滓喷火兵被嘲讽时，只会站在原地踢腿15秒，不会移动和攻击" end}, -- radius:8 duration:15. cooldown:45. -- m->meters s->seconds
--____________________________________________________Ability 2 Modifier 1
 --{	id = "talent_tree_ogr_abil2_001_en", -- Valuable Distraction
--	 loc_keys = {"loc_talent_ogryn_taunt_damage_taken_increase",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return " 珍贵干扰" end},
 {	id = "talent_tree_ogr_abil2_001_desc_en",
	 loc_keys = {"loc_talent_ogryn_taunt_damage_taken_increase_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "处于{talent_name:%s}嘲讽状态下的敌人，受到{base_damage:%s}额外伤害（全队生效，包括dot）\n\n点珍贵干扰而不点再来一次的话，技能的真空期是50－21=29秒，带3个冷却饰品是44-21=23秒" end}, -- talent_name:Loyal Protector base_damage:+25%. -- colors
--____________________________________________________Ability 2 Modifier 2
-- {	id = "talent_tree_ogr_abil2_002_en", -- Just Getting Started
	-- loc_keys = {"loc_talent_ogryn_taunt_stagger_cd",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Just Getting Started" end},
 {	id = "talent_tree_ogr_abil2_002_desc_en", --Go Again再来一次
	 loc_keys = {"loc_talent_ogryn_taunt_stagger_cd_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "使用近战、远程武器、推搡敌人等，只要对敌人造成踉跄（即使是左键轻击的轻微踉跄也算）后，可以使你的{talent_name:%s}冷却时间降低{cooldown_reduction:%s}\n\n每次攻击即使命中多个敌人，也只能触发一次降低冷却效果，50X2%=1秒\n选这个被动后，理论上如果持续攻击敌人，那么每隔15秒就能放一次大招，几乎全程维持嘲讽与韧性恢复效果。而携带3冷却饰品则是14秒一次，只有1秒收益太低，选了再来一次天赋后就不值得带这个饰品词条了" end}, -- cooldown_reduction:2.5% talent_name:Loyal Protector. -- colors
 {	id = "talent_tree_ogr_abil2_002_desc_en", --No Pain! 不疼
	 loc_keys = {"loc_talent_ogryn_taunt_restore_toughness_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "每个嘲讽波动都会恢复玩家自身{#color(255,255,140)}10%{#reset()}{#color(32,178,170)}韧性{#reset()}（不管有没有嘲讽到敌人）\n\n如果波动嘲讽到敌人，每个被嘲讽的敌人都会为欧格林叠加一层每秒恢复{#color(255,255,140)}0.5%{#reset()}{#color(32,178,170)}韧性{#reset()}的buff，最多叠加{#color(255,255,140)}20{#reset()}层，上限10%\n持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n\n即使点再来一次，也会有15－9.25=5.75秒的韧性恢复真空期" end}, -- cooldown_reduction:2.5% talent_name:Loyal Protector. -- colors
--____________________________________________________Ability 2 Modifier 3
-- {	id = "talent_tree_ogr_abil2_003_en", -- Big Lungs
	-- loc_keys = {"loc_talent_ogryn_taunt_radius_increase",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Big Lungs" end},
-- {	id = "talent_tree_ogr_abil2_003_desc_en",
--	 loc_keys = {"loc_talent_ogryn_taunt_radius_increase_desc",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "{talent_name:%s}的覆盖范围增加{radius:%s}，从{#color(255,255,140)}8{#reset()}米提升至{#color(255,255,140)}12{#reset()}米" end}, -- talent_name:Loyal Protector radius:50%. -- colors
--____________________________________________________Ability 3
 --{	id = "talent_tree_ogr_abil3_000_en", -- Point-Blank Barrage
	-- loc_keys = {"loc_talent_ogryn_combat_ability_special_ammo",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "贴身火力 平射弹幕" end},
{	id = "talent_tree_ogr_abil3_000_desc_en",
	loc_keys = {"loc_talent_ogryn_combat_ability_special_ammo_replenish_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "按下技能后会直接切换成远程武器，并且装填好弹夹\n\n持续期间获得以下buff：\n远程武器射速{ranged_attack_speed:%s}\n远程武器换弹速度{reload_speed:%s}\n移除玩家使用远程武器按右键开火时{#color(255,255,140)}{reduced_move_penalty:%s}{#reset()}的减速效果\n{#color(255,255,140)}0~12.5{#reset()}米内远程武器{#color(255,255,140)}+15%{#reset()}能量（全局加成）\n{#color(255,255,140)}12.5~30{#reset()}米额外加成逐渐降低至{#color(255,255,140)}0{#reset()}\n\n持续时间结束后，恢复大招期间消耗弹药的{#color(255,255,140)}{ammo_return_percent:%s}{#reset()}，不足1发的等积累至1发再送（右下基石白送的弹药不算在内）\n\n持续{duration:%s}秒\n\n基础冷却时间：{cooldown:%s}秒\n\n如果点了换弹完毕被动，使用大招会立即触发15%换弹增伤效果\n\n{#color(230,60,0)}BUG：1.70后开启大招会清空榴弹、臂铠的连续射击、爆炸区域祝福的层数，必须重新开始叠buff{#reset()}" end}, -- ranged_attack_speed:+25% reload_speed:+70% duration:10. cooldown:80. -- 
--____________________________________________________Ability 3 Modifier 1
--  {	id = "talent_tree_ogr_abil3_001_en", -- Thick of the Fray 激烈枪战
-- 	 loc_keys = {"loc_talent_ogryn_special_ammo_movement",},
-- 	 locales = {"zh-cn",},
-- 	 handle_func = function(locale, value)
-- 	 return "激烈枪战" end},
--{	id = "talent_tree_ogr_abil3_001_desc_en",
--	loc_keys = {"loc_talent_ogryn_special_ammo_movement_new_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{ability:%s}持续期间，移除玩家使用远程武器按右键开火时{reduced_move_penalty:%s}的减速效果，0~12.5米远程武器伤害增加{damage:%s}，12.5~30米伤害加成逐渐降低，30米外失去所有加成效果\n\n如果有玩过深岩银河的玩家可能会有既视感，雷暴云砧重型双管机炮的超频能力：战斗机动" end}, -- reduced_move_penalty:50% damage:+15% ability:Point-Blank Barrage. -- colors
--____________________________________________________Ability 3 Modifier 2
 --{	id = "talent_tree_ogr_abil3_002_en", -- Bullet Bravado
--	 loc_keys = {"loc_talent_ogryn_special_ammo_toughness",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "壮胆子弹" end}, 子弹狂欢
 {	id = "talent_tree_ogr_abil3_002_desc_en",
	 loc_keys = {"loc_talent_ogryn_special_ammo_toughness_on_shot_and_reload_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当{ability:%s}激活时，每发射一发子弹就恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}，每次装弹恢复{toughness_reload:%s}{#color(32,178,170)}韧性{#reset()}\n因为释放大招会自动装满弹夹，所以按下F就会直接{toughness_reload:%s}韧性\n\n机枪的魅惑射击祝福不算装弹，不会恢复韧性\n\n连携光环类的加成对此技能无效，但会受到毒雷-30%影响，毒气因子+50%影响" end}, -- ability:Point-Blank Barrage toughness:+2% toughness_reload:+10%. -- colors
--____________________________________________________Ability 3 Modifier 3
-- {	id = "talent_tree_ogr_abil3_003_en", -- Hail of Fire 炮火洗礼
	-- loc_keys = {"loc_talent_ogryn_special_ammo_armor_pen",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "枪林弹雨" end},
{	id = "talent_tree_ogr_abil3_003_desc_en",
	loc_keys = {"loc_talent_ogryn_special_ammo_armor_pen_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{ability:%s}激活期间：\n远程武器{rending_multiplier:%s}撕裂\n远程直击、爆炸伤害{#color(255,255,140)}{damage:%s}{#reset()}（对dot无效）\n\n这个撕裂加成对榴弹的爆炸部分效果不错，对其他武器来说只能开罐\n\n举例某个武器打硬壳，造成的伤害是无甲的25%，技能特效是给武器+15%撕裂，那么这个硬壳打伤害25%，就会变成25+15=40%\n\n当撕裂加成超过无甲的100%加成时，加成数据会变为四分之一（对于无甲感染自身来说，100%就是上限，没有额外增伤）\n举例：如果当前的武器攻击硬壳，造成的伤害已经是无甲的90%，那么撕裂+15%的效果计算公式就会变成1+（15%+90%-1）/4=101.25%，对于无甲感染自身来说，100%就是上限，没有额外增伤" end}, -- rending_multiplier:+30% ability:Point-Blank Barrage. -- colors
--____________________________________________________Ability 3 Modifier 4
-- {	id = "talent_tree_ogr_abil3_004_en", -- Light 'em Up射杀它们
	-- loc_keys = {"loc_talent_ogryn_special_ammo_fire_shots",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Light 'em Up" end},
{	id = "talent_tree_ogr_abil3_004_desc_en",
	loc_keys = {"loc_talent_ogryn_special_ammo_fire_shots_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当{ability:%s}激活时，使用远程直击或爆炸命中敌人，都会为敌人添加{stacks:%s}层燃烧效果，叠加上限{#color(255,255,140)}16{#reset()}层\n\n燃烧持续4秒，0.5秒一跳，倍率：无甲不屈150%，防弹狂人虚空100%，玩家12.5%，硬壳10%，感染125%\n\n榴弹近战模式、臂铠爆炸冲拳、臂铠左键近战砸人等均无法触发点燃效果\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数" end}, -- stacks:2 ability:Point-Blank Barrage. -- colors


-- ==============================================================KEYSTONES
--____________________________________________________Keystone 1
-- {	id = "talent_tree_ogr_keys1_000_en", -- Heavy Hitter
--	 loc_keys = {"loc_talent_ogryn_passive_heavy_hitter",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "重拳出击" end},
 {	id = "talent_tree_ogr_keys1_000_desc_en",
	 loc_keys = {"loc_talent_ogryn_passive_heavy_hitter_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "使用近战、远程武器的近战模式，蓄力重击命中敌人时，获得{#color(255,255,140)}{heavy_stacks:%s}{#reset()}层buff，轻击命中获得{#color(255,255,140)}{stacks:%s}{#reset()}层\n每层增加近战伤害{damage:%s}（不加dot），持续{duration:%s}秒，叠加上限{stacks:%s}层\n\n远程武器的近战攻击模式按重击算" end}, -- damage:+5% duration:7.5. stacks:5. -- colors s->seconds
--____________________________________________________Keystone 1 Modifier 1
 --{	id = "talent_tree_ogr_keys1_001_en", -- Just Getting Started
	-- loc_keys = {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "热身完毕" end},
 {	id = "talent_tree_ogr_keys1_001_desc_en",
	 loc_keys = {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当{talent_name:%s}堆叠{stacks:%s}层时，近战攻击的动画速度（同样影响蓄力）加快{attack_speed:%s}" end}, -- talent_name:Heavy Hitter stacks:5 attack_speed:+10%.
--____________________________________________________Keystone 1 Modifier 2
-- {	id = "talent_tree_ogr_keys1_002_en", -- Unstoppable
--	 loc_keys = {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness",},
--	locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "越战越勇" end},
 {	id = "talent_tree_ogr_keys1_002_desc_en",
	 loc_keys = {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness_new_description",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "{talent_name:%s}的每层堆叠，近战击杀敌人的{#color(32,178,170)}韧性{#reset()}恢复量增加{#color(255,255,140)}{melee_toughness:%s}{#reset()}\n\n正常近战击杀5%\n满堆叠(1+15X8)X5=11%\n\n流血燃烧这类dot击杀不算\n{#color(230,60,0)}BUG：干草机代码杀不算{#reset()}" end}, -- talent_name:Heavy Hitter stacks:5 toughness_melee_replenish:+10%. -- colors
--____________________________________________________Keystone 1 Modifier 3
 --{	id = "talent_tree_ogr_keys1_003_en", -- Brutish Momentum
	-- loc_keys = {"loc_talent_ogryn_heavy_hitter_light_attacks_refresh",},
--	locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "凶蛮打击" end},
 --{	id = "talent_tree_ogr_keys1_003_desc_en",
--	 loc_keys = {"loc_talent_ogryn_heavy_hitter_light_attacks_refresh_description",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "轻攻击也可刷新{talent_name:%s}buff的持续时间，但是不能增加层数" end}, -- talent_name:Heavy Hitter. -- Notice!
{	id = "talent_tree_ogr_keys1_003_1_desc_en", --无惧痛楚Don't Feel a Thing 
	 loc_keys = {"loc_talent_ogryn_passive_heavy_hitter_tdr_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "{talent_name:%s}每层堆叠提供{#color(255,255,140)}{toughness_damage_reduction:%s}{#reset()}的韧性伤害抗性，叠满上限{#color(255,255,140)}10%{#reset()}" end}, -- talent_name:Heavy Hitter.  Notice!
{	id = "talent_tree_ogr_keys1_003_2_desc_en", --大屠刀Great Cleaver 
	 loc_keys = {"loc_talent_ogryn_passive_heavy_hitter_cleave_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "{talent_name:%s}每层堆叠提供{#color(255,255,140)}{cleave:%s}{#reset()}的近战攻击劈裂加成，叠满上限{#color(255,255,140)}100%{#reset()}" end}, -- talent_name:Heavy Hitter. -- Notice!
{	id = "talent_tree_ogr_keys1_003_3_desc_en", --深远影响Impactful
	 loc_keys = {"loc_talent_ogryn_passive_heavy_hitter_stagger_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "{talent_name:%s}每层堆叠提供{#color(255,255,140)}{impact:%s}{#reset()}的近战攻击踉跄加成，叠满上限{#color(255,255,140)}60%{#reset()}" end}, -- talent_name:Heavy 
--____________________________________________________Keystone 2
-- {	id = "talent_tree_ogr_keys2_000_en", -- Feel No Pain
--	 loc_keys = {"loc_talent_ogryn_carapace_armor",},
--	 locales = {"zh-cn",},Punishment
--	 handle_func = function(locale, value)
--	 return "麻木" end},
{	id = "talent_tree_ogr_keys2_000_desc_en",
	loc_keys = {"loc_talent_ogryn_carapace_armor_any_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家初始拥有{stacks:%s}层“不痛不痒”，每当玩家受到韧性或生命值伤害时，会移除1层buff，每{duration:%s}秒自动恢复1层buff\n\n每层buff增加{toughness_regen:%s}的全{#color(32,178,170)}韧性{#reset()}恢复量\n全韧性恢复量对连携加成：2人时3.75→4.6875（每秒）、3人时5.625→7.03125（每秒）、4人时7.5→9.375（每秒）\n近战击杀韧性恢复量：5%→5.75%\n老兵战吼：50→57.5\n\n每层buff增加{damage_reduction:%s}的韧性伤害减免效果（乘法叠加，叠满10层为26.26%）" end}, -- stacks:10 toughness_regen:+2.5% damage_reduction:+2.5%. duration:6. -- colors s->seconds
--____________________________________________________Keystone 2 Modifier 1
 --{	id = "talent_tree_ogr_keys2_001_en", -- Pained Outburst
--	 loc_keys = {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "痛楚爆发" end},
{	id = "talent_tree_ogr_keys2_001_desc_en",
	loc_keys = {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当{talent_name:%s}的堆叠层数降低至{#color(255,255,140)}{stacks:%s}层{#reset()}以下时，欧格林会以强大的踉跄击退半径{#color(255,255,140)}2.5米{#reset()}内的敌人，并且恢复自身{toughness_replenish:%s}{#color(32,178,170)}韧性{#reset()}\n冷却时间{cooldown:%s}秒\n\n可以击退无盾连长、恶魔宿主\n解控：击退扑倒玩家的狗、抓着玩家啃的混沌卵\n但是对变种人、纳垢兽、网子这类的抓取无效" end}, -- talent_name:Feel No Pain toughness_replenish:+25%. cooldown:30. -- colors s->seconds
--____________________________________________________Keystone 2 Modifier 2
 --{	id = "talent_tree_ogr_keys2_002_en", -- Strongest!
	-- loc_keys = {"loc_talent_ogryn_carapace_armor_add_stack_on_push",},
--	 locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "最强壮!" end},
 {	id = "talent_tree_ogr_keys2_002_desc_en",
	 loc_keys = {"loc_talent_ogryn_carapace_armor_add_stack_on_push_desc",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "推搡命中敌人可恢复{#color(255,255,140)}1{#reset()}层{talent_name:%s}buff\n\n即使推击命中多个敌人，每次也只给1层." end}, -- talent_name:Feel No Pain.
--____________________________________________________Keystone 2 Modifier 3
 --{	id = "talent_tree_ogr_keys2_003_en", -- Toughest!
--	 loc_keys = {"loc_talent_ogryn_carapace_armor_more_toughness",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "最坚韧!" end},
 {	id = "talent_tree_ogr_keys2_003_desc_en",
	 loc_keys = {"loc_talent_ogryn_carapace_armor_more_toughness_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "每层{talent_name:%s}额外获得{toughness_regen:%s}的全{#color(32,178,170)}韧性{#reset()}恢复量，加法叠加\n\n2人时5.625（每秒）、3人时8.4375（每秒）、4人时11.25（每秒）\n近战击杀韧性恢复量：5→5.75→8.25%\n老兵战吼：50→57.5→82.5" end}, -- talent_name:Feel No Pain toughness_regen:+2.5%. -- colors

--____________________________________________________Keystone 3
-- {	id = "talent_tree_ogr_keys3_000_en", -- Burst Limiter Override
--	 loc_keys = {"loc_talent_ogryn_chance_to_not_consume_ammo",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "爆限超载爆发限制覆写" end},
 {	id = "talent_tree_ogr_keys3_000_desc_en",
	 loc_keys = {"loc_talent_ogryn_blo_new_alt_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "远程攻击时有{proc_chance:%s}的几率触发幸运子弹buff，触发时玩家开火的那一发子弹不消耗弹药（臂铠的特殊近战攻击不触发该特性）\n\n当玩家使用远程直击、爆炸效果击杀敌人时（dot击杀、远程武器的近战模式击杀不算），每个击杀堆叠1层buff，每层增加{#color(255,255,140)}{ranged_damage:%s}{#reset()}远程直击、爆炸伤害（乘法叠加，不加成dot）堆叠上限{#color(255,255,140)}{stacks:%s}{#reset()}层，持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n\n叠满后实际增伤为12.9%\n\n对2、5连喷来说，如果左键开火时触发效果，那么3发子弹都算作不消耗\n\n对于机枪来说效果不明显，但是对于榴弹、臂铠、单喷来说额外一发子弹是质变，在开火的瞬间会打出两发榴弹、霰弹（但如果单喷不架枪，额外子弹的后坐力会非常飘）\n\n{#color(230,60,0)}BUG：连喷6在左键触发2连射效果时，偶尔只能获得1发子弹而不是2发{#reset()}\n\n{#color(230,60,0)}BUG：1.9补丁后又可以无限弹药了，连喷、重机枪、双联重机枪即使没有弹药，狂按左键也有几率成功开火{#reset()}" end}, -- proc_chance:5%. -- colors
--____________________________________________________Keystone 3 Modifier 1
-- {	id = "talent_tree_ogr_keys3_001_en", -- Maximum Firepower
	-- loc_keys = {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Maximum Firepower" end},
{	id = "talent_tree_ogr_keys3_001_desc_en",
	loc_keys = {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "幸运子弹buff触发时，在{duration:%s}秒内加快大招{cooldown_reduction:%s}的冷却速度" end}, -- cooldown_reduction:+200% duration:2. -- colors s->seconds
--____________________________________________________Keystone 3 Modifier 2
 --{	id = "talent_tree_ogr_keys3_002_en", -- Good Shootin'
--	 loc_keys = {"loc_talent_ogryn_critical_leadbelcher",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "好枪法 精准枪法" end},
{	id = "talent_tree_ogr_keys3_002_desc_en",
	loc_keys = {"loc_talent_ogryn_critical_leadbelcher_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "触发幸运子弹时，该次攻击被视为{#color(255,255,140)}暴击{#reset()}\n\n连射武器触发时，会根据武器种类不同，产生不同的连爆效果，比如机枪暴击时，后续6发都会暴击，连喷则是3发\n\n注意是基石算暴击，而不是暴击算基石，所以如果不是为了必要的武器祝福（魅惑子弹、箭弹），就不需要堆暴击\n\n榴弹产生暴击时，爆炸伤害会增加30%，对于目前无敌的榴弹BD来说堆暴击也是个玩法" end}, -- colors
--____________________________________________________Keystone 3 Modifier 3
 --{	id = "talent_tree_ogr_keys3_003_en", -- More Burst Limiter Overrides!
--	 loc_keys = {"loc_talent_ogryn_increased_leadbelcher_chance",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "超限大爆发!" end},
-- {	id = "talent_tree_ogr_keys3_003_desc_en",
--	 loc_keys = {"loc_talent_ogryn_increased_leadbelcher_chance_desc",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "超限爆发的触发几率从8%提升至{proc_chance:%s}" end}, -- proc_chance:8%. -- colors
 {	id = "talent_tree_ogr_keys3_003_1_desc_en", --退后！Back Off!
	 loc_keys = {"loc_talent_ogryn_blo_melee_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家使用近战武器、远程武器的近战模式击杀敌人后增加{#color(255,255,140)}1层{#reset()}（不管单次击杀多少敌人，每次只叠加1层buff），每层可以提高幸运子弹{#color(255,255,140)}{chance:%s}{#reset()}的触发几率，堆叠上限{#color(255,255,140)}{stacks:%s}{#reset()}层\n开枪后不论是否触发幸运子弹，buff都会消失，等下次重新叠\n因为幸运子弹的基础数据是15，所以你堆叠9层就是100%，不过其实8层的95%已经基本等于必出\n\n该特效只有你的远程武器子弹最少为1发的时候才能触发，彻底打空为0的时候无法触发幸运子弹\n\n{#color(230,60,0)}BUG：暴力粉碎技能和任意药剂的buff会导致该技能图标消失不见，但实际有效果{#reset()}" end}, -- proc_chance:8%. -- colors
 {	id = "talent_tree_ogr_keys3_003_2_desc_en", --Heat of Battle激烈的战斗 战斗狂热
	 loc_keys = {"loc_talent_ogryn_blo_fire_rate_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "每层{talent_name:%s}都会增加{#color(255,255,140)}{fire_rate:%s}{#reset()}的射速，叠加上限{#color(255,255,140)}15%{#reset()}\n\n不影响榴弹和单喷这类弹夹只有1发的武器，影响它们射速的是换弹速度" end}, -- proc_chance:8%. -- colors
 {	id = "talent_tree_ogr_keys3_003_3_desc_en", --子弹风暴Bulletstorm
	 loc_keys = {"loc_talent_ogryn_blo_ally_ranged_buffs_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当触发幸运子弹时，欧格林自身，以及连携范围内的队友，远程直击、爆炸伤害{#color(255,255,140)}{ranged_damage:%s}{#reset()}（不加成dot），持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n\n榴弹直击997+3270，换弹后变为1093+3586，实际增伤为9.7%" end}, -- proc_chance:8%. -- colors
-- ==============================================================PASSIVES
-- {	id = "talent_tree_ogr_pas_000_en", -- Furious
	-- loc_keys = {"loc_talent_ogryn_damage_per_enemy_hit_previous",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Furious" end}, 毁灭乐趣
 {	id = "talent_tree_ogr_pas_000_desc_en",
	 loc_keys = {"loc_talent_ogryn_damage_per_enemy_hit_previous_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "你的单次近战攻击每命中一个敌人，就会获得一层近战直击伤害增加{damage:%s}的buff\n叠加上限{#color(255,255,140)}10层{#reset()}\n你的下一次近战攻击会消耗所有层数，并享受这次伤害增幅效果" end}, -- damage:+2.5%. -- colors
 --{	id = "talent_tree_ogr_pas_001_en", -- Reloaded and Ready
--	 loc_keys = {"loc_talent_ogryn_ranged_damage_on_reload",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "换弹完毕 重装就绪" end},
 {	id = "talent_tree_ogr_pas_001_desc_en",
	 loc_keys = {"loc_talent_ogryn_ranged_damage_on_reload_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "远程武器换弹后，在{duration:%s}秒内增加{damage:%s}远程武器直击、爆炸伤害（对dot无效），上限1层不叠加\n\n机枪的魅惑子弹祝福不算装弹\n\n榴弹直击997+3270，换弹后变为1093+3586，实际增伤为9.7%" end}, -- damage:+12% duration:6. -- colors s->seconds
-- {	id = "talent_tree_ogr_pas_002_en", -- The Best Defence
	-- loc_keys = {"loc_talent_ogryn_toughness_on_multiple",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "最好的防御 最佳防御" end},
 {	id = "talent_tree_ogr_pas_002_desc_en",
	 loc_keys = {"loc_talent_ogryn_toughness_on_multiple_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战武器的蓄力重击（部分远程武器的近战模式也行），如果单次命中了最少{#color(255,255,140)}2个{#reset()}敌人，那么恢复玩家{#color(255,255,140)}{heavy_toughness:%s}{#reset()}的{#color(32,178,170)}韧性{#reset()}，如果该次攻击造成了击杀（比如杀2个），则恢复5X2+15=25%\n\n近战武器的轻击（部分远程武器的近战模式也行），如果单次命中了最少{#color(255,255,140)}2个{#reset()}敌人，那么恢复玩家{toughness:%s}的{#color(32,178,170)}韧性{#reset()}，如果该次攻击造成了击杀（比如杀2个），则恢复5X2+5=15%\n\n连携类的加成对此技能无效，但会受到毒雷-30%影响，毒气因子+50%影响\n\n远程武器的近战攻击模式按重击算\n\n{#color(230,60,0)}BUG：干草机代码杀不算{#reset()}" end}, -- toughness:25%. -- colors
-- {	id = "talent_tree_ogr_pas_003_en", -- Heavyweight
	-- loc_keys = {"loc_talent_ogryn_ogryn_fighter",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Heavyweight" end}, --重量级
{	id = "talent_tree_ogr_pas_003_desc_en",
	loc_keys = {"loc_talent_ogryn_ogryn_fighter_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家对欧格林敌人造成的伤害增加{damage:%s}\n欧格林敌人对玩家造成的伤害降低{damage_reduction:%s}\n\n欧格林敌人：{#color(255,155,55)}粉碎者、堡垒、收割者、瘟疫欧格林、猎群之主{#reset()}\n\n欧格林自带的被动技能：\n\n厚皮：{#color(255,255,140)}+20%{#reset()}全伤害抗性，以及{#color(255,255,140)}+25%{#reset()}韧性伤害抗性。也就是20%血量抗性和40%韧性抗性，厚皮与其他抗性乘法叠加\n\n闪避：闪避后的0.25秒内，{#color(255,255,140)}+50%{#reset()}全伤害抗性（乘法叠加）\n\n援助之手：在救起队友的动画期间，即使欧格林受到生命值伤害也不会打断动画，并且拉人期间敌人造成的击飞效果降低90%，会更难让欧格林脱离救人动画（但是不免疫牛、纳垢兽的抓取，自爆人和boss的击飞也难以抗衡）\n移除欧格林在携带重物时的减速效果（电池、容器等抱着跑的携带物）\n\n滚开：当玩家闪避时，以玩家自身为中心，1.5米半径内触碰到的非精英、非特殊、并且是人类大小的敌人时，会根据其质量等级决定是将其击飞（尸潮小僵尸）还是踉跄（血痂格斗者）\n连续闪避时，击飞效果会减弱" end}, -- damage:+30% damage_reduction:+30%. -- colors
 --{	id = "talent_tree_ogr_pas_004_en", -- Steady Grip 稳定握持
	-- loc_keys = {"loc_talent_ogryn_toughness_regen_while_bracing",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "稳定握持" end},
 {	id = "talent_tree_ogr_pas_004_desc_en",
	 loc_keys = {"loc_talent_ogryn_toughness_regen_while_bracing_or_shooting_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "腰射或者按右键使用远程武器瞄准的时候，每秒钟恢复{toughness_regen:%s}的{#color(32,178,170)}韧性{#reset()}\n\n只要保持架枪动作就会持续恢复，不会被敌人攻击打断\n\n如果点了左下角的百折不挠被动，当欧格林处于半血以下时，每秒恢复{#color(255,255,140)}26.086%{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n连携类的加成对此技能无效，但会受到毒雷-30%影响，毒气因子+50%影响\n\n{#color(230,60,0)}BUG：因为换弹期间不生效，所以对于单喷和榴弹来说，有加强但不多{#reset()}" end}, -- toughness_regen:+2%. -- colors
 --{	id = "talent_tree_ogr_pas_005_en", -- Smash 'Em!
--	 loc_keys = {"loc_talent_ogryn_toughness_on_single_heavy",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "碾碎他们!" end},
 {	id = "talent_tree_ogr_pas_005_desc_en",
	 loc_keys = {"loc_talent_ogryn_toughness_on_single_heavy_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战武器的蓄力重击（部分远程武器的近战模式也行），如果单次命中了最多{#color(255,255,140)}1个{#reset()}敌人，那么恢复玩家{#color(255,255,140)}{heavy_toughness:%s}{#reset()}的{#color(32,178,170)}韧性{#reset()}，如果该次攻击造成了击杀，则恢复5+15=20%\n\n近战武器的轻击（部分远程武器的近战模式也行），如果单次命中了最多{#color(255,255,140)}1个{#reset()}敌人，那么恢复玩家{toughness:%s}的{#color(32,178,170)}韧性{#reset()}，如果该次攻击造成了击杀，则恢复5+5=10%\n\n连携类的加成对此技能无效，但会受到毒雷-30%影响，毒气因子+50%影响\n\n远程武器的近战攻击模式按重击算\n\n{#color(230,60,0)}BUG：干草机代码杀不算{#reset()}" end}, -- toughness:25%. -- colors
-- {	id = "talent_tree_ogr_pas_006_en", -- Lynchpin 关键
	-- loc_keys = {"loc_talent_ogryn_coherency_toughness_increase",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Lynchpin" end},
 {	id = "talent_tree_ogr_pas_006_desc_en",
	 loc_keys = {"loc_talent_ogryn_coherency_toughness_increase_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家自身的连携{#color(32,178,170)}韧性{#reset()}恢复量增加{toughness_multiplier:%s}\n\n如果配合3个30%韧性恢复饰品，每秒连携韧性恢复量：\n2人时3.75→7.5→10.875\n3人时5.625→11.25→16.3125\n4人时7.5→15→21.75\n连携韧性恢复延迟：1.5秒→0.768秒\n\n连携光环：这是一个以玩家自身为中心，半径8米的球形空间，在这个空间内有两个玩家时，连携韧性的恢复效果启用，玩家自定义的特殊光环效果也可以在两个角色间启用（比如回弹药、增伤、减CD），法务官职业的狗子如果点了光辉也能给予韧性恢复的连携特效。\n\n部分职业有连携光环范围+50%的效果，提示至12米，但指的是你可以给更远范围的队友加成，而你想吃到队友的加成还得靠近他8米内" end}, -- toughness_multiplier:+50%. -- colors
 {	id = "talent_tree_ogr_pas_007_1_desc_en", --打回老家！ Beat Them Back
	 loc_keys = {"loc_talent_ogryn_melee_damage_after_heavy_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "蓄力近战命中敌人后，玩家自身的近战直击伤害增加{#color(255,255,140)}{melee_damage:%s}{#reset()}\n持续{#color(255,255,140)}{duration:%s}{#reset()}秒" end}, -- stagger:+25%. -- colors
 {	id = "talent_tree_ogr_pas_007_2_desc_en", --精准一击 Strike True
	 loc_keys = {"loc_talent_ogryn_weakspot_damage_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战弱点伤害增加{#color(255,255,140)}{damage:%s}{#reset()}（全局伤害）\n能量是最终乘法计算，这里乘以1.1会大幅度提高弱点伤害的效果，相比别的100%弱点伤害只有30%的提升，这里的10%会是实打实的伤害加成" end}, -- stagger:+25%. -- colors
-- {	id = "talent_tree_ogr_pas_007_en", -- Slam
--	 loc_keys = {"loc_talent_ogryn_melee_stagger",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "猛击" end},
 {	id = "talent_tree_ogr_pas_007_3_desc_en", -- 痛击slam
	 loc_keys = {"loc_talent_ogryn_melee_stagger_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战武器攻击造成的踉跄增加{stagger:%s}\n当欧格林的近战攻击使敌人进入踉跄状态时，可以恢复{#color(255,255,140)}{stamina:%s}{#reset()}的体力，冷却{#color(255,255,140)}{cooldown:%s}{#reset()}秒\n\n远程武器的近战攻击模式也算，冲锋大招可以踉跄敌人和boss所以也能回体力\n\n近战武器的推搡不算，近战无法踉跄boss所以打boss不会回体力，嘲讽大招不算近战攻击所以虽然能踉跄但是不会回体力" end}, -- stagger:+25%. -- colors
{	id = "talent_tree_ogr_pas_007_4_desc_en", --野蛮巨力 Brutish Strength
	 loc_keys = {"loc_talent_ogryn_pushing_applies_brittlenes_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "使用近战武器按右键后再按左键的推搡攻击命中敌人时，敌人会受到{#color(255,255,140)}{stacks:%s}{#reset()}层脆弱debuff效果（全队生效），每层{#color(255,255,140)}2.5%{#reset()}\n\n叠加上限{#color(255,255,140)}40%{#reset()}\n\n玩家每次推搡能覆盖到的不只是一个敌人，而是你自身360度范围内都能覆盖到，可以每次脆弱一堆敌人" end}, -- stagger:+25%. -- colors
{	id = "talent_tree_ogr_pas_007_5_desc_en", --替小不点们复仇！For the Lil'Uns
	 loc_keys = {"loc_talent_ogryn_protect_allies_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当盟友韧性被打空时，玩家自身获得{#color(255,255,140)}{power:%s}{#reset()}的能量伤害（包括dot的全伤害增幅）、{#color(255,255,140)}{toughness_damage_reduction:%s}{#reset()}的韧性抗性，持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n冷却{#color(255,255,140)}{cooldown:%s}{#reset()}秒\n\n当盟友被击倒趴在地上时，玩家自身获得眩晕免疫\n与被绑着、坠崖扒边、倒在地上、被网住的队友，按E时的交互动画加快{#color(255,255,140)}{revive_speed:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}{#reset()}秒" end}, -- stagger:+25%. -- colors
{	id = "talent_tree_ogr_pas_007_6_desc_en", --四肢发达Simple Minded
	 loc_keys = {"loc_talent_ogryn_corruption_resistance_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "腐化抗性提升{#color(255,255,140)}{resistance:%s}{#reset()}\n\n游戏中敌人造成的腐化伤害会扣除玩家的生命最大值\n3个饰品给予的15%腐蚀抗性是乘法叠加，技能的这个也是乘法\n0.85X0.85X0.85X0.6=63%的腐蚀抗性" end}, -- stagger:+25%. -- colors
{	id = "talent_tree_ogr_pas_007_7_desc_en", --牢不可破Unbreakable
	 loc_keys = {"loc_talent_ogryn_block_all_attacks_variant_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "你的完美格挡可以格挡所有攻击，当你完成了一次完美格挡后，在{#color(255,255,140)}5秒{#reset()}内的下次近战攻击获得{#color(255,255,140)}{damage:%s}{#reset()}伤害加成\n\n完美格挡指的是敌人攻击命中你前的{#color(255,255,140)}0.3秒{#reset()}内，手持近战武器时成功按下右键挡住敌人的近战攻击，格挡远程必须带盾牌\n\n这个技能很强大，可以挡住罐头砸地板，BOSS砸地板冲锋等近战（狗子、网子、牛、混沌卵、纳垢兽等的抓取攻击不行），但问题在于肥鲨的服务器不稳定，单机你还能控制，联机只能看脸" end}, -- stagger:+25%. -- colors
{	id = "talent_tree_ogr_pas_007_8_desc_en", --集中猛攻Concentrate
	 loc_keys = {"loc_talent_ogryn_drain_stamina_for_handling_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "在按右键架起远程武器的同时，减少{#color(255,255,140)}{sway_reduction:%s}{#reset()}的摇摆，减少{#color(255,255,140)}{spread_reduction:%s}{#reset()}的散布，减少{#color(255,255,140)}{recoil_reduction:%s}{#reset()}的后坐力\n体力每秒损失{#color(255,255,140)}{stamina:%s}{#reset()}，体力耗尽技能失效\n\n单喷、榴弹、臂铠基本毫无区别，两种机枪和连喷改变很大" end}, -- stagger:+25%. -- colors
{	id = "talent_tree_ogr_pas_007_9_desc_en", --火力全开 Fire Away
	 loc_keys = {"loc_talent_ogryn_explosions_burn_close_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "爆炸中心范围内的敌人受到{#color(255,255,140)}{more_stacks:%s}{#reset()}层燃烧\n爆炸外层范围内受到{#color(255,255,140)}{stacks:%s}{#reset()}层燃烧\n叠加上限{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n\n燃烧倍率：无甲不屈150%，防弹狂人虚空100%，硬壳10%，感染125%\n\n生效范围：胖男孩、手雷箱、榴弹发射器、臂铠右键开火、臂铠特殊冲拳（仅限有弹药时）\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数\n\n{#color(230,60,0)}BUG：肥鲨特地强调了电棍的爆炸不会造成燃烧，但是忠诚纽带更新后变得可以点燃敌人了{#reset()}" end}, -- stagger:+25%. -- colors
-- {	id = "talent_tree_ogr_pas_008_en", -- Soften Them Up
--	 loc_keys = {"loc_talent_ogryn_targets_recieve_damage_increase_debuff",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "挫敌锐气" end},
 {	id = "talent_tree_ogr_pas_008_desc_en",
	loc_keys = {"loc_talent_ogryn_targets_recieve_damage_increase_debuff_new_desc",},
    locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "受到玩家近战攻击过的敌人，受到的所有伤害增加{damage:%s}（全队打他都生效，包括dot）\n\n持续{duration:%s}秒" end}, -- damage:+15% duration:5. -- colors
-- {	id = "talent_tree_ogr_pas_009_en", -- Crunch!
	-- loc_keys = {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Crunch!" end},
{	id = "talent_tree_ogr_pas_009_desc_en", -- 暴力粉碎
	loc_keys = {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "长按鼠标左键蓄力，该次近战攻击的伤害随时间增加，每0.25秒堆叠1层（镐子0.2秒），叠加上限4层\n每层堆叠7.5%近战伤害与7.5%踉跄\n最多增加至{damage:%s}的伤害、{stagger:%s}的踉跄\n\n{#color(230,60,0)}BUG：肥鲨搞错了调用代码，实际上应用了助推的数据，这导致了蓄力期间每层堆叠10%的伤害和踉跄，堆满40%\n\n与助推加法叠加，和助推一样叠层数不吃攻速加成\n\n自动蓄力mod无法识别该技能{#reset()}" end}, -- damage:+40% stagger:+40%. -- colors &
 --{	id = "talent_tree_ogr_pas_010_en", -- Batter
--	 loc_keys = {"loc_talent_ogryn_bleed_on_multiple_hit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "重殴" end}, 接续猛击
 {	id = "talent_tree_ogr_pas_010_desc_en",
	 loc_keys = {"loc_talent_ogryn_heavy_bleeds_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "受到欧格林近战武器蓄力重击命中的敌人（远程武器的部分近战模式也行），会获得{#color(255,255,140)}+4{#reset()}层流血异常状态\n\n受到欧格林近战武器轻击攻击命中的敌人（远程武器的部分近战模式也行），会获得{#color(255,255,140)}{stacks:%s}{#reset()}层流血异常状态\n\n流血上限16层，0.5秒一跳，持续1.5秒（跳3次掉1层），倍率：无甲感染50%，防弹不屈75%，玩家狂人虚空100%，硬壳25%\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数\n\n远程武器的近战攻击模式按重击算" end}, -- stacks:+4. -- colors
 --{	id = "talent_tree_ogr_pas_011_en", -- Pacemaker 标兵
--	 loc_keys = {"loc_talent_ogryn_reload_speed_on_multiple_hits",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "领跑者" end},
{	id = "talent_tree_ogr_pas_011_desc_en",
	loc_keys = {"loc_talent_ogryn_reload_speed_on_multiple_hits_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在{#color(255,255,140)}0.5{#reset()}秒内使用近战或远程攻击命中、推搡踉跄、冲锋碰到、爆炸冲击波碰到{multi_hit:%s}个以上的敌人时，玩家换弹速度加快{reload_speed:%s}（与其他乘法叠加）\n\n正常大招期间榴弹只能射击8次\n绝不停手、标兵、武器专长10%，其中任意两个组合，都可以在大招期间射击9次，但即使3个都装上也是9次\n如果只有单一的15%、10%射速加成，那么和没有加成一样都是只能打8发，因为暴击会影响伤害，所以加点上要么两个换弹都点，要么两个都不点\n\n{#color(230,60,0)}BUG：正常情况下敌人身上的dot不会触发技能，但是1.9.2补丁后dot也能触发了{#reset()}" end}, -- multi_hit:5 reload_speed:+25% duration:5. -- s->seconds
 --{	id = "talent_tree_ogr_pas_012_en", -- Ammo Stash
--	 loc_keys = {"loc_talent_ogryn_increased_ammo",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "弹药储存包" end},
 {	id = "talent_tree_ogr_pas_012_desc_en",
	 loc_keys = {"loc_talent_ogryn_increased_ammo_desc",},
	 locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "弹药携带上限提升{max_ammo:%s}" end}, -- max_ammo:+25%.
-- {	id = "talent_tree_ogr_pas_013_en", -- Hard Knocks 沉重打击
	-- loc_keys = {"loc_talent_ogryn_big_bully_heavy_hits",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Hard Knocks" end},
 {	id = "talent_tree_ogr_pas_013_desc_en",
	 loc_keys = {"loc_talent_ogryn_big_bully_heavy_hits_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "对敌人进行近战攻击命中并造成踉跄后，该敌人获得一个debuff：\n当敌人处于踉跄状态时，受到近战攻击会有{damage:%s}的伤害加成（全队生效）\n\n持续{duration:%s}秒" end}, -- damage:+1%. stacks:25. duration:10. -- colors s->seconds Notice!
 --{	id = "talent_tree_ogr_pas_014_en", -- Too Stubborn to Die 百折不挠
--	 loc_keys = {"loc_talent_ogryn_toughness_gain_increase_on_low_health",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "百折不挠" end},
 {	id = "talent_tree_ogr_pas_014_desc_en",
	 loc_keys = {"loc_talent_ogryn_toughness_gain_increase_on_low_health_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家的生命值低于{health:%s}时，玩家技能、近战击杀、武器祝福的{#color(32,178,170)}韧性{#reset()}恢复效果增加{toughness_multiplier:%s}，比如近战击杀恢复量5%提升至10%，稳定握持的每秒13%变成26%\n不加成连携韧性恢复\n\n连携光环类的加成对此技能无效，但会受到毒雷-30%影响，毒气因子+50%影响" end}, -- toughness_multiplier:+100% health:25%. -- colors
--{	id = "talent_tree_ogr_pas_015_en", -- Delight in Destruction
--	 loc_keys = {"loc_talent_ogryn_damage_reduction_per_bleed",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "以破坏为乐" end},
{	id = "talent_tree_ogr_pas_015_desc_en",
	loc_keys = {"loc_talent_ogryn_damage_reduction_per_bleed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身半径{#color(255,255,140)}12.5米{#reset()}内，每个流血的敌人都会为自己增加{damage_reduction:%s}全伤害抗性（血量与韧性，内部加法叠加，与其他乘法叠加）\n最多叠加{max_stacks:%s}层，上限{#color(255,255,140)}30%{#reset()}\n\n游戏每秒检测一次周围有几个流血敌人，以决定为玩家叠加几层buff（换句话说，持续时间是1秒）" end}, -- damage_reduction:+10%. max_stacks:6. -- colors
{	id = "talent_tree_ogr_pas_015_1_desc_en", --狂乱猛击Frenzied Blows
	loc_keys = {"loc_talent_ogryn_stacking_attack_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "连续命中敌人时，近战攻击速度加快{#color(255,255,140)}{attack_speed:%s}{#reset()}，堆叠上限{#color(255,255,140)}{stacks:%s}{#reset()}层，持续{#color(255,255,140)}5{#reset()}秒\n攻速同样会影响重击蓄力的速度\n\n{#color(230,60,0)}BUG：1.4补丁后不显示图标，顺便说下这个版本大量技能不显示图标，或者图标异常消失等问题存在，不影响技能正常生效{#reset()}" end}, -- damage_reduction:+10%. max_stacks:6. -- colors
{	id = "talent_tree_ogr_pas_015_2_desc_en", --先敲再炸 Bash and Blast
	loc_keys = {"loc_talent_ogryn_melee_improves_ranged_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战击杀增加{#color(255,255,140)}{damage:%s}{#reset()}的远程直击伤害\n最大堆叠数{#color(255,255,140)}{max_stacks:%s}{#reset()}层，上限15%\n持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n{#color(230,60,0)}BUG：干草机击杀不算{#reset()}" end}, -- damage_reduction:+10%. max_stacks:6. -- colors
-- {	id = "talent_tree_ogr_pas_016_en", -- Attention Seeker
--	 loc_keys = {"loc_talent_ranged_enemies_taunt",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "渴求关注" end},
{	id = "talent_tree_ogr_pas_016_desc_en",
	loc_keys = {"loc_talent_ranged_enemies_taunt_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "格挡敌人的攻击，或者推搡敌人，都可以使其受到嘲讽效果，持续{duration:%s}秒\n\n虽然也是嘲讽，但是无法同步触发中线大招分支的嘲讽增伤25%效果，并且嘲讽持续时间与大招相互独立计算，重复格挡、推搡敌人无法重置嘲讽的持续时间\n\n必须装备盾牌才能触发格挡远程攻击嘲讽敌人的效果，当远程敌人被嘲讽时会放弃远程攻击，转而靠近欧格林使用近战攻击（包括连长也会）\n\n1.4新增的索敌{#color(230,60,0)}BUG：狙击手、血痂渣滓喷火兵被嘲讽时，只会站在原地踢腿8秒，不会移动和攻击\n血痂炮手、渣滓炮手、收割者受到嘲讽时，只会向欧格林持续开火直到换弹（没有近战武器）{#reset()}" end}, -- duration:8. -- s->seconds
{	id = "talent_tree_ogr_pas_015_3_desc_en", --专注训练 Dedicated Practice
	loc_keys = {"loc_talent_ogryn_wield_speed_increase_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "1、2、3、4、5号位的装备切换速度加快{#color(255,255,140)}{wield_speed:%s}{#reset()}" end}, -- damage_reduction:+10%. max_stacks:6. -- colors
{	id = "talent_tree_ogr_pas_015_4_desc_en", --不许伤害我的朋友！ No Hurting Friends!
	loc_keys = {"loc_talent_ogryn_damage_taken_by_all_increases_strength_tdr_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你或者连携中的队友受到任意伤害时（掉血掉韧都算），每次堆叠{#color(255,255,140)}1{#reset()}层，堆叠上限{#color(255,255,140)}{stacks:%s}{#reset()}层，持续{duration:%s}秒\n每层你自身获得{#color(255,255,140)}{strength:%s}{#reset()}的全伤害增幅，上限为{#color(255,255,140)}10%{#reset()}\n达到最大堆叠时，还会获得{#color(255,255,140)}{tdr:%s}{#reset()}的韧性抗性加成" end}, -- damage_reduction:+10%. max_stacks:6. -- colors
-- {	id = "talent_tree_ogr_pas_017_en", -- Get Stuck In
	-- loc_keys = {"loc_talent_ogryn_bull_rush_movement_speed",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Get Stuck In" end},
 {	id = "talent_tree_ogr_pas_017_desc_en",
	 loc_keys = {"loc_talent_ogryn_ability_movement_speed_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "开启大招后，欧格林自身，与欧格林“连携光环”范围内的盟友，将获得{movement_speed:%s}移动速度，持续{time:%s}秒，并且在持续期间内免疫眩晕和远程压制效果" end}, -- movement_speed:+20% time:4. -- & s->seconds
-- {	id = "talent_tree_ogr_pas_018_en", -- Towering Presence 铁塔气场
	-- loc_keys = {"loc_talent_ogryn_bigger_coherency_radius",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Towering Presence" end},
 {	id = "talent_tree_ogr_pas_018_desc_en",
	 loc_keys = {"loc_talent_ogryn_bigger_coherency_radius_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "欧格林自身的连携光环范围增加{radius:%s}，从8米提升至14米\n\n即使队友没点过光环范围天赋，玩家也可以强行获取队友的光环主被动效果，同样你自身光环的主被动效果会也分享给队友\n比如牢兵、狂信在14米处战吼、开祷，本来你是吃不到金盾的，但是点了技能就可以吃到" end}, -- radius:+50%.
-- {	id = "talent_tree_ogr_pas_019_en", -- Unstoppable Momentum
--	 loc_keys = {"loc_talent_ogryn_ranged_kill_grant_movement_speed",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "势不可挡" end},
 {	id = "talent_tree_ogr_pas_019_desc_en",
	 loc_keys = {"loc_talent_ogryn_ranged_kill_grant_movement_speed_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "造成远程击杀后，提升{movement_speed:%s}移动速度，持续{duration:%s}秒\n武器直击、石头砸死等都算" end}, -- movement_speed:+20% duration:2. -- s->seconds
 --{	id = "talent_tree_ogr_pas_020_en", -- No Stopping Me!
--	 loc_keys = {"loc_talent_ogryn_windup_is_uninterruptible",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
	-- return "谁敢拦我!" end},
 {	id = "talent_tree_ogr_pas_020_desc_en",
	 loc_keys = {"loc_talent_ogryn_windup_is_uninterruptible_unslowed_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "近战蓄力期间不会被普通攻击打断蓄力动作，但是对击飞、抓取无效\n蓄力期间不降低玩家移速" end},
-- {	id = "talent_tree_ogr_pas_021_en", -- Dominate
	-- loc_keys = {"loc_talent_ogryn_rending_on_elite_kills",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Dominate" end},
 {	id = "talent_tree_ogr_pas_021_desc_en",
	 loc_keys = {"loc_talent_ogryn_rending_on_elite_kills_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "欧格林亲自以近战、远程、dot等任何方式击杀一个精英敌人后，欧格林自身的近战武器、远程武器、手雷获得{rending_multiplier:%s}撕裂效果，持续{duration:%s}秒\n\n{#color(230,60,0)}BUG：干草机代码杀不算{#reset()}\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n比如左轮手枪基础40%撕裂+10%就是50%撕裂，如果罐头已经受到过其他的脆弱效果（40%），那么就是40+10+40=90%撕裂，对于无甲感染自身来说，100%就是上限，没有额外增伤" end}, -- rending_multiplier:+15% duration:10. -- colors s->seconds
-- {	id = "talent_tree_ogr_pas_022_en", -- Payback Time
--	 loc_keys = {"loc_talent_ogryn_revenge_damage",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "报复时间" end}, 
 {	id = "talent_tree_ogr_pas_022_1_desc_en",
	 loc_keys = {"loc_talent_ogryn_revenge_damage_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当敌人使用近战攻击对欧格林造成韧性或者血量伤害时\n或者玩家成功格挡、闪避敌人的近战、远程攻击时（格挡远程需要盾牌）\n\n欧格林获得{damage:%s}能量（全伤害增幅，近战、远程、dot）\n\n持续{duration:%s}秒\n\n炮手、狙击、喷火、自爆、火焰dot、毒气等造成的伤害不算" end}, -- damage:+20% duration:5. -- colors s->seconds
 {	id = "talent_tree_ogr_pas_022_2_desc_en", --Pumped Up 一鼓作气
	 loc_keys = {"loc_talent_ogryn_damage_reduction_on_high_stamina_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家的体力大于上限的{#color(255,255,140)}{stamina:%s}{#reset()}时，玩家自身获得{#color(255,255,140)}{damage_taken:%s}{#reset()}全伤害抗性（韧性与血量）" end}, -- damage:+20% duration:5. -- colors s->seconds
 {	id = "talent_tree_ogr_pas_022_3_desc_en", --Focused Fighter 专注斗士
	 loc_keys = {"loc_talent_ogryn_melee_attacks_give_mtdr_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家的近战攻击命中敌人时，堆叠{#color(255,255,140)}1{#reset()}层对近战攻击伤害抗性为{#color(255,255,140)}{reduction:%s}{#reset()}的buff，堆叠最大{#color(255,255,140)}{stacks:%s}{#reset()}层，上限{#color(255,255,140)}20%{#reset()}\n\n当玩家受到敌人近战攻击并造成伤害时（血量韧性都算），移除所有层数，并根据当前层数减免敌人造成的近战伤害" end}, -- damage:+20% duration:5. -- colors s->seconds
 {	id = "talent_tree_ogr_pas_022_4_desc_en", --Strongman 强壮肉体
	 loc_keys = {"loc_talent_ogryn_damage_reduction_after_elite_kill_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "玩家以任意方式击杀1个精英、专家敌人时，获得{#color(255,255,140)}1{#reset()}层{#color(255,255,140)}{damage_reduction:%s}{#reset()}的全伤害抗性（血量与韧性），叠加上限1层\n\n持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(255,155,55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}\n\n{#color(230,60,0)}BUG：干草机代码杀不算{#reset()}" end}, -- damage:+20% duration:5. -- colors s->seconds
 {	id = "talent_tree_ogr_pas_022_5_desc_en", --Can't Hit Me..Again 再来！
	 loc_keys = {"loc_talent_ogryn_ranged_damage_immunity_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家受到一次远程攻击后，在接下来的{#color(255,255,140)}{duration:%s}{#reset()}秒内，对远程攻击增加{#color(255,255,140)}{resistance:%s}{#reset()}的伤害抗性\n这一特性有{#color(255,255,140)}{cooldown:%s}{#reset()}秒的冷却\n\n注意受到远程攻击触发buff的那一次伤害不会被减免，减伤是接下来的2.5秒，2.5秒走完才会开始冷却4秒" end}, -- damage:+20% duration:5. -- colors s->seconds
 {	id = "talent_tree_ogr_pas_022_desc_en", --Keep Shooting 绝不停手
	 loc_keys = {"loc_talent_ogryn_reload_speed_on_empty_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "弹匣打空后，换弹速度加快{#color(255,255,140)}{reload_speed:%s}{#reset()}\n\n正常大招期间榴弹只能射击8次\n绝不停手、标兵、武器专长10%，其中任意两个组合，都可以在大招期间射击9次，但即使3个都装上也是9次\n如果只有单一的15%、10%射速加成，那么和没有加成一样都是只能打8发，因为暴击会影响伤害，所以加点上要么两个换弹都点，要么两个都不点" end}, -- damage:+20% duration:5. -- colors s->seconds
 --{	id = "talent_tree_ogr_pas_023_en", -- Bruiser 巨汉
	-- loc_keys = {"loc_talent_ogryn_cooldown_on_elite_kills",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
--	 return "格斗兵" end},
 {	id = "talent_tree_ogr_pas_023_desc_en",
	 loc_keys = {"loc_talent_ogryn_cooldown_on_elite_kills_new_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当欧格林自身，或者欧格林连携光环范围内的盟友，杀死精英敌人时，欧格林自身大招冷却加快{#color(255,255,140)}{cooldown_regen:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n简单来说就是正常时间过3秒，大招恢复6秒，大招充能速度快了一倍\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(230,60,0)}BUG：干草机击杀不算" end}, -- cooldown:5%. -- colors
-- {	id = "talent_tree_ogr_pas_024_en", -- Big Boom
	-- loc_keys = {"loc_talent_ogryn_increase_explosion_radius",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Big Boom 大爆炸" end},
 {	id = "talent_tree_ogr_pas_024_desc_en",
	 loc_keys = {"loc_talent_ogryn_increase_explosion_radius_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "欧格林的所有爆炸范围增加{explosion_radius:%s}，会同时增加中心、最远、压制半径，压制半径啥都不触发就不写了\n\n基础范围→技能提升范围：\n胖男孩：中心2→2.55、最远16→20.4\n手雷箱：中心2→2.55、最远8→10.2\n榴弹：中心2.8→3.57、最远9→11.48\n臂铠炸：中心1.5→1.91、最远5.4→6.89\n爆炸拳：中心1.9→2.42、最远4.5→5.74\n电棍：中心2.8→3.57、最远7.2→9.18\n\n基础→技能+大爆炸：\n手雷箱：中心2→2.55、最远8→10.2\n榴弹：中心2.8→4.41、最远9→14.18" end}, -- explosion_radius:+22.5%.
-- {	id = "talent_tree_ogr_pas_025_en", -- Massacre 屠杀
--	 loc_keys = {"loc_talent_ogryn_crit_chance_on_kill",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "大屠杀" end},
 {	id = "talent_tree_ogr_pas_025_1_desc_en",
	 loc_keys = {"loc_talent_ogryn_crit_chance_on_kill_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "使用任意方式造成击杀，可获得一层{crit_chance:%s}暴击率加成，持续{duration:%s}秒，堆叠上限{max_stacks:%s}层\n\n叠满16%近战与远程暴击\n\n榴弹暴击时，爆炸伤害会增加30%，所以榴弹BD也可以堆暴击" end}, -- crit_chance:+1% duration:6. max_stacks:8. -- colors s->seconds
 {	id = "talent_tree_ogr_pas_025_desc_en", --先射再砍Spray and Slay
	 loc_keys = {"loc_talent_ogryn_ranged_improves_melee_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "当玩家打空弹夹后，获得{#color(255,255,140)}{damage:%s}{#reset()}近战伤害加成、{#color(255,255,140)}{attack_speed:%s}{#reset()}近战攻击速度加成，持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n对于单喷和榴弹来说可以频繁触发该特效" end}, -- crit_chance:+1% duration:6. max_stacks:8. -- colors s->seconds
 {	id = "talent_tree_ogr_pas_025_2_desc_en", --好运连连 Lucky Streak
	 loc_keys = {"loc_talent_ogryn_crit_damage_increase_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "暴击伤害增加{#color(255,255,140)}{crit_damage:%s}{#reset()}\n\n肥鲨的弱点、暴击伤害加成与其他游戏不同，并不是给你总伤害乘以1.75，而是只把你暴击额外增伤的那一小部分（基础系数0.3）乘以1.75。比如榴弹，就是从基础的0.3暴击倍率，变成了0.525暴击倍率\n\n榴弹打不屈的实际数据：\n命中身体：384+3270\n暴击身体：499+4251\n好运暴身：585+4987\n命中头部：997+3270\n暴击头部：1151+4251\n好运暴头：1438+4987\n\n也就是你点了这个天赋后，暴击伤害只比原来的暴击高了17.3%" end}, -- crit_chance:+1% duration:6. max_stacks:8. -- colors s->seconds
-- {	id = "talent_tree_ogr_pas_026_en", -- Implacable
	-- loc_keys = {"loc_talent_ogryn_windup_reduces_damage_taken",},
	--locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Implacable" end},
-- {	id = "talent_tree_ogr_pas_026_desc_en",
--	 loc_keys = {"loc_talent_ogryn_windup_reduces_damage_taken_desc",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "近战攻击蓄力期间，欧格林获得全伤害减免{damage_taken_multiplier:%s}（与其他乘法叠加）\n轻击的某些移动、出刀动画也会有极短的时间生效" end}, -- damage_taken_multiplier:+15%. -- colors
-- {	id = "talent_tree_ogr_pas_027_en", -- No Pushover
--	 loc_keys = {"loc_talent_ogryn_blocking_reduces_push_cost",},
--	locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "不动如山" end},
 {	id = "talent_tree_ogr_pas_027_desc_en",
	 loc_keys = {"loc_talent_ogryn_empowered_pushes_desc",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "你按右键挡反的踉跄值提升{#color(255,255,140)}{push_impact_modifier:%s}{#reset()}，内置冷却时间{#color(255,255,140)}{cooldown:%s}{#reset()}秒\n可以踉跄某些原本推不动的敌人，比如纳垢赐福的绿色罐头，变种人和BOSS别想了不可能" end}, -- push_cost_multiplier:20% duration:5. -- s->seconds
-- {	id = "talent_tree_ogr_pas_028_en", -- Won't Give In
--	 loc_keys = {"loc_talent_ogryn_tanky_with_downed_allies",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "绝不屈服" end},
{	id = "talent_tree_ogr_pas_028_desc_en",
	loc_keys = {"loc_talent_ogryn_tanky_with_downed_allies_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每当有一个{range:%s}米范围内的队友被打到在地、挂在墙上等待救援、被敌人控制（混沌卵抓取、纳垢兽吞噬、陷井手网缠住、变种人抓住、狗咬）时，欧格林自身获得{damage_taken:%s}全伤害抗性（最多加法叠加到60%，与其他减伤乘法叠加）\n\n如果队友彻底死亡，或者超过20米范围，那么加成消失" end}, -- damage_taken:+20% range:20. -- colors
-- {	id = "talent_tree_ogr_pas_029_en", -- Mobile Emplacement
--	 loc_keys = {"loc_talent_ogryn_bracing_reduces_damage_taken",},
--	 locales = {"zh-cn",},
--	 handle_func = function(locale, value)
--	 return "机动部署" end},移动炮台
{	id = "talent_tree_ogr_pas_029_desc_en",
	loc_keys = {"loc_talent_ogryn_bracing_or_shooting_reduces_damage_taken_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当欧格林使用远程武器，在持续腰射或者按住右键瞄准期间，敌人对欧格林造成的所有伤害降低{damage_taken_multiplier:%s}（血量与韧性，与其他乘法叠加）" end}, -- damage_taken_multiplier:-15%. -- colors
------------------------------------------------------------------------------------
--法务官
{	id = "talent_tree_ada_pas_500_1_desc_en", --远程伤害强化 Ranged Damage Boost
	loc_keys = {"loc_talent_ranged_damage_medium_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "提升玩家自身{#color(255,255,140)}{ranged_damage:%s}{#reset()}远程伤害增加\n\n包括电击、电手、充能打击、电杖右键这类dot\n\n不包括燃烧、流血、魂火这类dot，阵杖右键、手雷榴弹这类范围爆炸" end}, 
{	id = "talent_tree_ada_pas_500_2_desc_en", --近战伤害强化 Melee Damage Boost
	loc_keys = {"loc_talent_melee_damage_boost_medium_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "提升玩家自身{#color(255,255,140)}{melee_damage:%s}{#reset()}近战伤害增加\n\n不包括燃烧、流血、魂火、电击、电杖右键这类dot，阵杖右键、手雷榴弹这类范围爆炸" end}, 
{	id = "talent_tree_ada_pas_500_3_desc_en", --法务官护甲 Arbitrator Armour
	loc_keys = {"loc_talent_adamant_armor_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "提升玩家自身{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}上限\n\n以下是狗子的简单介绍\n狗子是个跟随玩家的NPC，他有自己的一套伤害逻辑，它本体造成的伤害是不受玩家加成的。本体的撞击、撕咬不享受属于玩家的增伤buff，包括不限于技能、光环、针剂、武器祝福\n本身是无敌的，有三种攻击模式：撞击、撞击啃咬、扑倒撕咬，跳向敌人有1.5秒CD\n\n撞击：无甲160，防弹160，感染400，狂人400，不屈400，硬壳240，虚空盾0\n变种人、自爆、瘟疫猎犬、粉碎者、收割者、盾卫、恶魔宿主\n血痂连长、渣滓连长、双子连长（对盾没伤害，破盾后按防弹算）\n恶魔宿主、仪式宿主在未苏醒的时候标记不会咬，苏醒后才会撞它\n狗攻击上面这些目标时，扑上去只是撞一下造成踉跄，不会一直啃咬，狗爆技能很难抓时机\n\n撞击啃咬：不屈400\n瘟疫欧格林、混沌卵、纳垢兽\n狗攻击这些目标时，扑在身上后会趴四秒，咬一口就会离开（方便你使用狗子炸boss踉跄）\n\n扑倒撕咬：防弹160，无甲狂人200\n其他所有敌人都可以强控，只要你不改变目标，可以咬到死\n猎犬的持续啃咬实际上是个dot，每隔1.33秒造成一次伤害，单次最多咬18口" end}, 
{	id = "talent_tree_ada_pas_500_4_desc_en", --塑钢护甲
	loc_keys = {"loc_talent_adamant_plasteel_plates_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "提升玩家自身{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}上限\n\n以下是狗子的简单介绍\n\n狗子的自动索敌范围是以玩家为圆心半径16米内的区域，而首选范围是半径6米内玩家正面视角180°内的敌人\n狗子的距离上限是最远100米被玩家标记的敌人，攻击持续时间上限是25秒（标记消失）\n\n默认攻击优先级：正在攻击玩家的狗、变种人、混沌卵、纳垢兽、宿主→近战精英→远程精英→专家→普通\n\n玩家受控期间仍然可以标记敌人让狗咬\n\n狗子游走的时候，有个0.5米半径的碰撞体积，碰到的敌人会轻微踉跄\n狗扑起跳的时候，在路径上造成半径1米的踉跄\n当狗扑碰到敌人的时候（或者没打中落地），会对无法扑倒的非BOSS级敌人造成持续2.5秒的高踉跄（连长虽然不是boss，但也不会造成踉跄）\n\n注意狗子是可以追上高台上的狙击手、手雷哥，只要你能标记，他就能找路跳上去咬死" end}, 
{	id = "talent_tree_ada_pas_500_desc_en", --无路可逃 No Escape
	loc_keys = {"loc_talent_adamant_elite_special_kills_offensive_boost_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身或者玩家的狗子，在击杀精英或专家敌人后，提升玩家自身{#color(255,255,140)}{damage:%s}{#reset()}能量（全局伤害），提升{#color(255,255,140)}{movement_speed:%s}{#reset()}移动速度。持续{#color(255,255,140)}{duration:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_501_desc_en", --无情火力 Withering Fire
	loc_keys = {"loc_talent_adamant_damage_after_reloading_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "装弹后，玩家自身的远程直击伤害提升{#color(255,255,140)}{damage:%s}{#reset()}。持续{#color(255,255,140)}{duration:%s}秒{#reset()}，重复触发不叠加但重置持续时间\n\n几乎算是霰弹枪的专属被动了，每次换弹都能触发一次，装填特殊弹药也算" end}, 
{	id = "talent_tree_ada_pas_502_desc_en", --审判之锤 Hammer of Judgement
	loc_keys = {"loc_talent_adamant_multiple_hits_attack_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身使用近战武器命中{#color(255,255,140)}{hits:%s}个{#reset()}或以上的敌人后，自身攻击速度提升{#color(255,255,140)}{melee_attack_speed:%s}{#reset()}。持续时间{#color(255,255,140)}{duration:%s}秒{#reset()}。" end}, 
{	id = "talent_tree_ada_pas_503_desc_en", --钢颚模块 Razor-Jaw Augment
	loc_keys = {"loc_talent_adamant_dog_pounces_bleed_nearby_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家标记敌人后，在智能獒犬飞扑过程中的半径{#color(255,255,140)}0.5米{#reset()}范围内，以及撞击落点的半径{#color(255,255,140)}2米{#reset()}范围内，对这些敌人造成一次{#color(255,255,140)}{stacks:%s}层{#reset()}的流血异常状态\n\n如果敌人无法被扑倒，那么群体流血不生效——比如欧格林、各种boss\n\n因为猎犬的持续啃咬不造成流血效果，所以要频繁触发流血效果，需要玩家手动反复标记多个敌人\n\n流血上限16层，0.5秒一跳，持续1.5秒（初始跳3次掉1层，之后每跳掉1层），倍率：无甲感染50%~175，防弹不屈75%~263，狂人虚空100%~350，硬壳25%~87.5\n对猎群之主无效\n\n狗子算是一个独特的友军NPC单位，它造成的流血伤害，不吃玩家的武器专长、祝福（包括高压电处决等）、能量、针剂、光环加成，享受敌人的debuff加成（脆弱、碎颅）\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数" end}, 
{	id = "talent_tree_ada_pas_504_desc_en", --目标消除  Target Neutralised
	loc_keys = {"loc_talent_adamant_elite_special_kills_replenish_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身或者玩家的狗子，在击杀精英或专家敌人后，立刻恢复{#color(255,255,140)}{instant_toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}。并在{#color(255,255,140)}{duration:%s}秒{#reset()}内，以每秒{#color(255,255,140)}2.5%{#reset()}的速度持续恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n这个后续4秒恢复是老兵同款的无限叠加，你击杀10个就叠加10层的“4秒内恢复10%韧性”" end}, 
{	id = "talent_tree_ada_pas_505_desc_en", --抵近射击 Up Close
	loc_keys = {"loc_talent_adamant_close_kills_restore_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身使用近战、远程、手雷、猎犬击杀一个{#color(255,255,140)}12.5米{#reset()}内的敌人后，立刻恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n正常近战击杀韧性恢复量是5%，带上这个技能就是10%\n\n没有单次回复上限，击杀多少回多少，你拿手雷炸死20个瞬间回满" end}, 
{	id = "talent_tree_ada_pas_506_desc_en", --意志之力 Force of Will
	loc_keys = {"loc_talent_adamant_staggers_replenish_toughness_melee_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身使用近战武器命中敌人（右线大招命中也算），并且对敌人造成踉跄时，立刻恢复自身{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n每次不管命中多少敌人，只计算一次韧性恢复\n\n如果玩家携带了电棍，那么很容易触发电击踉跄效果，罐头盾卫都可以恢复，boss就别想了" end}, 
{	id = "talent_tree_ada_pas_507_desc_en", --反击之力 Retaliatory Force
	loc_keys = {"loc_talent_adamant_perfect_block_damage_boost_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "格挡敌人攻击的体力消耗降低{#color(255,255,140)}{block_cost:%s}{#reset()}\n\n完美格挡后，玩家自身获得{#color(255,255,140)}{damage:%s}{#reset()}能量（全伤害加成），近战与远程武器的攻击动画速度加快{#color(255,255,140)}{attack_speed:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n完美格挡指的是敌人攻击命中你前的{#color(255,255,140)}0.3秒{#reset()}内，使用近战武器或盾牌左轮组合，按下右键成功挡住敌人的近战攻击" end}, 
{	id = "talent_tree_ada_pas_508_desc_en", --人犬一体 Man and Cyber-Mastiff
	loc_keys = {"loc_talent_adamant_toughness_regen_near_companion_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家自身处于智能獒犬{#color(255,255,140)}{range:%s}米{#reset()}内，且玩家不处于倒地、挂边、被网住、被狗咬、被变种人和混沌卵还有恶魔宿主抓着、被纳垢兽吞噬时，每秒恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}" end}, 
{	id = "talent_tree_ada_pas_509_desc_en", --重振旗鼓 Walk It Off
	loc_keys = {"loc_talent_adamant_stamina_spent_replenish_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身每消耗{#color(255,255,140)}{stamina:%s}{#reset()}体力，就会在随后的{duration:%s}秒内，以每秒{#color(255,255,140)}3.33%{#reset()}的速度，总共恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n{#color(230,60,0)}BUG：主手和副手武器体力不一样时，连切武器也会被计算成体力消耗，很好很强大{#reset()}" end}, 
{	id = "talent_tree_ada_pas_510_desc_en", --护盾板 Shield Plates
	loc_keys = {"loc_talent_adamant_shield_plates_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家自身成功格挡敌人的攻击时（格挡远程必须用盾牌），在{duration:%s}秒内以每秒5%的速度，持续恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}，重复触发刷新持续时间\n\n当玩家自身成功完美格挡敌人的攻击时，还能立即恢复{#color(255,255,140)}{perfect_toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}，内置冷却时间{#color(255,255,140)}{cooldown:%s}秒{#reset()}\n\n完美格挡指的是敌人攻击命中你前的{#color(255,255,140)}0.3秒{#reset()}内，使用近战武器或盾牌左轮组合，按下右键成功挡住敌人的近战攻击" end}, 
{	id = "talent_tree_ada_pas_511_desc_en", --远程引爆 Remote Detonation
	loc_keys = {"loc_talent_ability_detonate_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在智能獒犬的位置引发一次电弧爆炸，狗爆的爆炸中心{#color(255,255,140)}2米{#reset()}不衰减基础{#color(255,255,140)}600{#reset()}伤害，边缘衰减{#color(255,255,140)}4米{#reset()}基础{#color(255,255,140)}200{#reset()}伤害（4米处衰减为0），踉跄半径{#color(255,255,140)}5米{#reset()}造成2.5秒踉跄，压制半径{#color(255,255,140)}15米{#reset()}\n\n伤害倍率：无甲狂人100%，感染不屈虚空75%，防弹50%，硬壳20%\n\n使4米内的敌人进入{#color(255,255,140)}3秒{#reset()}触电状态，每0.2秒一跳，每跳64点基础伤害，并且持续期间敌人受到额外{#color(255,255,140)}10%{#reset()}伤害\n\n伤害倍率：无甲感染防弹虚空75%，不屈狂人100%，硬壳50%\n\n充能上限{#color(255,255,140)}{max_charges:%s}层{#reset()}，充能时间{#color(255,255,140)}{cooldown:%s}秒{#reset()}\n\n该次爆炸属于玩家主动触发，玩家当前处于捆绑、坠崖、趴下等状态时无法引爆\n\n享受玩家当前携带武器的部分专长、祝福、天赋、针剂等加成，举例：处决、高压电" end}, 
{	id = "talent_tree_ada_pas_512_desc_en", --电击地雷 Voltaic Shock Mine
	loc_keys = {"loc_talent_ability_shock_mine_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "投掷一枚{talent_name:%s}（最远丢15米），以每0.2秒一次的速度检测周围目标，当侦测到半径{#color(255,255,140)}{range:%s}米{#reset()}内有敌人出现时就会触发，强大的僵直可以控制除BOSS、变种人、自爆之外的所有敌人\n\n携带上限{#color(255,255,140)}2个{#reset()}，独狼可以带{#color(255,255,140)}3个{#reset()}\n拾取手雷箱补充地雷，独狼每隔{#color(255,255,140)}90秒{#reset()}恢复一枚\n\n放置的地雷如果在不被触发的情况下，能维持{#color(255,255,140)}150秒{#reset()}，之后会自动销毁，自毁造成半径2米的轻微踉跄\n\n地雷启动后能持续{#color(255,255,140)}{duration:%s}秒{#reset()}，发射没有数量限制的电击束攻击范围内被侦测到的敌人，单个电击束弹射最多4次，造成持续3秒、每0.5秒一跳，每跳8点伤害的触电debuff，持续时间结束后自毁\n\n地雷本体的直击如果碰到敌人，能触发部分祝福效果，比如爆弹枪刺穿造成单体4层流血效果\n\n地雷的持续电击能触发玩家自身的踉跄类天赋" end}, 
{	id = "talent_tree_ada_pas_513_desc_en", --法务部手雷 Arbites Grenade
	loc_keys = {"loc__talent_ability_adamant_grenade_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "投掷一枚触爆手雷，爆炸中心{#color(255,255,140)}2.5米{#reset()}不衰减基础{#color(255,255,140)}1500{#reset()}伤害，边缘衰减{#color(255,255,140)}10米{#reset()}基础{#color(255,255,140)}600{#reset()}伤害（4米处衰减为0），压制半径{#color(255,255,140)}15米{#reset()}\n\n倍率：无甲1653，感染1400+，防弹829，狂人1654，不屈2484，硬壳333，虚空495\n\n携带上限{#color(255,255,140)}3{#reset()}枚，独狼可以带{#color(255,255,140)}4{#reset()}枚\n拾取手雷箱补充手雷，独狼每隔{#color(255,255,140)}45秒{#reset()}恢复一枚\n\n手雷本体的直击如果碰到敌人，比如爆弹枪刺穿造成单体4层流血效果\n\n手雷的爆炸伤害跟随玩家，享受技能加成，如果你手快切到近战、远程武器，还能吃到祝福、专长加成\n\n{#color(230,60,0)}BUG：爆弹手枪的祝福致命距离可以增加25%爆炸范围：爆炸核心半径2.5→3.125米，最大半径10→12.5米，压制半径15→18.75米，致命距离对狗爆和电雷无效{#reset()}" end}, 
{	id = "talent_tree_ada_pas_514_desc_en", --法务部手雷强化 Arbites Grenade
	loc_keys = {"loc_talent_ability_adamant_grenade_improved_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "投掷一枚触爆手雷，爆炸中心{#color(255,255,140)}2.5米{#reset()}不衰减基础{#color(255,255,140)}1500{#reset()}伤害，边缘衰减{#color(255,255,140)}10米{#reset()}基础{#color(255,255,140)}600{#reset()}伤害（4米处衰减为0），压制半径{#color(255,255,140)}15米{#reset()}\n\n伤害倍率：无甲狂人100%，感染不屈虚空75%，防弹50%，硬壳20%\n\n携带上限{#color(255,255,140)}{charges:%s}{#reset()}枚，独狼可以带{#color(255,255,140)}5{#reset()}枚\n拾取手雷箱补充手雷，独狼每隔{#color(255,255,140)}45{duration:%s}秒{#reset()}恢复一枚\n\n手雷本体的直击如果碰到敌人，比如爆弹枪刺穿造成单体4层流血效果\n\n手雷的爆炸伤害跟随玩家，享受技能加成，如果你手快切到近战、远程武器，还能吃到祝福、专长加成\n\n{#color(230,60,0)}BUG：爆弹手枪的祝福致命距离可以增加25%爆炸范围：爆炸核心半径2.5→3.125米，最大半径10→12.5米，压制半径15→18.75米，致命距离对狗爆和电雷无效{#reset()}" end}, 
{	id = "talent_tree_ada_pas_515_desc_en", --电颚模块 Voltaic Mandibles Augment
	loc_keys = {"loc_talent_adamant_dog_attacks_electrocute_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "智能獒犬在攻击敌人时，造成每0.3~0.8秒一跳的电击效果（一般默认0.5秒方便计算），持续时间{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n电击基础伤害57.5：无甲53，感染42，防弹105，狂人84，不屈84，硬壳72，虚空54\n对猎群之主无效\n\n牛、狗、连长、BOSS这些无法扑倒的目标，会在每次撞击时附加电击效果，最多维持6~10次就会消失，并且电击伤害在4次后逐渐衰减\n可以扑倒的目标会一直维持最高电击伤害\n\n该天赋对狗子来说是非常棒的补伤害手段，直接让输出翻倍还多，正常咬死小罐头需要25秒，点了这个只需要10.5秒\n\n狗子的基础伤害虽然不受玩家的技能、祝福、专长加成，但模块和引爆还是受到这些加成的，特别是能量增幅" end}, 
{	id = "talent_tree_ada_pas_516_desc_en", --震荡冲击 Concussive
	loc_keys = {"loc_talent_adamant_melee_weakspot_hits_count_as_stagger_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家亲自使用近战武器命中敌人弱点后，敌人视为被一个伪造的踉跄状态（碎颅增伤0%但算作被踉跄），持续{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n用比较简单的话来说，法棍平A罐头无法触发电击,必须特殊模式给他上电，但有了这个祝福平A就能电它\n\n因为敌人处于被踉跄状态，所以被该天赋命中的BOSS级敌人，也可以对其叠加碎颅效果（正常只有无盾连长和纳垢兽可以）：第一次命中是给敌人挂上震荡冲击debuff，从第二击开始玩家可以为其添加碎颅debuff，如果是电棍充能命中弱点可以一次性叠满8层碎颅debuff，队伍中任何队友对其攻击都能获得碎颅者的增伤效果" end}, 
{	id = "talent_tree_ada_pas_517_desc_en", --战犬鼓舞 Canine Morale 
	loc_keys = {"loc_talent_adamant_pinning_dog_kills_buff_allies_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家亲自击或猎犬击杀一个被猎犬扑倒的敌人后，为玩家自身以及猎犬连携范围（{#color(255,255,140)}8{#reset()}米）内的友军，提供{#color(255,255,140)}{tdr:%s}{#reset()}韧性伤害减免，并使其在{duration:%s}秒内以每秒{#color(255,255,140)}2%{#reset()}的速度，总共恢复{#color(255,255,140)}{toughness:%s}{#reset()}韧性\n\n该被动只计算能被狗扑倒在地上撕咬的敌人\n后续的韧性恢复不会叠加，重复触发只会重置持续时间" end}, 
{	id = "talent_tree_ada_pas_518_desc_en", --压制之力 Imposing Force
	loc_keys = {"loc_talent_adamant_damage_reduction_after_elite_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家亲自击或猎犬击杀精英或专家敌人后，获得{#color(255,255,140)}{damage_reduction:%s}{#reset()}全伤害抗性（血量与韧性），持续{#color(255,255,140)}{duration:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_519_desc_en", --强力压制 Suppression Force
	loc_keys = {"loc_talent_adamant_staggered_enemies_deal_less_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家亲自击或猎犬成功踉跄敌人后，使他们的伤害减少{#color(255,255,140)}{damage:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_520_desc_en", --压制协议 Suppression Protocols
	loc_keys = {"loc_talent_adamant_hitting_multiple_gives_tdr_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家亲自使用近战、远程武器、狗爆技能，当一次性命中{hits:%s}名或以上的敌人时（推搡也算），获得1层{#color(255,255,140)}{tdr:%s}{#reset()}韧性伤害减免，持续{#color(255,255,140)}{duration:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_521_desc_en", --战术协同 Part of the Squad
	loc_keys = {"loc_talent_adamant_companion_coherency_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "你的智能獒犬算作一名连携的友军，在其8米内时享受连携光环恢复效果\n\n连携恢复量（每秒）：2人时3.75、3人时5.625、4人时7.5、5人时9.375、6人时11.25、7人时13.125、8人时15\n\n韧性恢复饰品带3个：2人时3.75→7.1、3人时5.625→10.6875、4人时7.5→14.25、5人时9.375→17.8125、6人时11.25→21.375、7人时13.125→24.9375、8人时15→28.5\n\n相同光环不叠加" end}, 
{	id = "talent_tree_ada_pas_522_desc_en", --战术协同强化 Part of the Squad
	loc_keys = {"loc_talent_adamant_companion_coherency_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "你的智能獒犬算作一名连携的友军，在其{#color(255,255,140)}8{#reset()}米内时享受连携光环恢复效果\n你和连携的友军额外获得{#color(255,255,140)}+7.5%{#reset()}韧性伤害减免（和小节点加法叠加）\n\n连携恢复量（每秒）：2人时3.75、3人时5.625、4人时7.5、5人时9.375、6人时11.25、7人时13.125、8人时15\n\n韧性恢复饰品带3个：2人时3.75→8.24、3人时5.625→12.36、4人时7.5→16.48、5人时9.375→20.6、6人时11.25→24.72、7人时13.125→28.84、8人时15→32.96\n\n相同光环不叠加，如果队友只带了基础光环，那么你的强化光环会覆盖它的低级光环" end}, 
{	id = "talent_tree_ada_pas_523_desc_en", --冷酷效率 Ruthless Efficiency
	loc_keys = {"loc_talent_adamant_reload_speed_aura_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "为玩家自身，以及连携光环范围内的队友，远程武器的装填速度提升{#color(255,255,140)}{reload_speed:%s}{#reset()}（乘法叠加）\n\n灵能法杖不享受任何加成\n\n12.5%的换弹加成实际上只加快4.2%左右换弹动画\n\n相同光环不叠加" end}, 
{	id = "talent_tree_ada_pas_524_desc_en", --打压异议 Breaking Dissent
	loc_keys = {"loc_talent_adamant_damage_vs_staggered_aura_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "为玩家自身，以及连携光环范围内的队友，对处于踉跄状态的敌人造成的伤害提升{#color(255,255,140)}{damage_vs_stagger:%s}{#reset()}\n\n变种人、自爆、连长外的BOSS，正常情况下最多吃10~30%的踉跄，如果有狗爆可以让纳垢兽、混沌卵、瘟疫欧格林进入2.5秒的80%踉跄增伤效果\n\n相同光环不叠加" end}, 
{	id = "talent_tree_ada_pas_525_desc_en", --释放野性 Unleashed Brutality
	loc_keys = {"loc_talent_adamant_cyber_mastiff_elites_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "你的智能獒犬将优先攻击精英和专家敌人\n并对它们造成{#color(255,255,140)}{damage:%s}{#reset()}额外伤害\n\n只对基础伤害、引爆生效，不影响电颚模块、钢颚模块\n\n血痂渣滓霰弹枪手、血痂渣滓炮手、血痂电台兵、血痂狂暴者、血痂重锤兵：扑倒撕咬160→200，引爆330→599\n\n渣滓狂暴者：扑倒撕咬200→250，引爆660→957\n\n收割者、盾卫：撞击400→500，引爆743→1436\n\n粉碎者：撞击240→300，引爆132→192\n\n{#color(230,60,0)}BUG：虽然写的是精英和专家，但实际上只有精英增伤{#reset()}\n\n基石之间加法叠加，碎颅这类祝福最后以乘法计算\n释放野性25+嗜血75+处决指令150\n释放野性25+杀戮指令50+处决指令150" end}, 
{	id = "talent_tree_ada_pas_526_desc_en", --独狼 Lone Wolf
	loc_keys = {"loc_talent_adamant_disable_companion_replenish_split_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "你不再携带智能獒犬，禁用大部分狗子天赋，闪击远程引爆无法使用\n韧性伤害减免{#color(255,255,140)}{tdr:%s}{#reset()}（与小节点、光环加法叠加）\n近战与远程攻击动画加快{#color(255,255,140)}{attack_speed:%s}{#reset()}\n提升{#color(255,255,140)}{damage:%s}{#reset()}能量（全局伤害加成）\n\n闪击能力获得额外{#color(255,255,140)}{charges:%s}次{#reset()}充能上限\n法务部手雷：每隔{#color(255,255,140)}{grenade_time:%s}秒{#reset()}恢复一次充能\n电击地雷：每隔{#color(255,255,140)}{time_shock_mine:%s}秒{#reset()}恢复一次充能\n\n{#color(230,60,0)}BUG：1.11.6补丁后出现，电雷实际冷却90秒，但动画没改还是45秒，必须转两圈才能恢复1颗雷{#reset()}\n\n{#color(230,60,0)}BUG：1.11.6补丁后出现，以女武神飞船过场动画的方式进入副本，而不是以倒计时60秒的方式进入副本时，携带上限+1会失效，变成只有3颗雷而不是4颗雷进图，当然上限依然是4个{#reset()}" end}, 
{	id = "talent_tree_ada_pas_527_desc_en", --追上他们! Go Get 'Em!
	loc_keys = {"loc_talent_adamant_cyber_mastiff_ranged_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "你的智能獒犬将优先攻击远程敌人，狗子的自动攻击半径上限从16米提升至45米，并对它们造成{#color(255,255,140)}{damage:%s}{#reset()}额外伤害\n\n只对基础伤害、引爆生效，不影响电颚模块、钢颚模块\n\n狙击手、血痂渣滓潜行者、血痂射手：扑倒撕咬200→300，引爆660→957\n\n血痂渣滓霰弹枪手、血痂渣滓炮手、血痂电台兵：扑倒撕咬160→240，引爆330→599\n\n血痂渣滓喷火兵：扑倒撕咬200→300，引爆660→957\n\n收割者：撞击400→500，引爆743→1436\n\n基石之间加法叠加，碎颅这类祝福最后以乘法计算\n追上他们50+嗜血75+处决指令150\n追上他们50+杀戮指令50+处决指令150\n\n{#color(230,60,0)}BUG：引爆的增伤不是50%而是25%，连长、网子姐、血痂渣滓手雷哥虽然是远程但并不增加伤害{#reset()}" end}, 
{	id = "talent_tree_ada_pas_528_desc_en", --惩戒者姿态 Castigator's Stance
	loc_keys = {"loc_talent_adamant_stance_ability_power_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "进入{talent_name:%s}状态\n韧性瞬间恢复{#color(255,255,140)}100%{#reset()}\n移动速度{#color(255,255,140)}{movement_speed:%s}{#reset()}（加法）\n{#color(255,255,140)}{damage_taken:%s}{#reset()}全伤害减免（乘法，血量与韧性）\n能量{#color(255,255,140)}{strength:%s}{#reset()}（全伤害增幅，乘法，最高贵的加成）\n所有武器动作导致的移动速度惩罚降低{#color(255,255,140)}{movement_reduction:%s}{#reset()}（比如蓄力、换弹减速）\n持续{#color(255,255,140)}{duration:%s}秒{#reset()}\n冷却时间{#color(255,255,140)}{cooldown:%s}秒{#reset()}\n\n该技能不免疫狗子、变种人、混沌卵、纳垢兽的抓取\n\n此状态下禁止玩家疾跑（shift），但是闪避后可接滑铲\n\n走路、跳跃每秒4米→4.6米\n跑步、跳跃每秒5.2米→禁止\n蹲伏速度每秒1.4米→1.61米\n攀爬速度每秒1.75米\n\n因为开技能瞬间就开始冷却，在不算针剂和技能减CD的情况下，两次技能之间的空档实际上是40秒" end}, 
{	id = "talent_tree_ada_pas_529_desc_en", --处决令状 Writ of Execution
	loc_keys = {"loc_talent_adamant_stance_elite_kills_stack_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在{stance_name:%s}生效期间，玩家亲自或猎犬每杀死一名精英或专家敌人时，玩家自身获得{#color(255,255,140)}{damage:%s}{#reset()}能量加成（包括dot在内全伤害增幅），持续{#color(255,255,140)}{duration:%s}秒{#reset()}，叠加上限{#color(255,255,140)}{stacks:%s}层{#reset()}\n\n每次击杀都能重置持续时间，所以最多维持增伤直到大招结束12秒后" end}, 
{	id = "talent_tree_ada_pas_530_desc_en", --受福武器 Blessed Armament
	loc_keys = {"loc_talent_adamant_stance_ranged_kills_transfer_ammo_no_cd_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在{stance_name:%s}生效期间，玩家亲自使用远程武器的直击伤害造成击杀后，可从弹药储备中向弹夹补充已损失弹药的{#color(255,255,140)}{ammo:%s}{#reset()}，数值向上取整（至少1发）\n\n每次攻击仅触发一次\n\n远程武器的近战戳动作、狗爆手雷、流血燃烧电击dot等造成的击杀不算\n\n枪版魅惑射击，爆弹枪开一枪打死敌人后恢复1发子弹\n值得注意的是，如果点了优先配给，爆弹枪开一枪杀死敌人就能恢复2发" end}, 
{	id = "talent_tree_ada_pas_531_desc_en", --嗜血 Bloodlust
	loc_keys = {"loc_talent_adamant_stance_bloodlust_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在{stance_name:%s}生效期间，你的猎犬基础伤害提升{#color(255,255,140)}{damage:%s}{#reset()}\n\n只对基础伤害生效，不影响电颚模块、远程引爆、钢颚模块\n\n防弹：扑倒撕咬160→280\n\n无甲、狂人：扑倒撕咬200→350\n\n不屈：撞击400→700\n\n硬壳：撞击240→420\n\n作战兴奋剂对狗子无效，因为是你扎针不是狗子扎针，你也不能对狗子扎任何针剂\n\n释放野性、追上他们与嗜血加法叠加，下面是释放野性配嗜血的加成\n\n血痂渣滓霰弹枪手、血痂渣滓炮手、血痂电台兵、血痂狂暴者、血痂重锤兵：扑倒撕咬160→320，引爆330→599\n\n渣滓狂暴者：扑倒撕咬200→400，引爆660→957\n\n收割者、盾卫：撞击400→800，引爆743→1436\n\n粉碎者：撞击240→480，引爆132→192" end}, 
{	id = "talent_tree_ada_pas_532_desc_en", --传谕天鹰 Nuncio-Aquila
	loc_keys = {"loc_talent_adamant_ability_nuncio_base_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "向目标方向部署一个传谕天鹰，长按可远距离部署（最远10米）\n使半径{#color(255,255,140)}7.5米{#reset()}内的友军每秒恢复{#color(255,255,140)}+5%{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n使半径{#color(255,255,140)}7.5米{#reset()}内的敌军受到额外{#color(255,255,140)}15%{#reset()}的伤害（敌人离开范围还会维持1秒）\n持续时间{#color(255,255,140)}20{duration:%s}秒{#reset()}\n冷却时间{#color(255,255,140)}60秒{#reset()}\n\n非常强大的团队辅助大招，可以让队友在敌人枪林弹雨中屹立不倒，也能大幅度削减敌人的战斗力\n扎CD针可以同时维持俩音阵，不过效果不叠加" end}, 
{	id = "talent_tree_ada_pas_533_desc_en", --传谕天鹰强化 Nuncio-Aquila
	loc_keys = {"loc_talent_ability_area_buff_drone_improved_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "向目标方向部署一个{nuncio_name:%s}，长按可远距离部署（最远10米）\n使半径{#color(255,255,140)}{range:%s}米{#reset()}内的友军每秒恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n远程武器压制提升{#color(255,255,140)}{suppression:%s}{#reset()}\n冲击提升{#color(255,255,140)}{impact:%s}{#reset()}\n免疫压制（敌人远程攻击让玩家镜头准星乱晃）、减速（蓄力和换弹）、击晕（打断动作）\n远程武器后坐力降低{#color(255,255,140)}{recoil:%s}{#reset()}\n\n使半径{#color(255,255,140)}{range:%s}米{#reset()}内的敌军受到额外{#color(255,255,140)}{damage_taken:%s}{#reset()}的伤害（敌人离开范围还会维持1秒）\n\n持续时间{#color(255,255,140)}{duration:%s}秒{#reset()}\n冷却时间{#color(255,255,140)}{cooldown:%s}秒{#reset()}\n\n远程压制仅对这些敌人生效：{#color(255,155,55)}呻吟者、装甲呻吟者、血痂射手、血痂渣滓潜行者、血痂渣滓炮手、收割者{#reset()}（看不懂就理解为小僵尸潮、枪兵、炮手）\n\n非常强大的团队辅助大招，可以让队友在敌人枪林弹雨中屹立不倒，也能大幅度削减敌人的战斗力\n扎CD针可以同时维持俩音阵，不过效果不叠加" end}, 
{	id = "talent_tree_ada_pas_534_desc_en", --激励宣讲 Inspiring Recitation
	loc_keys = {"loc_talent_adamant_drone_buff_talent_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "传谕天鹰范围内的友军：\n韧性伤害减免{#color(255,255,140)}{tdr:%s}{#reset()}（乘法叠加）\n近战与远程攻击动画{#color(255,255,140)}{attack_speed:%s}{#reset()}\n\n救人加速：与被绑着、坠崖扒边、倒在地上、被网住的队友，按E时的交互动画加快{#color(255,255,140)}{revive_speed:%s}{#reset()}\n\n扎CD针可以同时维持俩音阵，不过效果不叠加" end}, 
{	id = "talent_tree_ada_pas_535_desc_en", --正义之威 Fear of Justice
	loc_keys = {"loc_talent_adamant_drone_debuff_talent_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "传谕天鹰范围内的敌人遭到削弱\n敌人近战攻击动画间隔延长{#color(255,255,140)}{attack_speed_reduction:%s}{#reset()}，玩家格挡敌人攻击后，敌人的僵直动画也会延长\n敌人的近战伤害降低{#color(255,255,140)}{damage_reduction:%s}{#reset()}\n\n扎CD针可以同时维持俩音阵，不过效果不叠加" end}, 
{	id = "talent_tree_ada_pas_536_desc_en", --阵线突破 Break the Line
	loc_keys = {"loc_ability_adamant_charge_blocking_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "强制切换成近战武器，向前方冲锋{#color(255,255,140)}3.75米{#reset()}\n\n当玩家撞击到一个敌人，或者冲锋至极限距离时会停下来，然后以该位置为圆心，对正前方210°内的非BOSS级敌人造成大量踉跄，持续控场2.5秒\n\n从高空俯瞰的话，是玩家身后1米内，左右侧5米，正前方5米的一个截断一半的椭圆形，撞击击飞距离跟敌人质量有关，BOSS完全撞不动，小罐头最远飞4米\n\n使用技能后无论是否击中敌人都能获得buff\n玩家自身获得能量{#color(255,255,140)}{damage:%s}{#reset()}（近战、远程、dot、爆炸，但是狗子不享受），冲击{#color(255,255,140)}{stagger:%s}{#reset()}\n\n持续时间{#color(255,255,140)}{duration:%s}秒{#reset()}\n冷却时间{#color(255,255,140)}{cooldown:%s}秒{#reset()}\n\n该技能冲锋动画期间，玩家同时处于闪避与格挡状态，如果模型碰到到近战与远程伤害可触发部分格挡天赋、祝福，并且免疫网子、狗子的抓取，但是不免疫变种人、混沌卵、纳垢兽的抓取\n\n{#color(230,60,0)}BUG：1.81补丁后,冲锋会导致武器充能中断:大电棍、链锯剑;会导致霰弹枪装填过的特殊弹药消失(当然这点上来说,你装填过特殊弹药后,无论做什么操作都会消失,包括不限于拉闸、玩小游戏等等){#reset()}" end}, 
{	id = "talent_tree_ada_pas_537_desc_en", --裁决的嘉奖 Commendation from Condemnation
	loc_keys = {"loc_talent_adamant_charge_toughness_alt_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "阵线突破每击中一名精英、专家或怪物\n恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}、{#color(255,255,140)}{stamina:%s}{#reset()}体力\n最多恢复{#color(255,255,140)}{toughness_max:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}、{#color(255,255,140)}{stamina_max:%s}{#reset()}体力" end}, 
{	id = "talent_tree_ada_pas_538_desc_en", --精准残暴 Targeted Brutality
	loc_keys = {"loc_talent_adamant_charge_cooldown_alt_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "阵线突破命中敌人可以降低冷却时间\n普通敌人：{#color(255,255,140)}{cooldown:%s}秒{#reset()}\n精英、专家、怪物敌人：{#color(255,255,140)}{cooldown_elite:%s}秒{#reset()}\n上限{#color(255,255,140)}{max_cooldown}秒{#reset()}\n\n扎CD针的情况下即使不命中任何敌人，也可以在持续时间内冲锋4次\n\n{#color(230,60,0)}BUG：目前每个目标都按命中两次计算，经典的欧格林冲锋双倍bug{#reset()}" end}, 
{	id = "talent_tree_ada_pas_539_desc_en", --杀戮指令 Kill Order
	loc_keys = {"loc_talent_adamant_dog_damage_after_ability_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用阵线突破后\n智能獒犬基础伤害提升{#color(255,255,140)}{companion_damage:%s}{#reset()}伤害\n持续时间{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n只对基础伤害生效，不影响电颚模块、远程引爆、钢颚模块\n\n防弹：扑倒撕咬160→240\n\n无甲、狂人：扑倒撕咬200→300\n\n不屈：撞击400→600\n\n硬壳：撞击240→360\n\n释放野性、追上他们与杀戮指令加法叠加，下面是释放野性配杀戮指令的加成\n\n血痂渣滓霰弹枪手、血痂渣滓炮手、血痂电台兵、血痂狂暴者、血痂重锤兵：扑倒撕咬160→280，引爆330→599\n\n渣滓狂暴者：扑倒撕咬200→350，引爆660→957\n\n收割者、盾卫：撞击400→700，引爆743→1436\n\n粉碎者：撞击240→420，引爆132→192" end}, 
{	id = "talent_tree_ada_pas_540_desc_en", --推进 Engage
	loc_keys = {"loc_talent_adamant_charge_longer_distance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "阵线突破的冲锋距离从3.75米提升至{#color(255,255,140)}{distance:%s}{#reset()}米，虽然你无法改变冲锋方向，但可通过格挡、按后方向键取消冲锋" end}, 
{	id = "talent_tree_ada_pas_541_desc_en", --启示官 Arbites Revelatum
	loc_keys = {"loc_talent_adamant_dodge_grants_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "成功闪避一次敌人锁定你的攻击后，玩家自身提升{#color(255,255,140)}{damage:%s}{#reset()}能量（全局伤害），持续时间{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n{#color(230,60,0)}BUG：闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果{#reset()}" end}, 
{	id = "talent_tree_ada_pas_542_desc_en", --正当手段 Justified Measures
	loc_keys = {"loc_talent_adamant_stacking_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身或猎犬对敌人造成伤害后，叠加一层{#color(255,255,140)}{damage:%s}{#reset()}能量加成（包括dot在内全伤害增幅），仅对玩家自身生效，叠加上限{#color(255,255,140)}{stacks:%s}层{#reset()}，持续时间{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n{#color(230,60,0)}BUG：玩家自身给予敌人的流血、燃烧、魂火、电击dot都可以叠加这个buff，但是电棍的平A电击dot不行，必须是电棍特殊模式的电击{#reset()}" end}, 
{	id = "talent_tree_ada_pas_543_desc_en", --严守阵线 Hold the Line
	loc_keys = {"loc_talent_adamant_staggers_reduce_damage_taken_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身使用近战、远程、手雷、包括猎犬在内的等任意方式，命中敌人并造成踉跄后，自身获得{normal_stacks:%s}层{#color(255,255,140)}{damage_taken_multiplier:%s}{#reset()}全伤害抗性，叠加上限{#color(255,255,140)}{max_stacks:%s}层{#reset()}，持续时间{#color(255,255,140)}{duration:%s}秒{#reset()}，或受到近战攻击层数消失\n\n踉跄非人型敌人时，直接获得{#color(255,255,140)}5层{#reset()}\n\n非人型敌人：粉碎者、盾卫、收割者、瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主\n\n叠满时玩家获得14.13%的全伤害抗性" end}, 
{	id = "talent_tree_ada_pas_544_desc_en", --审慎高效 Judicious Efficiency
	loc_keys = {"loc_talent_adamant_elite_special_kills_reload_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身或猎犬击杀精英或专家敌人后，下一次远程武器装填速度提升{#color(255,255,140)}{reload_speed:%s}{#reset()}\n\n霰弹枪会持续到全部子弹换完，特殊弹换弹动画也受到加成，除非你手动停止换弹，也算玩爆弹必点的天赋" end}, 
{	id = "talent_tree_ada_pas_545_desc_en", --快速行动 Rapid Movement
	loc_keys = {"loc_talent_adamant_sprinting_sliding_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "滑铲后，疾跑速度提升{#color(255,255,140)}{speed:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n跑步、跳跃每秒5.2米→5.46米\n\n玩家自身或猎犬击杀敌人，恢复自身{#color(255,255,140)}{stamina:%s}{#reset()}体力，冷却时间{#color(255,255,140)}{cd:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_546_desc_en", --呼吸器 Rebreather
	loc_keys = {"loc_talent_adamant_rebreather_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "腐化抗性{#color(255,255,140)}{corruption:%s}{#reset()}，瘟疫毒气对你造成的伤害降低{#color(255,255,140)}{toxic_reduction:%s}{#reset()}\n\n游戏中敌人造成的腐化伤害会扣除玩家的生命最大值\n3个饰品给予的15%腐蚀抗性是乘法叠加，技能的这个也是乘法\n0.85X0.85X0.85X0.8=49.13%的腐蚀抗性，额外的毒气抗性让毒气伤害降低至12.2825%，对渣滓手雷哥、地图毒气因子、双子毒雷都有效\n\n渣滓毒雷哥的毒气每2秒3跳，伤害：韧性70→18→11、血量8→2→1.2\n\n当然其实你不点这个也行，毕竟单纯靠人犬一体和重振旗鼓也能毒气游泳不掉血" end}, 
{	id = "talent_tree_ada_pas_547_desc_en", --退下吧,混蛋们! Cower, Miscreants!
	loc_keys = {"loc_talent_adamant_damage_vs_suppressed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身对被远程压制的敌人，提升{#color(255,255,140)}{damage_vs_suppressed:%s}{#reset()}伤害\n\n远程压制仅对这些敌人生效：{#color(255,155,55)}呻吟者、装甲呻吟者、血痂射手、血痂渣滓潜行者、血痂渣滓炮手、收割者{#reset()}（看不懂就理解为小僵尸潮、枪兵、炮手）" end}, 
{	id = "talent_tree_ada_pas_548_desc_en", --帝皇之拳 The Emperor's Fist
	loc_keys = {"loc_talent_adamant_first_melee_hit_increased_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家亲自使用近战武器，每次攻击命中的第一个敌人，近战直击伤害{#color(255,255,140)}{damage:%s}{#reset()}，冲击{#color(255,255,140)}{impact:%s}{#reset()}" end}, 
{	id = "talent_tree_ada_pas_549_desc_en", --狂热献礼 Zealous Dedication
	loc_keys = {"loc_talent_adamant_crit_chance_on_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身或猎犬造成击杀后，玩家自身暴击率{#color(255,255,140)}{crit_chance:%s}{#reset()}，叠加上限{#color(255,255,140)}{max_stacks:%s}层{#reset()}，持续{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n基础7.5+武器专长5+技能16+基石10=常驻38.5暴击率" end}, 
{	id = "talent_tree_ada_pas_550_desc_en", --街头智士 Street Smarts
	loc_keys = {"loc_talent_adamant_dodge_improvement_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "有效闪避时间延长{#color(255,255,140)}{dodge_duration:%s}{#reset()}，基础0.2秒延长至{#color(255,255,140)}0.25{#reset()}秒\n\n闪避次数上限{#color(255,255,140)}{dodge:%s}{#reset()}\n\n闪避动画期间：玩家免疫敌人造成的近战与远程直击伤害，自身受到的韧性伤害降低50%（乘法叠加）\n闪避动画结束后的缓冲期：只免疫敌人造成的近战直击伤害，受到韧性伤害降低50%\n\n闪避期间只免疫直击，爆炸、燃烧地板等特殊伤害还是会蹭到掉韧性的\n\n当连续闪避时，头2次闪避距离为100%，第三次开始降低为50%，双手武器比如雷锤只有头1~2次是100%，拥有闪避次数+1的技能或祝福可以多一次100%的机会" end}, 
{	id = "talent_tree_ada_pas_551_desc_en", --击退他们! Drive them Back
	loc_keys = {"loc_talent_adamant_cleave_after_push_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身推击命中敌人后（无需使对方踉跄），玩家自身近战武器的劈裂值提升{#color(255,255,140)}{cleave:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n劈裂值提升可以让玩家的武器命中更多的敌人，但伤害也会逐渐衰减" end}, 
{	id = "talent_tree_ada_pas_552_1_desc_en", --选定目标 Target Selection
	loc_keys = {"loc_talent_adamant_pinning_dog_elite_damage",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "选定目标" end}, 
{	id = "talent_tree_ada_pas_552_desc_en", --优先目标 Target Selection
	loc_keys = {"loc_talent_adamant_pinning_dog_elite_damage_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身或猎犬，击杀被猎犬扑倒在地的精英或专家敌人后，玩家自身对精英或专家敌人的伤害提升{#color(255,255,140)}{damage:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}秒{#reset()}\n\n精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵\n\n专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手" end}, 
{	id = "talent_tree_ada_pas_553_desc_en", --灵魂扫描 Soulguilt Scan
	loc_keys = {"loc_talent_adamant_stacking_weakspot_strength_duration_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身命中敌人弱点后，玩家自身弱点强度加成{#color(255,255,140)}{strength:%s}{#reset()}，叠加上限{#color(255,255,140)}{max_stacks:%s}层{#reset()}，持续{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n弱点强度加成的意思是直接增加玩家命中弱点时造成的伤害，以此技能为例：直击爆头伤害350X1.02⁸=410，也就是说爆头伤害增加了17%" end}, 
{	id = "talent_tree_ada_pas_554_desc_en", --优先配给 Priority Endowment
	loc_keys = {"loc_talent_adamant_clip_size_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身远程武器的弹夹上限提升{#color(255,255,140)}{clip_size:%s}{#reset()}数值向上取整\n\n与弹药袋增加备弹量不同，这个技能是增加弹夹的大小，比如爆弹枪弹夹是15发，加成后变为18发" end}, 
--{	id = "talent_tree_ada_pas_554_1_desc_en", --荷枪实弹 Lock and Load
--	loc_keys = {"loc_talent_adamant_clip_size_alt_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "玩家自身远程武器的弹夹上限提升{#color(255,255,140)}+25%{#reset()}数值向上取整\n\n与弹药袋增加备弹量不同，这个技能是增加弹夹的大小，比如爆弹枪弹夹是15发，加成后变为19发" end}, 
{	id = "talent_tree_ada_pas_555_desc_en", --优先目标  Target Priority
	loc_keys = {"loc_talent_adamant_increased_damage_to_high_health_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身对生命值{#color(255,255,140)}{health:%s}{#reset()}以上的敌人，伤害提升{#color(255,255,140)}{damage:%s}{#reset()}\n\n可以给部分武器凑秒杀阈值,一发干掉某些精英、专家敌人" end}, 
{	id = "talent_tree_ada_pas_556_desc_en", --最后警告 Final Warning
	loc_keys = {"loc_talent_adamant_ranged_damage_on_melee_stagger_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身使用近战武器、远程武器的近战攻击模式，命中并且对敌人造成踉跄后，玩家自身的远程伤害提升{#color(255,255,140)}{damage:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_557_desc_en", --法律之重 Weight of the Lex
	loc_keys = {"loc_talent_adamant_heavy_attacks_increase_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身使用近战武器蓄力重击命中敌人后，玩家自身的近战或远程直击伤害提升{#color(255,255,140)}{damage:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_558_desc_en", --锯颚模块 Serrated Maw
	loc_keys = {"loc_talent_adamant_dog_applies_brittleness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "智能獒犬撞击敌人后，对单个敌人施加{#color(255,255,140)}{stacks:%s}{#reset()}层脆弱debuff效果（全队有效），每层{#color(255,255,140)}2.5%{#reset()}，叠加上限{#color(255,255,140)}40%{#reset()}，持续时间{#color(255,255,140)}5秒{#reset()}\n对猎群之主无效\n\n只有撞击的第一下才有撕裂效果，后续撕咬没有，所以对能扑倒的目标只有5秒内才有15%的撕裂加成，不过你可以在两个目标间连续标记，让狗来回扑叠加dot\n对于不能扑倒的目标，每次撞击都可以持续叠加撕裂效果直到40%上限（混沌卵、纳垢兽、瘟疫欧格林不行，因为狗来不及在5秒内扑第二下）\n\n如果叠加超过100%的部分算作四分之一增伤，比如140%破甲就等于（140%-100%）÷4=8%增伤），对于无甲感染自身来说，100%就是上限，没有额外增伤\n\n狗咬伤害增幅：无甲：撕咬200、电击53，感染：撕咬400、电击42，狂人：撕咬200→208、电击84→96，防弹：撕咬160→190、电击113→120，硬壳：撞击240→300、电击72→97，不屈：撞击400→430、电击91→102\n\n最大的效果是杀罐头的速度从19.5秒减少到12.5秒，小罐头从9秒加快到7秒，不过你亲自砍罐头也就5秒，爆弹一秒就打死了，相对来说锯颚模块没其他的效果好" end}, 
{	id = "talent_tree_ada_pas_559_desc_en", --诉讼 Prosecution Blow
	loc_keys = {"loc_talent_adamant_crits_rend_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身使用远程武器直击造成暴击且命中敌人后，该次伤害{#color(255,255,140)}{rending:%s}{#reset()}撕裂效果\n\n如果叠加超过100%的部分算作四分之一增伤，比如140%破甲就等于（140%-100%）÷4=8%增伤）" end}, 
{	id = "talent_tree_ada_pas_560_desc_en", --行军 March
	loc_keys = {"loc_talent_adamant_movement_speed_on_block_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身使用远程武器直击、手雷本体或手雷爆炸、地雷电击命中敌人后，玩家自身移动速度{#color(255,255,140)}{movement_speed:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_561_desc_en", --怪物猎手 Monstrosity Hunter
	loc_keys = {"loc_talent_adamant_monster_hunter_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身对欧格林和怪物伤害提升{#color(255,255,140)}{damage:%s}{#reset()}\n\n{#color(255,155,55)}欧格林与怪物敌人：粉碎者、堡垒、收割者、瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主{#reset()}\n\n{#color(230,60,0)}BUG：渣滓连长、血痂连长、近战双子连长、远程双子连长不属于任何标签，无法享受增伤{#reset()}" end}, 
{	id = "talent_tree_ada_pas_562_desc_en", --落井下石 Strike Down
	loc_keys = {"loc_talent_adamant_melee_attacks_on_staggered_rend_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身对处于踉跄状态中的敌人攻击时，玩家自身撕裂提升{#color(255,255,140)}{rending:%s}{#reset()}（近战、远程、手雷都生效）\n\n该技能可以加强玩家的近战开罐能力，因为是直接增强玩家武器倍率，所以可以和其他的40%脆弱之类正常叠加\n\n撕裂如果叠加超过100%的部分算作四分之一增伤，比如140%破甲就等于（140%-100%）÷4=8%增伤），对于无甲感染自身来说，100%就是上限，没有额外增伤" end}, 
{	id = "talent_tree_ada_pas_563_desc_en", --钢铁意志 True Grit
	loc_keys = {"loc_talent_adamant_limit_dmg_taken_from_hits_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身受到单次攻击时，无论该次伤害有多高，最多损失{#color(255,255,140)}{limit:%s}{#reset()}点生命值\n\n不减少韧性伤害，只是锁定单次血量减伤，比如狙击一发1225韧性+122.5血量，韧性部分受伤还是1225，血量部分只掉50\n\n如果敌人攻击分为多段（包括浩劫腐蚀加成），比如自爆人是50伤害+50腐蚀，那么会优先扣50腐蚀伤害，再扣50生命值，由于伤害限制所以只造成50腐蚀伤害\n当你带有3个腐蚀抗性饰品，你就不是直接被扣除50血上限（变紫色），而是先扣除30血上限（变紫色，再带个呼吸器是24），然后掉20血（26）" end}, 
{	id = "talent_tree_ada_pas_564_desc_en", --处决指令 Execution Order
	loc_keys = {"loc_talent_execution_order_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每隔3秒以紫色轮廓标记敌人，范围是玩家为圆心半径40米，正面210°内，只会标记精英、专家、怪物、连长敌人，只要敌人不离开玩家40米半径标记就不会消失\n\n猎犬攻击命中被标记的敌人时，智能獒犬伤害{#color(255,255,140)}{dog_damage:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}秒{#reset()}，将该敌人杀死也会增加8秒（刷新持续时间）\n只对基础伤害生效，不影响电颚模块、远程引爆、钢颚模块\n\n玩家自身或猎犬杀死被标记的敌人时，会立即恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n玩家自身增加{#color(255,255,140)}{damage:%s}{#reset()}能量（全伤害增幅），玩家自身近战与远程攻击动画加快{#color(255,255,140)}{attack_speed:%s}{#reset()}\n持续{#color(255,255,140)}{time:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_565_desc_en", --高效杀手  Efficient Killer
	loc_keys = {"loc_talent_execution_order_crit_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身或猎犬击杀被标记的目标后，玩家自身暴击几率提升{#color(255,255,140)}{crit_chance:%s}{#reset()}，暴击伤害倍率提升{#color(255,255,140)}{crit_damage:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_566_desc_en", --恶行追踪者 Malocator
	loc_keys = {"loc_talent_execution_order_cdr_on_kill_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身或猎犬击杀被标记的目标后，玩家自身的大招冷却加快{#color(255,255,140)}{regen:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}秒{#reset()}\n\n8秒内加快50%的意思，是经过8秒能恢复12秒大招CD，青春版狂信" end}, 
{	id = "talent_tree_ada_pas_567_desc_en", --绝不姑息 No Lenience
	loc_keys = {"loc_talent_execution_order_command_applies_brittleness_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身或猎犬击杀被标记的目标后，玩家自身撕裂{#color(255,255,140)}{rending:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}秒{#reset()}\n\n只有自身的近战、远程、投掷物、dot提升撕裂，狗子不包括在内" end}, 
{	id = "talent_tree_ada_pas_568_desc_en", --遵守协议 Keeping Protocol
	loc_keys = {"loc_talent_execution_order_perma_buff_new_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "击杀被标记的目标后，对怪物造成的伤害提升{#color(255,255,140)}{damage:%s}{#reset()}，怪物对玩家造成的血量与韧性伤害降低{#color(255,255,140)}{damage_red:%s}{#reset()}，叠加上限{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n\n持续至玩家死亡，复活后需要重新积累\n\n{#color(255,155,55)}怪物：瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主{#reset()}\n四种连长不算在内" end}, 
{	id = "talent_tree_ada_pas_569_desc_en", --紧随其后 Not Far Behind
	loc_keys = {"loc_talent_adamant_pinning_dog_bonus_moving_towards_description",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "智能獒犬扑向被标记的敌人且命中时，玩家自身移速提升{#color(255,255,140)}{movement_speed:%s}{#reset()}，玩家自身提升{#color(255,255,140)}{damage:%s}{#reset()}能量伤害（全伤害加成），持续{#color(255,255,140)}{time:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_570_desc_en", --最终指令 Terminus Warrant
	loc_keys = {"loc_talent_adamant_terminus_warrant_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "远程武器直击每命中1次敌人（射队友或者打盾卫盾也行），就可以获得{#color(255,255,140)}1{#reset()}层近战裁决层数（命中弱点+{weakspot_stacks:%s}层）\n近战攻击每命中1次敌人，获得1层远程裁决层数\n上限{max_stacks:%s}层，持续{melee_duration:%s}秒\n近战层数叠满：近战力量{#color(255,255,140)}{melee_strength:%s}{#reset()}，韧性抗性{#color(255,255,140)}{tdr:%s}{#reset()}\n远程层数叠满：远程力量{#color(255,255,140)}{ranged_strength:%s}{#reset()}，远程劈裂{#color(255,255,140)}{ranged_cleave:%s}{#reset()}，远程压制{#color(255,255,140)}{suppression:%s}{#reset()}\n\n简单来说就是：单一buff的叠加上限为{#color(255,255,140)}{max_stacks:%s}{#reset()}层，切换武器后buff生效，每层都会增强buff效果，切换武器时会用新buff覆盖旧buff（比如当前已有近战buff，你切了远程武器，变远程buff，近战加成没了）\n\n一次叠加多层：狗爆、喷子这类可以炸到很多的能快速叠加，劈裂电棍也能一扫叠好多层\n\n远程压制仅对这些敌人生效：{#color(255,155,55)}呻吟者、装甲呻吟者、血痂射手、血痂渣滓潜行者、血痂渣滓炮手、收割者{#reset()}（看不懂就理解为小僵尸潮、枪兵、炮手）\n\n{#color(230,60,0)}BUG：突破阵线会强制切近战，但这个强制切近战无法触发基石的切近战加buff效果{#reset()}" end}, 
{	id = "talent_tree_ada_pas_571_desc_en", --审判令状 Writ of Judgement
	loc_keys = {"loc_talent_adamant_terminus_warrant_improved_combined_desc",}, 
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "有{melee_stacks:%s}层近战或远程裁决层数时，切换武器，近战或远程攻速{#color(255,255,140)}{attack_speed:%s}{#reset()}，暴击几率{#color(255,255,140)}{crit_chance:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}{#reset()}秒" end}, 
{	id = "talent_tree_ada_pas_572_desc_en", --顽固者  Obstinate
	loc_keys = {"loc_talent_adamant_terminus_warrant_cdr_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "有{stacks:%s}层近战或远程裁决层数时，切换武器，大招冷却加快{#color(255,255,140)}{cdr:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}{#reset()}秒" end}, 
{	id = "talent_tree_ada_pas_573_desc_en", --紧急指令 Terminal Decree
	loc_keys = {"loc_talent_adamant_terminus_warrant_support_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你拥有裁决层数时，每消耗{#color(255,255,140)}1{#reset()}层，都会为你和连携中的队友，恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}" end}, 	
{	id = "talent_tree_ada_pas_575_desc_en", --充满力量 Forceful
	loc_keys = {"loc_talent_adamant_forceful_base_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家亲自或猎犬攻击敌人对其造成踉跄（直击、推搡、丢雷）后按照命中次数获得充满力量效果，玩家成功格挡敌人的攻击后（远程需要盾牌）可获得一层充满力量效果\n玩家受到任意伤害时都会移除一层效果（韧性或血量），丢失层数有{#color(255,255,140)}0.25秒{#reset()}的宽限期，这段时间内挨打也不会掉\n\n每层提升{#color(255,255,140)}{impact:%s}{#reset()}冲击（武器踉跄值）\n提升{#color(255,255,140)}{dr:%s}{#reset()}全伤害抗性（血量与韧性，乘法叠加，10层为22.4%）\n叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层\n持续时间{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n持续时间到了之后是一层层的消失，而不是5秒一到全部消失\n\n电棍特殊模式连续攻击敌人后，敌人进入持续3秒的触电dot状态，那个dot不但伤害高而且也能叠加层数，电雷也能快速叠满并且维持层数" end}, 
{	id = "talent_tree_ada_pas_576_desc_en", --坚定意志 Adamant Will
	loc_keys = {"loc_talent_adamant_forceful_stun_immune_and_block_all_linger_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "充满力量达到最大层数时，玩家自身获得获得眩晕免疫，并且在掉下10层后依然能维持{#color(255,255,140)}{duration:%s}秒{#reset()}\n在此期间普通武器的完美格挡可以格挡所有近战攻击（比如大小罐头下劈，瘟疫欧格林踩地板），盾牌有没有这个特性都能挡住\n\n格挡远程攻击必须带盾牌才行，注意敌人的喷火、手雷爆炸、纳垢兽喷吐之类的特殊远程攻击，只靠盾牌是挡不住的\n\n自爆、纳垢爆炸、瘟疫欧格林冲锋、喷火、网子之类的东西可不是近战攻击挡不住\n\n完美格挡指的是敌人攻击命中你前的{#color(255,255,140)}0.3秒{#reset()}内，使用近战武器或盾牌左轮组合，按下右键成功挡住敌人的近战攻击" end}, 
{	id = "talent_tree_ada_pas_577_desc_en", --律法意志  Will of the Lex
	loc_keys = {"loc_talent_adamant_forceful_toughness_regen_per_stack_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每一层充满力量，都会让自身每秒恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}，上限{#color(255,255,140)}+5%{#reset()}\n\n不会因为火焰、毒气而禁用韧性恢复，被网住、狗扑、变种人和混沌卵抓取期间依然生效，空血趴地上后不生效" end}, 
{	id = "talent_tree_ada_pas_578_desc_en", --目标锁定 Targets Acquired
	loc_keys = {"loc_talent_adamant_forceful_melee_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "充满力量达到最大层数时，近战与远程攻击动画加快{#color(255,255,140)}{attack_speed:%s}{#reset()}，劈裂提升{#color(255,255,140)}{cleave:%s}{#reset()}，并且在掉下10层后依然能维持{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n{#color(230,60,0)}BUG：绿皮程序员写错代码，变成了从第十层掉到第九层的时候，才会触发一次持续3秒的buff，当然你选左边守望者天赋，开大后层数直接掉到0也能触发持续3秒的buff{#reset()}\n\n{#color(230,60,0)}BUG：由于没有填写内置冷却时间，你可以找个持续受伤的比如油桶，然后丢个电雷电敌人，这样buff会不停的在10~9层之间游荡，导致疯狂叠加攻速buff{#reset()}" end}, 
{	id = "talent_tree_ada_pas_579_desc_en", --守望者 Arbites Vigilant
	loc_keys = {"loc_talent_adamant_forceful_ability_damage",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "激活大招后会清空所有层数，每一层充满力量都会增加玩家自身{#color(255,255,140)}{strength:%s}{#reset()}能量（包括远程、近战、dot在内的全局增伤），持续时间{#color(255,255,140)}{duration:%s}秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_580_desc_en", --审判之力 Judicial Force
	loc_keys = {"loc_talent_adamant_forceful_stagger_on_low_high_dlesc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "充满力量达到{low_stacks:%s}层与{high_stacks:%s}层时，分别产生一次半径{#color(255,255,140)}2.5米{#reset()}的爆炸来踉跄附近的敌人\n\n10层和0层都有各自独立的爆炸冷却时间{#color(255,255,140)}{cooldown:%s}秒{#reset()}\n\n踉跄强度足以让变种人、BOSS、连长之外的敌人摇晃" end}, 

--

--{	id = "talent_tree_ada_pas_581_desc_en", --Barrage 1
--	loc_keys = {"loc_broker_stimm_builder_view_display_name",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "实验室" end}, 
{	id = "talent_tree_ada_pas_581_1_desc_en", --Barrage 1 屏蔽
	loc_keys = {"loc_talent_stat_damage_taken_multiplier",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "血量与韧性伤害降低{#color(255,255,140)}{damage_taken_multiplier:%s}{#reset()}\n内部和外部都是加法叠加4X4=16%" end}, 
{	id = "talent_tree_ada_pas_582_desc_en", --Barrage 4
	loc_keys = {"loc_talent_buff_toughness_on_stimm",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "立即恢复{#color(255,255,140)}{toughness_amount:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n内部加法叠加6.25X4=25%\n立即恢复韧性的效果是扎针的瞬间起效，不是持续15秒的buff\n" end}, 
{	id = "talent_tree_ada_pas_583_desc_en", --Tank
	loc_keys = {"loc_talent_stat_toughness_replenish_modifier",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身从任何渠道获得的{#color(32,178,170)}韧性{#reset()}恢复量增加{#color(255,255,140)}{toughness_replenish_modifier:%s}{#reset()}，包括不限于近战击杀、祝福、技能、连携光环\n内部加法叠加4X5=20%\n最左边那个是一次性加30%，加起来50%\n" end}, 
{	id = "talent_tree_ada_pas_584_desc_en", --Regain
	loc_keys = {"loc_talent_buff_toughness_during_stimm",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身每秒获得{#color(255,255,140)}{toughness_amount:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}，持续至针剂结束（15~20秒）\n5%会受到上面四个从任何渠道节点的加成，所以实际上是6%\n因为补给箱可以分享给队友，所以这个效果尤为强大，不过倒地后不会持续恢复韧性" end}, 
	
{	id = "talent_tree_ada_pas_585_desc_en", --Wildfire l
	loc_keys = {"loc_talent_stat_power_level",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "能量+{#color(255,255,140)}4%{#reset()}\n最高贵的加成，近战、远程、技能、dot、爆炸全伤害增幅\n" end}, 
--{	id = "talent_tree_ada_pas_586_desc_en", --Fury l
--	loc_keys = {"loc_talent_stat_rending_multiplier",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "撕裂+{#color(255,255,140)}5%{#reset()}\n假如武器对无甲伤害100，对硬壳伤害80，那么撕裂倍率是80%，加上15%撕裂后伤害能到95，但超过100%的部分会降低75%，比如80%撕裂+40，就变成100%+20÷4=105%，这多出的5%差不多等于全增伤，无甲和感染上限就是100%" end}, 
{	id = "talent_tree_ada_pas_587_desc_en", --Fury 2
	loc_keys = {"123",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "能量+{#color(255,255,140)}{power_level:%s}{#reset()}（近战、远程、技能、dot、爆炸全伤害增幅）\n撕裂+{#color(255,255,140)}{rending_multiplier:%s}{#reset()}\n\n内部加法叠加，能量20%，撕裂15%" end}, 
{	id = "talent_tree_ada_pas_588_desc_en", --Wildfire 4
	loc_keys = {"123",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "能量+{#color(255,255,140)}{power_level:%s}{#reset()}（近战、远程、技能、dot、爆炸全伤害增幅）\n灵巧+{#color(255,255,140)}{finesse_modifier_bonus:%s}{#reset()}（武器暴击与弱点的伤害倍率，实际数值很低）" end}, 
{	id = "talent_tree_ada_pas_589_desc_en", --Wildfire 5
	loc_keys = {"123",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "能量+{#color(255,255,140)}{power_level:%s}{#reset()}（近战、远程、技能、dot、爆炸全伤害增幅）\n灵巧+{#color(255,255,140)}{finesse_modifier_bonus:%s}{#reset()}（武器暴击与弱点的伤害倍率，实际数值很低）\n\n内部加法叠加，能量20%，灵巧35%" end}, 
{	id = "talent_tree_ada_pas_590_desc_en", --Vultoprene l
	loc_keys = {"123",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "能量+{#color(255,255,140)}{power_level:%s}{#reset()}（近战、远程、技能、dot、爆炸全伤害增幅）\n暴击率+{#color(255,255,140)}{critical_strike_chance:%s}{#reset()}" end}, 
{	id = "talent_tree_ada_pas_591_desc_en", --Vultoprene 2
	loc_keys = {"123",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "能量+{#color(255,255,140)}{power_level:%s}{#reset()}（近战、远程、技能、dot、爆炸全伤害增幅）\n暴击率+{#color(255,255,140)}{critical_strike_chance:%s}{#reset()}\n\n内部加法叠加，能量20%，暴击率15%" end}, 

{	id = "talent_tree_ada_pas_592_desc_en", --Spur l
	loc_keys = {"loc_talent_stat_attack_speed",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战攻速、远程射速+{#color(255,255,140)}{attack_speed:%s}{#reset()}\n" end}, 
{	id = "talent_tree_ada_pas_593_desc_en", --Spur 2
	loc_keys = {"loc_talent_stat_wield_speed",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "12345栏位切换加快+{#color(255,255,140)}{wield_speed:%s}{#reset()}\n" end}, 
{	id = "talent_tree_ada_pas_594_desc_en", --Spur 3
	loc_keys = {"123",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "攻击速度+{#color(255,255,140)}{attack_speed:%s}{#reset()}（近战、远程）\n体力消耗降低{#color(255,255,140)}{stamina_cost_multiplier:%s}{#reset()}（跑步、格挡、挡反、推反等）" end}, 
{	id = "talent_tree_ada_pas_595_desc_en", --Spur 4
	loc_keys = {"123",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "攻击速度+{#color(255,255,140)}{attack_speed:%s}{#reset()}（近战、远程）\n体力消耗降低{#color(255,255,140)}{stamina_cost_multiplier:%s}{#reset()}{#reset()}（跑步、格挡、挡反、推反等）" end}, 
{	id = "talent_tree_ada_pas_596_desc_en", --Fervor
	loc_keys = {"123",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "移动速度+{#color(255,255,140)}{movement_speed:%s}{#reset()}\n闪避距离+{#color(255,255,140)}{dodge_distance_modifier:%s}{#reset()}\n闪避速度+{#color(255,255,140)}{dodge_speed_multiplier:%s}{#reset()}\n闪避恢复冷却降低{#color(255,255,140)}{dodge_cooldown_reset_modifier:%s}{#reset()}\n\n内部加法叠加，攻击速度+16%，切换+50%，体力消耗-50%，+10%移动速度、+10%闪避距离、+10%闪避速度、-10%闪避恢复冷却\n\n移速和秃鹫加法叠加，和亡命之徒乘法叠加\n\n闪避距离基础2.5不过和武器也有关系\n\n闪避恢复从0.85秒减少至0.765秒，和其他乘法叠加" end}, 
{	id = "talent_tree_ada_pas_597_desc_en", --Reflex
	loc_keys = {"123",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "远程武器换弹+{#color(255,255,140)}{reload_speed:%s}{#reset()}\n后坐力降低{#color(255,255,140)}{recoil_modifier:%s}{#reset()}\n\n内部加法叠加，攻击速度+16%，切换+50%，体力消耗-50%，远程武器换弹+30%，后坐力-50%" end}, 
{	id = "talent_tree_ada_pas_598_2_desc_en", --Spur 52
	loc_keys = {"loc_talent_keyword_stun_immune",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(255,255,140)}免疫眩晕{#reset()}\n不会被敌人近战或远程的普通攻击打断攻击、换弹、救人、玩手机\n{#color(230,60,0)}BUG：不生效，无法免疫击晕{#reset()}" end}, 
{	id = "talent_tree_ada_pas_598_3_desc_en", --Spur 53
	loc_keys = {"loc_talent_keyword_slowdown_immune",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "\n{#color(255,255,140)}免疫减速{#reset()}\n{#color(230,60,0)}BUG：不生效，无法免疫减速效果{#reset()}" end}, 

{	id = "talent_tree_ada_pas_599_desc_en", --Kalma 1
	loc_keys = {"loc_talent_stat_combat_ability_cooldown_regen_modifier",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "前四个大招冷却加快+{#color(255,255,140)}6.25%{#reset()}（每过1秒，大招冷却时间降低1.25秒）\n\n最后一个5号，大招冷却加快+{#color(255,255,140)}{combat_ability_cooldown_regen_modifier:%s}{#reset()}\n\n5个内部加法叠加，大招冷却加快50%\n\n简单介绍：自制强化剂持续时间：15秒\n自制强化剂冷却时间：15~75秒\n点的越多冷却越长，持续结束后才开始计算冷却\n\n当你选择分支后就会开启自制强化剂（进图后按4自动扎自己，不能扎队友），并且禁止拾取地图内的其他四种默认强化剂（不过队友可以捡了给你扎针）\n\n自制兴奋剂的冷却时间不受冷却针本身影响，不存在扎冷却针加快自制兴奋剂的说法" end}, 
{	id = "talent_tree_ada_pas_600_desc_en", --Hypex
	loc_keys = {"loc_talent_buff_cooldown_on_melee_kills",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在针剂的效果持续时间内，玩家亲自造成近战直击击杀后，在{duration:%s}秒内大招冷却加快+{#color(255,255,140)}{cooldown:%s}{#reset()}（每过1秒，大招冷却时间降低1.75秒；dot击杀不生效）\n\n内部加法叠加，大招冷却加快25%，造成近战直击击杀时再加75%" end}, 
{	id = "talent_tree_ada_pas_601_desc_en", --Klay
	loc_keys = {"loc_talent_buff_cooldown_on_ranged_kills",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在针剂的效果持续时间内，玩家亲自造成远程直击击杀后，在{duration:%s}秒内大招冷却加快+{#color(255,255,140)}{cooldown:%s}{#reset()}（每过1秒，大招冷却时间降低1.75秒；dot击杀不生效）\n\n内部加法叠加，大招冷却加快25%，造成近远程直击杀时再加75%" end}, 
{	id = "talent_tree_ada_pas_602_desc_en", --Kalma 5
	loc_keys = {"123",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "大招冷却加快+{#color(255,255,140)}{combat_ability_cooldown_regen_modifier:%s}{#reset()}（每过1秒，大招冷却时间降低1.25秒）\n\n内部加法叠加，大招冷却加快50%" end}, 

{	id = "talent_tree_ada_pas_603_desc_en", --In Your Face糊你脸上
	loc_keys = {"loc_talent_broker_passive_close_ranged_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家手持远程武器时，以玩家自身为中心，对半径{#color(255,255,140)}{range_near:%s}米{#reset()}内的敌人，伤害{#color(255,255,140)}{damage_near:%s}{#reset()}（直击、dot、爆炸）\n\n距离越远伤害加成越低，最远{#color(255,255,140)}{range_far:%s}米{#reset()}处伤害加成只剩{#color(255,255,140)}{damage_far:%s}{#reset()}\n\n这个呼你熊脸其实是两段技能代码拼起来的，一个是12.5~30米距离越远伤害越高，最多10%，一个是0~30米距离越远伤害越低，最多25%，这样从结果上来看就是技能主要说明的效果了" end}, 
{	id = "talent_tree_ada_pas_604_desc_en", --Sticky Hands黏手快换
	loc_keys = {"loc_talent_broker_passive_reduce_swap_time_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "切换速度{#color(255,255,140)}{wield_speed:%s}{#reset()}（12345切换）\n远程武器后坐力降低{#color(255,255,140)}{recoil:%s}{#reset()}（加法叠加）\n散射降低{#color(255,255,140)}{spread:%s}{#reset()}（加法叠加）" end}, 
{	id = "talent_tree_ada_pas_605_desc_en", --A Tertium Welcome特提恩式迎接
	loc_keys = {"loc_talent_broker_passive_first_target_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每次近战攻击对首个命中的敌人，近战直击伤害{#color(255,255,140)}{damage:%s}{#reset()}。\n\n野蛮势头祝福的效果，是对前4个敌人造成等同于第一击的伤害，所以配合该天赋，对前四个敌人都会有15%的直击增伤效果" end}, 
{	id = "talent_tree_ada_pas_606_desc_en", --Voice of Tertium特提恩之声
	loc_keys = {"loc_talent_broker_passive_restore_toughness_on_close_ranged_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "以玩家自身为中心，对半径{#color(255,255,140)}12.5米{#reset()}内的敌人，使用远程武器的直击攻击将其击杀时，自身恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n使用远程武器直击击杀精英或专家，则恢复{#color(255,255,140)}{toughness_elites:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}。" end}, 
{	id = "talent_tree_ada_pas_607_desc_en", --Precision Violence精准暴力
	loc_keys = {"loc_talent_broker_passive_restore_toughness_on_weakspot_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战攻击命中敌人后，自身回复{#color(255,255,140)}{default:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n暴击命中或者弱点命中，则回复{#color(255,255,140)}{weakspot:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n既暴击又命中弱点，回复{#color(255,255,140)}{critical:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}" end}, 
{	id = "talent_tree_ada_pas_608_desc_en", --Speedloader快速装弹
	loc_keys = {"loc_talent_broker_passive_reload_speed_on_close_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "以玩家自身为中心，对半径{#color(255,255,140)}12.5米{#reset()}内的敌人，使用远程武器直击击杀时，或者毒针手枪直击命中造成的毒素击杀时，远程装填速度提升{#color(255,255,140)}{reload_speed:%s}{#reset()}，持续时间{#color(255,255,140)}{duration:%s}{#reset()}秒\n\n重复触发不叠加，重置持续时间\n\n{#color(230,60,0)}BUG：远程武器使用流血燃烧电击魂火造成的击杀，不触发加速换弹{#reset()}" end}, 
{	id = "talent_tree_ada_pas_609_desc_en", --Moving Target移动靶
	loc_keys = {"loc_talent_broker_passive_increased_ranged_dodges_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "持有远程武器时，获得{#color(255,255,140)}{extra_consecutive_dodges:%s}{#reset()}次闪避上限" end}, 
{	id = "talent_tree_ada_pas_610_desc_en", --Float Like a Butterfly 敏捷似蝴蝶
	loc_keys = {"loc_talent_broker_passive_ninja_grants_crit_chance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "完美格挡或闪避敌人锁定玩家的一次近战或远程攻击后，暴击几率{#color(255,255,140)}{critical_strike_chance:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n\n左线大招、武器祝福等都可以做到轻松触发闪避效果\n\n完美格挡指的是敌人攻击命中你前的{#color(255,255,140)}0.3秒{#reset()}内，手持近战武器时成功按下右键挡住敌人的近战攻击，格挡远程必须带盾牌\n\n{#color(230,60,0)}BUG：亡命之徒、强化亡命之徒虽然自动闪避远程攻击，但是无法触发致命疾速技能效果，技能持续时间内，即使你主动闪避敌人的攻击也无法触发\n\n{#color(230,60,0)}BUG：迅如疾风虽然处于闪避状态，但是无法触发致命疾速技能效果\n\n{#color(230,60,0)}BUG：闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果" end}, 
{	id = "talent_tree_ada_pas_611_desc_en", --Calling for a Time Out 请求暂停
	loc_keys = {"loc_talent_broker_passive_reduced_toughness_damage_during_reload_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "给远程武器换弹期间，以及之后的{#color(255,255,140)}{duration:%s}{#reset()}秒内，韧性伤害抗性{#color(255,255,140)}{toughness_damage_taken_modifier:%s}{#reset()}(乘法叠加)" end}, 
--{	id = "talent_tree_ada_pas_612_desc_en", --Untouchable不可触及
--	loc_keys = {"loc_talent_broker_passive_sprinting_reduces_threat_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "当玩家持续跑步或滑铲至少{#color(255,255,140)}0.5秒{#reset()}，获得一层威胁降低{#color(255,255,140)}12.5%{#reset()}的buff（内部乘法叠加至41.38%），最多叠加{#color(255,255,140)}4层{#reset()}，持续{#color(255,255,140)}3秒{#reset()}\n\n成功闪避一次敌人锁定你的攻击，可刷新持续时间\n\n{#color(230,60,0)}BUG：亡命之徒、强化亡命之徒虽然自动闪避远程攻击，但是无法触发致命疾速技能效果，技能持续时间内，即使你主动闪避敌人的攻击也无法触发{#reset()}\n\n{#color(230,60,0)}BUG：迅如疾风虽然处于闪避状态，但是无法触发致命疾速技能效果{#reset()}\n\n{#color(230,60,0)}BUG：闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果{#reset()}\n\n通常情况下在战斗中有多个权重因素（例如与敌人的距离、玩家身边有多少敌人、是否被抓、是否被怪物追杀等）用于计算决定敌人对玩家单位目标选择的分数。这个技能提供一个额外的权重乘数，操纵该分数计算以有利于玩家，使玩家更不容易被敌人锁定" end}, 
	
{	id = "talent_tree_ada_pas_613_desc_en", --Blinder亮瞎眼
	loc_keys = {"loc_talent_broker_blitz_flash_grenade_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "快速投掷一枚无伤害但可使敌人踉跄的手雷\n\n爆炸核心半径2.25米，最大半径3.5米，压制半径12米\n\n分为直击+爆炸两段伤害效果\n\n玩家亲自对以自身对半径{#color(255,255,140)}12.5米{#reset()}内的敌人，造成{#color(255,255,140)}20{#reset()}次近战或远程武器直击击杀（毒针直接命中毒死也行、6号爆弹范围炸死也行，毒雾不行），就可生成{#color(255,255,140)}1{#reset()}枚手雷\n\n携带上限{#color(255,255,140)}{max_charges:%s}枚{#reset()}" end}, 
{	id = "talent_tree_ada_pas_614_desc_en", --Blackout熄灭
	loc_keys = {"loc_talent_broker_blitz_flash_grenade_improved_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "快速投掷一枚无伤害但可使敌人踉跄的手雷\n\n爆炸核心半径2.25米，最大半径3.5米，压制半径12米\n\n分为直击+爆炸两段伤害效果\n\n玩家亲自对以自身对半径{#color(255,255,140)}12.5米{#reset()}内的敌人，造成{#color(255,255,140)}{num_kills:%s}{#reset()}次近战或远程武器直击击杀（毒针直接命中毒死、6号爆弹范围炸死都行，毒雷等不行），就可生成{#color(255,255,140)}{num_charges:%s}{#reset()}枚手雷\n\n携带上限{#color(255,255,140)}{max_charges:%s}{#reset()}枚\n\n{#color(230,60,0)}BUG：爆弹手枪的祝福致命距离可以增加25%爆炸范围：爆炸核心半径2.25→2.8125米，最大半径3.5→4.375米，压制半径12→15米{#reset()}" end}, 
{	id = "talent_tree_ada_pas_615_desc_en", --Boom Bringer爆炸快递员
	loc_keys = {"loc_talent_broker_blitz_missile_launcher_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "掏出一门巴祖卡火箭发射器，以100米每秒的速度最多飞行1.5秒（未击中目标则会自爆），火箭分为直击+爆炸两段伤害，不可暴击、无视盾卫、不会跟踪\n\n直击伤害：{#color(255,255,140)}1800{#reset()}\n伤害倍率：硬壳110%、无甲防弹虚空100%，狂人90%、不屈75%，感染25%\n\n爆炸伤害：核心半径{#color(255,255,140)}4{#reset()}米内{#color(255,255,140)}2800{#reset()}伤害，最大半径{#color(255,255,140)}7{#reset()}米{#color(255,255,140)}1300{#reset()}伤害，压制半径{#color(255,255,140)}25{#reset()}米\n伤害倍率：硬壳240%、防弹不屈200%，狂人135%、无甲125%，虚空110%、感染75%\n\n火箭尾焰：身后6米半径120°范围内的敌人受到120点伤害和1层燃烧效果\n\n携带上限{#color(255,255,140)}{max_charges:%s}{#reset()}枚\n\n左键模式：按下发射键会自动开始蓄力（准星开始集中），在1秒后自动发射\n右键模式：按住开始蓄力集中准星，需要的时候按下左键就可以直接发射\n\n{#color(230,60,0)}BUG：爆弹手枪的祝福致命距离可以增加25%爆炸范围：爆炸核心半径4→5米，最大半径7→8.75米，压制半径25→31.25米{#reset()}" end}, 
{	id = "talent_tree_ada_pas_616_desc_en", --Chem Grenade化学手雷
	loc_keys = {"loc_talent_broker_blitz_tox_grenade_desc_02",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "投掷一枚化学毒素手雷，在1.5秒后形成一片腐蚀区域，持续{#color(255,255,140)}15秒{#reset()}，站在上面的敌人会以{#color(255,255,140)}0.35秒{#reset()}每层的速度叠加化学毒素debuff，叠加上限{#color(255,255,140)}6层{#reset()}\n\n{#color(230,60,0)}BUG：化学毒素结束时，会在原地爆炸，让区域内的敌人感染1层化学毒素持续3秒，之后正常随时间消失，如果有多个毒雷消失，那么每次都会积累层数{#reset()}\n\n敌人在化学毒素期间（从感染开始的12秒内）死亡会产生自爆，核心半径4米，最大半径2.5米，爆炸伤害200，20踉跄（距离衰减，硬壳0%）\n\n携带上限{#color(255,255,140)}{max_charges:%s}{#reset()}枚\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数" end}, 

--{	id = "talent_tree_ada_pas_617_desc_en", --Gang Tough强健帮众
--	loc_keys = {"loc_talent_broker_passive_punk_grit_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "远程直击伤害{#color(255,255,140)}+10%{#reset()}（加法叠加）\n\n韧性伤害减免{#color(255,255,140)}+10%{#reset()}（乘法叠加）\n\n巴祖卡是分直击和爆炸两段伤害的，这个技能只会增加直击部分" end}, 
{	id = "talent_tree_ada_pas_618_desc_en", --Regained Posture重整架势
	loc_keys = {"loc_talent_broker_passive_stamina_on_successful_dodge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "成功闪避一次敌人锁定你的攻击后，恢复{#color(255,255,140)}{stamina:%s}{#reset()}体力\n\n{#color(230,60,0)}BUG：亡命之徒、强化亡命之徒虽然自动闪避远程攻击，但是无法触发致命疾速技能效果，技能持续时间内，即使你主动闪避敌人的攻击也无法触发{#reset()}\n\n{#color(230,60,0)}BUG：迅如疾风虽然处于闪避状态，但是无法触发致命疾速技能效果{#reset()}\n\n{#color(230,60,0)}BUG：闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果{#reset()}" end}, 
{	id = "talent_tree_ada_pas_619_desc_en", --Nimble灵活
	loc_keys = {"loc_talent_broker_passive_improved_dodges_desc_02",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "闪避动画速度加快{#color(255,255,140)}{dodge_distance_modifier:%s}{#reset()}，这使得闪避距离从2.5米提升至3.125米\n闪避动画结束后，远程闪避的缓冲时间为{#color(255,255,140)}{dodge_linger_time:%s}{#reset()}秒，近战闪避的缓冲时间为{#color(255,255,140)}0.4秒{#reset()}（0.25+0.15=0.4）\n\n闪避动画期间：玩家免疫敌人造成的近战与远程直击伤害，自身受到的韧性伤害降低50%（乘法叠加）\n闪避动画结束后的缓冲期：正常只免疫敌人造成的近战直击伤害，受到韧性伤害降低50%，现在还会短暂免疫远程伤害\n\n闪避期间只免疫直击伤害，爆炸、燃烧地板等特殊伤害还是会蹭到掉韧性的\n\n{#color(230,60,0)}BUG：因为动画加快了25%，这将导致角色执行闪避动画期间，闪避敌人近战与远程攻击效果的持续时间降低25%，但不影响后续的闪避缓冲时间部分{#reset()}\n\n当连续闪避时，头2次闪避距离为100%，第三次开始降低为50%，双手武器比如雷锤只有头1~2次是100%，拥有闪避次数+1的技能或祝福可以多一次100%的机会" end}, 
--{	id = "talent_tree_ada_pas_620_desc_en", --Slippery Customer阴险顾客
--	loc_keys = {"loc_talent_broker_passive_dodge_melee_on_slide_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "滑铲期间，算作闪避状态，现在还可以完全免疫敌人的近战直击伤害\n\n你现在抱着弹药、电池，在滑铲期间不会被打断了，但是滑铲之间有间隔，所以也不是全程覆盖的\n\n技能加成前的普通滑铲，只有一个免疫远程攻击的效果，对近战攻击、爆炸伤害、燃烧地板、毒气伤害、腐蚀地板等没有任何作用" end}, 
--{	id = "talent_tree_ada_pas_621_desc_en", --Like the Wind迅如疾风
--	loc_keys = {"loc_talent_broker_passive_improved_sprint_dodge_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "跑步闪避角度{#color(255,255,140)}+15%{#reset()}\n\n即便体力耗尽，跑步期间仍被视为处于闪避状态，受到的近战韧性伤害降低50%，躲避敌人的部分远程投射物\n\n想象一下你身边360°，当玩家直面远程敌人时，你怼脸跑过去会挨打，但如果敌人在你正面超过70°的位置，它的远程攻击会被你闪避掉。有了这个技能，敌人在你正面超过55°的位置就都算闪避了\n\n说的再简单点，你跑步的时候左右手边的炮手打不着你" end}, 
{	id = "talent_tree_ada_pas_622_desc_en", --Jittery神经兮兮
	loc_keys = {"loc_talent_broker_passive_improved_dodges_at_full_stamina_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当体力高于{#color(255,255,140)}{stamina:%s}{#reset()}时，闪避冷却加快{#color(255,255,140)}{dodge_cooldown_reset_modifier:%s}{#reset()}，从0.85秒减少至0.51秒\n\n{#color(230,60,0)}BUG：你站着闪避时可正常触发，滑铲无法触发。站着闪避时(基础+武器)Xdodge_cooldown_reset_modifier（X0.6），所以缩短了40%，但是滑铲时只有(基础+武器)，忘了添加闪避恢复倍率代码{#reset()}" end}, 
{	id = "talent_tree_ada_pas_623_desc_en", --Cheap Shots趁人之危
	loc_keys = {"loc_talent_broker_passive_damage_vs_heavy_staggered_desc_02",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "对处于轻度踉跄状态的敌人，所有伤害{#color(255,255,140)}{power_light:%s}{#reset()}（近战、远程、爆炸、dot）\n对处于中度和完全踉跄状态的敌人，所有伤害{#color(255,255,140)}{power_heavy:%s}{#reset()}（近战、远程、爆炸、dot）\n\n可以简单理解为：敌人变成滚地葫芦后，你痛打落水狗的伤害+15%\n\n具体到武器或技能来说，以下这些都算完全踉跄状态：骨锯重击、撬棍特殊模式重击、链锯剑特殊模式、链锯斧特殊模式、狂信晕雷、仲裁电雷、仲裁电棍、熔炉咆哮等" end}, 	

{	id = "talent_tree_ada_pas_624_desc_en", --Gunslinger神枪手
	loc_keys = {"loc_talent_broker_aura_gunslinger_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你或连携范围的队友拾取弹药时，每个人都能补充该弹药拾取物{#color(255,255,140)}+5%{#reset()}的弹药（向上取整）\n\n小弹药包+0.75%\n大弹药包+2.5%\n弹药箱+5%\n\n向上取整：不足1发的话，比如10.1，就给11发\n\n包括你自己：比如1000发上限，拾取小弹药包15%是150发，有这个光环是158发\n\n不受浩劫40减弹药影响：\n小弹药15X0.4+15%X0.05=6.75%\n大弹药50X0.4+50%X0.05=22.5%\n弹药箱100X0.4+100%X0.05=45%\n\n不影响：顺手牵羊的击杀给20%弹药，拾取手雷，牢兵的弹药光环击杀精英给弹药，与其他渣滓的神枪手、强化神枪手光环不叠加" end}, 
{	id = "talent_tree_ada_pas_625_desc_en", --Gunslinger Improved神枪手强化版
	loc_keys = {"loc_talent_broker_aura_gunslinger_improved_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你或连携范围的队友拾取弹药时，每个人都能补充该弹药拾取物{#color(255,255,140)}{ammo:%s}{#reset()}的弹药\n\n小弹药包+1.5%\n大弹药包+5%\n弹药箱+10%\n\n向上取整：不足1发的话，比如10.1，就给11发\n\n包括你自己：比如1000发上限，拾取小弹药包15%是150发，有这个光环是165发\n\n不受浩劫40减弹药影响：\n小弹药15X0.4+15%X0.1=6%→7.5%\n大弹药50X0.4+50%X0.1=20%→25%\n弹药箱100X0.4+100%X0.1=40%→50%\n\n这些不受影响：顺手牵羊的击杀给20%弹药；拾取手雷不增加数量；牢兵的弹药光环击杀精英给弹药；相同光环不叠加，并且该技能的光环不与基础光环叠加" end}, 
{	id = "talent_tree_ada_pas_626_desc_en", --Ruffian恶棍
	loc_keys = {"loc_talent_broker_aura_ruffian_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "你与连携范围内的队友，近战直击伤害提升{#color(255,255,140)}{melee_damage:%s}{#reset()}\n\n与其他渣滓的相同光环不叠加\n\n下面的部分是渣滓本身自带的被动介绍，与该光环无关，借用位置来讲一下：\n\n额外闪避：闪避上限+1\n\n迅如疾风：跑步闪避角度{#color(255,255,140)}+15%{#reset()}，即便体力耗尽，跑步期间仍被视为处于闪避状态，受到的近战韧性伤害降低50%，躲避敌人的部分远程投射物\n\n想象一下你身边360°，当玩家直面远程敌人时，你怼脸跑过去会挨打，但如果敌人在你正面超过70°的位置，它的远程攻击会被你闪避掉。有了这个技能，敌人在你正面超过55°的位置就都算闪避了\n\n说的再简单点，你跑步的时候左右手边的炮手打不着你" end}, 
{	id = "talent_tree_ada_pas_627_desc_en", --Anarchist反叛者
	loc_keys = {"loc_talent_broker_aura_anarchist_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "你与连携范围内的队友，暴击率提升{#color(255,255,140)}{critical_chance:%s}{#reset()}\n\n与其他渣滓的相同光环不叠加" end}, 
{	id = "talent_tree_ada_pas_628_desc_en", --Long Lasting持久兴奋剂
	loc_keys = {"loc_talent_broker_passive_stimm_increased_duration_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "地图上捡的强化剂与自制强化剂的持续时间提升{#color(255,255,140)}{duration_increase:%s}{#reset()}秒，从15秒提升至20秒\n\n因为强化剂持续期间CD是锁着的，所以变相的延长了两次强化剂的使用间隔\n\n医疗针延长的是15秒无视腐化伤害buff\n\n{#color(230,60,0)}BUG：右线大招箱子的速效兴奋剂节点，只影响地图上拾取的强化剂到20秒，玩家实验室的自制强化剂仍然是基础的15秒{#reset()}" end}, 
{	id = "talent_tree_ada_pas_629_desc_en", --Blessed Stimms受福兴奋剂
	loc_keys = {"loc_talent_broker_passive_stimm_cleanse_on_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "强化剂生效期间（自制和地图捡的都算），玩家亲自使用任何方式成击杀后（近战、远程、爆炸、dot），恢复自身{#color(255,255,140)}{cleanse_amount:%s}{#reset()}的腐化值（不能超过当前生命格）\n\n每次强化剂持续时间内，最多降低玩家生命值上限{#color(255,255,140)}{cleanse_threshold:%s}{#reset()}的腐化" end}, 	
	
{	id = "talent_tree_ada_pas_630_desc_en", --Desperado亡命之徒
	loc_keys = {"loc_talent_broker_ability_focus_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用大招进入亡命之徒状态，立即切换成远程武器，弹夹剩余弹药转移至备弹，然后获得一个可以无限装填的特殊弹夹（变成黄色）；技能结束后，当前弹夹的弹药变成释放前的弹药数（0弹药开大，结束了仍然是0）\n\n视角放大10%，100%恢复玩家的韧性，免疫敌人远程压制效果，自动闪避大部分远程投射物攻击（除了网子、纳垢喷屎、喷火器）\n\n跑步不消耗体力，速度加快20%\n\n基础持续：{#color(255,255,140)}10秒{#reset()}\n基础冷却时间：{#color(255,255,140)}45秒{#reset()}\n持续时间结束后才会开始冷却，不过技能和扎针可以在技能持续期间也加速冷却" end}, 	
{	id = "talent_tree_ada_pas_631_desc_en", --Enhanced Desperado强化亡命之徒
	loc_keys = {"loc_talent_broker_ability_focus_improved_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用{talent_name:%s}，立即切换成远程武器，弹夹剩余弹药转移至备弹，然后获得一个可以无限装填的特殊弹夹（变成黄色）；技能结束后，当前弹夹的弹药变成释放前的弹药数（0弹药开大，结束了仍然是0）\n\n视角放大{#color(255,255,140)}10%{#reset()}\n{#color(255,255,140)}100%{#reset()}恢复玩家的{#color(32,178,170)}韧性{#reset()}\n{#color(255,255,140)}免疫远程压制{#reset()}\n{#color(255,255,140)}自动闪避{#reset()}大部分远程投射物攻击（除了网子、纳垢喷屎、喷火器）\n{#color(255,255,140)}跑步不消耗体力{#reset()}\n移动速度加快{#color(255,255,140)}{sprint_movement_speed:%s}{#reset()}\n高亮玩家自身半径{#color(255,255,140)}12.5米{#reset()}范围内的任何敌人（可穿墙透视）\n\n使用远程武器的直击伤害（或者毒针枪的dot伤害）击杀高亮敌人，可以延长大招的持续时间\n0~20秒杀一个延长大招{duration_extend:%s}秒\n{duration_max:%s}~40秒杀一个延长大招0.2秒\n40~60秒杀一个延长大招0.1秒\n\n基础持续：{#color(255,255,140)}{duration:%s}{#reset()}秒\n基础冷却时间：{#color(255,255,140)}{cooldown:%s}{#reset()}秒\n持续时间结束后才会开始冷却，不过技能和扎针可以在技能持续期间也加速冷却\n\n流血、燃烧、毒雷dot；火箭炮、爆弹枪爆炸都不能延续大招持续时间，只有毒针枪专属dot可以刷持续" end}, 
{	id = "talent_tree_ada_pas_632_desc_en", --Pick Your Targets锁定目标
	loc_keys = {"loc_talent_broker_ability_focus_sub_2_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当{focus:%s}生效时，你的远程直击伤害获得{#color(255,255,140)}{rending:%s}{#reset()}撕裂效果\n\n使用远程武器直击（巴祖卡直击或毒针1秒内dot）击杀高亮敌人可额外获得{#color(255,255,140)}{damage:%s}{#reset()}远程直击伤害加成，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层\n\n持续时间{#color(255,255,140)}3秒{#reset()}，buff每次只消失一层\n\n比如伐木双枪基础1%撕裂+15%就是16%撕裂，如果罐头已经受到过其他的脆弱效果（40%），那么就是40+16=56%撕裂，对于无甲感染自身来说，100%就是上限，没有额外增伤" end}, 
{	id = "talent_tree_ada_pas_633_desc_en", --Focused Resolve专注决心
	loc_keys = {"loc_talent_broker_ability_focus_sub_3_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家对12.5米内被大招标记（高亮轮廓）的敌人，使用远程武器通过直击伤害完成击杀时，可堆叠冷却缩减层数\n\n普通敌人{#color(255,255,140)}{cooldown_base:%s}{#reset()}秒冷却缩减\n精英与专家敌人{#color(255,255,140)}{cooldown_elite:%s}{#reset()}秒冷却缩减\n叠加上限{#color(255,255,140)}{cooldown_max:%s}{#reset()}秒\n\n技能结束后，将直接抵扣已堆叠的冷却缩减时长——基础冷却45秒最多降至40秒（即满堆叠仅缩减5秒）\n由于冷却缩减幅度极小，建议仅在无其他合适技能可选或者有特殊需求时（比如不想要冷却针，撕裂自动枪开罐），再考虑选择此技能\n12%饰品，大招39秒\n决心+12%饰品，大招34秒\n50%针+12%饰品，大招32秒\n决心+50%针+12%饰品，大招27秒\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(255,155,55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}" end}, 
	
{	id = "talent_tree_ada_pas_633_desc_en", --Rampage!怒火冲天
	loc_keys = {"loc_talent_broker_ability_punk_rage_desc_3",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "进入{talent_name:%s}状态：\n近战能量伤害{#color(255,255,140)}{power:%s}{#reset()}\n攻击速度{#color(255,255,140)}{attack_speed:%s}{#reset()}\n伤害减免{#color(255,255,140)}{damage_taken:%s}{#reset()}\n{#color(255,255,140)}免疫击晕{#reset()}与{#color(255,255,140)}免疫压制{#reset()}\n视角放大{#color(255,255,140)}10%{#reset()}\n{#color(255,255,140)}100%{#reset()}恢复玩家的{#color(32,178,170)}韧性{#reset()}\n\n近战武器直击命中敌人延长大招时间：\n0~{rage_duration_max:%s}秒延长大招{rage_duration_extend:%s}秒\n20~40秒延长大招0.15秒\n40~60秒延长大招0.075秒\n\n基础持续：{#color(255,255,140)}10秒{#reset()}\n基础冷却时间：{#color(255,255,140)}{cooldown:%s}{#reset()}秒" end}, 
{	id = "talent_tree_ada_pas_634_desc_en", --Channelled Aggression引导侵略
	loc_keys = {"loc_talent_broker_ability_punk_rage_sub_1_desc_02",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "开启{punk_rage:%s}期间，玩家自身使用近战武器蓄力重击，此次伤害获得{#color(255,255,140)}{rending:%s}{#reset()}撕裂\n\n举例：某个武器打硬壳，造成的伤害是无甲的25%\n你有个特效是给武器+15%撕裂，那么这个硬壳打伤害25%，就会变成25+15=40%\n\n当撕裂加成超过无甲的100%加成时，加成数据会变为四分之一（对于无甲感染自身来说，100%就是上限，没有额外增伤）\n举例：如果当前的武器攻击硬壳，造成的伤害已经是无甲的90%，那么撕裂+15%的效果计算公式就会变成1+（15%+90%-1）/4=101.25%，对于无甲感染自身来说，100%就是上限，没有额外增伤" end}, 
{	id = "talent_tree_ada_pas_635_desc_en", --Boiling Blood沸腾之血
	loc_keys = {"loc_talent_broker_ability_punk_rage_sub_4_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战攻击命中精英、BOSS时，延长{punk_rage:%s}持续时间的效果提升，从0.3秒延长至{#color(255,255,140)}{rage_duration_extend_elites:%s}{#reset()}秒\n\n命中衰减的时间从20秒提升至{#color(255,255,140)}{rage_duration_max_upgrade:%s}{#reset()}秒\n命中普通敌人0~30秒内延长大招0.3秒，30~60秒延长0.15秒，60~90秒延长0.075秒\n\n{#color(230,60,0)}BUG：攻击连长的时候无法触发{#reset()}" end},
{	id = "talent_tree_ada_pas_636_desc_en", --Pulverising Strikes粉碎打击
	loc_keys = {"loc_talent_broker_ability_punk_rage_sub_2_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{punk_rage:%s}持续期间，近战与远程武器的劈裂{#color(255,255,140)}{cleave:%s}{#reset()}\n\n大招每持续一秒就能获得{#color(255,255,140)}{melee_power:%s}{#reset()}近战能量，最多叠加{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n\n劈裂就是指你平常一刀能命中3个敌人，现在一刀能命中5个（不完全是这样运作，但这么理解就行了）" end},
{	id = "talent_tree_ada_pas_637_desc_en", --Forge's Bellow熔炉咆哮
	loc_keys = {"loc_talent_broker_ability_punk_rage_sub_3_desc_02",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "激活{punk_rage:%s}时，以及{punk_rage:%s}技能结束时，都将释放强力呐喊，呐喊会击倒以玩家自身为中心半径{#color(255,255,140)}4.5米{#reset()}内的敌人至少2.5秒（可击倒罐头盾卫变成滚地葫芦）\n\n并使范围内敌人的所有攻击动画延长{#color(255,255,140)}{attack_speed_reduction:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}{#reset()}秒" end},

{	id = "talent_tree_ada_pas_638_desc_en", --Stimm Supply兴奋剂补给
	loc_keys = {"loc_talent_broker_ability_stimm_field_desc_3",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在地面部署{stimm_field:%s}，覆盖半径{#color(255,255,140)}3米{#reset()}\n\n箱子没有回血能力，但会以每0.2秒0.5腐蚀伤害的速度，最多清除40点腐化（不能超过当前生命格），并且在持续时间内受到腐化伤害时免疫此次腐化类伤害（自爆炸你伤害50白+50腐化，现在只掉50血）\n\n医疗箱会根据你手上的强化剂（地图里捡的会消耗，自制的会立刻进入CD），将效果分享给玩家自身与周围的队友（如果队友渣滓选依赖基石，能为其叠层数）\n\n如果你没有点自制针（或者处于CD状态），也没从地图上捡到针，那么空手状态下释放就是单纯的清除腐化效果\n\n恢复韧性、绿针回血等效果，只有释放医疗箱的一瞬间站在范围内才能吃到，其他的需要站在医疗箱有效范围内才持续生效\n\n基础持续：{#color(255,255,140)}{duration:%s}{#reset()}秒\n基础冷却时间：{#color(255,255,140)}{cooldown:%s}{#reset()}秒\n\n{#color(230,60,0)}BUG：1.11.1补丁后，重剑特殊攻击会导致无法放箱子{#reset()}" end},
{	id = "talent_tree_ada_pas_639_desc_en", --Fast Acting Stimms速效兴奋剂
	loc_keys = {"loc_talent_broker_ability_stimm_field_sub_1_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{stimm_field:%s}的持续时间缩短至{#color(255,255,140)}{duration:%s}{#reset()}秒，但离开范围后，你身上的“无视腐化伤害”、“清除腐化”的增益仍会持续{#color(255,255,140)}{linger_duration:%s}{#reset()}秒\n\n若你持有强化针（或自制针未进入冷却），在部署补给箱后站在其光环内，该强化针的效果将一直持续至箱子消失；箱子消失后，针剂效果才开始冷却（5+15=20）\n队友只需在5秒内触碰到光环，即可获得相同的15秒增益\n\n“持久兴奋剂”天赋会影响在地图中捡到的医疗、专注、作战、敏捷针，将其持续时间延长至20秒（如果你站在箱子范围内，可享受5+15+5=25秒）\n\n{#color(230,60,0)}BUG：自制强化针的持续时间仍为15秒，不受“持久兴奋剂”影响{#reset()}\n\n{#color(230,60,0)}BUG：若你先使用自制针剂（地图捡的没这个BUG），再部署补给箱，之后短暂离开补给箱的光环并重新进入，可额外叠加一层针剂增益（加法叠加）。两次增益的持续时间独立计算：第一次扎针的持续时间（15或20秒）不受影响，第二次获得的增益固定持续15秒{#reset()}\n\n{#color(230,60,0)}BUG：自制针处于CD时，箱子依然能提供自制针buff，队友也能吃到，普通针没这bug。现在渣滓可以先扎自己然后放箱子，自己吃双针，队友吃单针，并且放箱子不用再看针CD了，饰品带减CD吧{#reset()}" end},
{	id = "talent_tree_ada_pas_640_desc_en", --Booby Trap诡雷陷阱
	loc_keys = {"loc_talent_broker_ability_stimm_field_sub_2_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{stimm_field:%s}持续时间结束后，将产生半径{#color(255,255,140)}3米{#reset()}的化学爆炸，造成200点伤害\n\n并且给与范围内敌人{#color(255,255,140)}{stacks:%s}{#reset()}层化学毒素（边缘地区吃不满）\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数" end},
{	id = "talent_tree_ada_pas_641_desc_en", --Practiced Deployment简易组装
	loc_keys = {"loc_talent_broker_ability_stimm_field_sub_3_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "如果{stimm_field:%s}冷却好了，那么箱子也会立即完成冷却\n\n如果玩家没点自制强化剂，那么拾取地图上刷新的强化剂（或者队友按右键塞给你），也会立即刷新箱子CD\n\n如果你手里有针的时候，又拿了一根新的针，那么不会刷新CD，如果大招的光圈还存在，那么该技能也不生效\n\n不带自制针的套路更适合有语音的开黑队伍，野队基本不能指望" end},

{	id = "talent_tree_ada_pas_641_1_desc_en", --Potent Tox强效毒素
	loc_keys = {"loc_talent_toxin_damage_boost_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "化学毒素伤害提升{#color(255,255,140)}{power:%s}{#reset()}\n\n简单介绍化学毒素\n\n这其实是一种神经毒素（neurotoxin）\n\n堆叠上限：30层\n30层伤害：440（不同护甲倍率不同）\n伤害间隔：0.35秒\n持续时间：2.6秒（从第8跳伤害衰减）\n倍率：硬壳、不屈、感染90%，防弹150%，狂人200%，无甲250%，虚空10%\n\n骨锯轻击：1层，暴击2层\n骨锯重击：1+1层，暴击2+2层\n削刀：基础4，弱点4+2，暴击+2\n毒针枪MK2：单体毒基础6，弱点+1，暴击+1；传染毒基础2，弱点1，暴击1，毒云1\n毒针枪MK6：单体毒基础6，弱点+2，暴击+2；爆裂毒基础2，弱点2，暴击+2，毒云1\n\n化学手雷：6层\n诡雷陷阱：7层\n涂毒武器：近战暴击命中1层\n口袋毒素：闪击爆炸3层" end},

{	id = "talent_tree_ada_pas_642_1_desc_en", --Ammo Jack军火商
	loc_keys = {"loc_talent_broker_passive_extended_mag_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "武器弹夹扩大{#color(255,255,140)}{clip_size:%s}{#reset()}（不影响备弹，向上取整）" end},
{	id = "talent_tree_ada_pas_642_desc_en", --Quick and Deadly致命疾速
	loc_keys = {"loc_talent_broker_passive_close_range_damage_on_dodge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "成功闪避一次敌人锁定玩家的攻击后，以玩家自身为中心，对半径{#color(255,255,140)}12.5米{#reset()}内的敌人，所有伤害提升{#color(255,255,140)}{damage_near:%s}{#reset()}（近战、远程、爆炸、dot），从12.5米开始伤害逐步递减，30米处伤害加成为0\n\n持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n\n{#color(230,60,0)}BUG：亡命之徒、强化亡命之徒虽然自动闪避远程攻击，但是无法触发致命疾速技能效果，技能持续时间内，即使你主动闪避敌人的攻击也无法触发{#reset()}\n\n{#color(230,60,0)}BUG：迅如疾风虽然处于闪避状态，但是无法触发致命疾速技能效果{#reset()}\n\n{#color(230,60,0)}BUG：闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果{#reset()}" end},
{	id = "talent_tree_ada_pas_643_desc_en", --Swift Endurance迅捷耐力
	loc_keys = {"loc_talent_broker_passive_stamina_grants_atk_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每{#color(255,255,140)}1{#reset()}点体力，近战攻击速度{#color(255,255,140)}{attack_speed_increase:%s}{#reset()}\n堆叠上限30层\n\n当你带3个饰品的时候，配合自己基础3体力，就等于24%攻速，武器还会增加不同的基础体力，可以轻易堆出常驻30%左右攻速的角色，配合中线大招20和中线基石10，可以做到长时间60%攻速，配合自制针剂可以做到短时间80%攻速" end},
{	id = "talent_tree_ada_pas_644_desc_en", --Punching Above One's Weight以小搏大
	loc_keys = {"loc_talent_broker_passive_damage_vs_elites_monsters_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "对精英敌人和怪物，伤害提升{#color(255,255,140)}{multiplier:%s}{#reset()}\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(255, 155, 55)}怪物：瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主{#reset()}\n\n{#color(230,60,0)}BUG：四种连长都不算{#reset()}" end},
{	id = "talent_tree_ada_pas_645_desc_en", --Tis but a Scratch小磕小碰
	loc_keys = {"loc_talent_broker_passive_replenish_toughness_on_ranged_toughness_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "受到远程攻击导致损失韧性时，将以每秒{#color(255,255,140)}10%{#reset()}的速度恢复{#color(32,178,170)}韧性{#reset()}，持续时间{#color(255,255,140)}{duration:%s}{#reset()}秒，总共恢复{toughness:%s}\n\n重复触发会重置持续时间\n该技能虽然没有冷却时间，但如果韧性被打空，恢复效果便会消失\n\n可以通过带3个30%韧性恢复饰品，虽然不增加技能恢复效果，但会将连携光环冷却从1.5秒降低至0.768秒，可配合技能来更快的再次启用磕碰恢复韧性效果" end},
{	id = "talent_tree_ada_pas_646_desc_en", --Burst of Energy能量爆发
	loc_keys = {"loc_talent_broker_passive_stun_immunity_on_toughness_broken_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家被打空韧性时，会恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}，并且{#color(255,255,140)}{duration:%s}{#reset()}秒内免疫眩晕\n\n技能冷却{#color(255,255,140)}{cooldown:%s}{#reset()}秒\n\n{#color(230,60,0)}BUG：被火烧光的韧性，无法触发50%韧性恢复效果{#reset()}" end},
{	id = "talent_tree_ada_pas_647_desc_en", --Battering Strikes沉重打击
	loc_keys = {"loc_talent_broker_passive_melee_cleave_on_melee_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战武器的直击攻击造成一次击杀后，近战劈裂提升{#color(255,255,140)}{multiplier:%s}{#reset()}\n持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n叠加上限{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n\n劈裂值提升可以让玩家的武器命中更多的敌人，但伤害也会逐渐衰减" end},
--{	id = "talent_tree_ada_pas_648_desc_en", --Loose Formation松散阵型
--	loc_keys = {"loc_talent_broker_passive_increased_aura_size_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "连携光环半径提升{#color(255,255,140)}+75%{#reset()}\n从8米提升至{#color(255,255,140)}14{#reset()}\n\n即使队友没扩大光环半径，你也能在14米的位置吃到它的光环效果，他也能享受你的\n\n由于渣滓生存能力太差，这个技能配合3个30%韧性饰品能稍微提升你的生存能力" end},
{	id = "talent_tree_ada_pas_649_desc_en", --Extra Pouches额外口袋
	loc_keys = {"loc_talent_broker_passive_increased_blitz_ammo_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "闪击技能上限{#color(255,255,140)}{ammo:%s}{#reset()}\n\n{#color(230,60,0)}BUG：如果你不是正常进图，而是半路加入，该技能不生效，进图只有默认手雷上限的数量，不过拾取手雷、弹药箱补给数量依然是+1的{#reset()}" end},
{	id = "talent_tree_ada_pas_650_desc_en", --Coated Weaponry涂毒武器
	loc_keys = {"loc_talent_broker_passive_melee_attacks_apply_toxin_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用任意近战武器直击命中敌人且产生暴击时，使敌人受到{#color(255,255,140)}{stacks:%s}{#reset()}层化学毒素效果，可隔着盾牌给盾卫上毒\n\n远程武器的近战攻击动作命中也算涂毒\n\n骨锯轻击带1层化学毒素，重击1下能产生2次命中\n轻击1层，暴击1+1=2层，技能暴击1+1+1=3层\n重击1X2=2层，暴击（1+1）X2=4层，技能暴击（1+1+1）=6层\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数" end},

{	id = "talent_tree_ada_pas_651_desc_en", --Pickpocket顺手牵羊
	loc_keys = {"loc_talent_broker_passive_low_ammo_regen_desc_04",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战武器直击击杀1个精英或专家敌人时（干草机与心狠手辣的代码杀也算），如果敌人死亡的瞬间你的远程武器备弹量少于{#color(255,255,140)}{ammo_threshold:%s}{#reset()}，那么玩家的备弹量将恢复到最大值的{#color(255,255,140)}{ammo_threshold:%s}{#reset()}（向下取整，不受浩劫40扣弹药影响）\n\n使用dot造成击杀不算，包括电击流血毒素燃烧魂火都不行，骨锯砍出的dot也不行\n\n备弹量只计算弹夹后面的，弹夹里的不算，备弹量888的时候，20%是177.6，当弹药少于177时，技能触发可以恢复至117发" end},
{	id = "talent_tree_ada_pas_652_desc_en", --Hyper-Critical心狠手辣
	loc_keys = {"loc_talent_broker_passive_melee_crit_instakill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战攻击的直击伤害命中人型敌人且造成暴击时，若其当前敌人生命值低于该暴击伤害的{#color(255,255,140)}{threshold:%s}{#reset()}倍，则立即将其秒杀\n\n比如敌人的血量1000，只要你的单次暴击攻击伤害超过500（501都行），他就直接挂了\n\n非人形敌人：粉碎者、盾卫、收割者、瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主\n\n人形敌人但不生效：渣滓连长、血痂连长、近战双子连长、远程双子连长\n\n生效的人形敌人：其他全部敌人+瘟疫猎犬\n我知道很反直觉，但狗确实属于人形敌人\n\n{#color(230,60,0)}BUG：代码杀，被该技能击杀的敌人不属于玩家击杀，所有基于击杀触发的技能、祝福效果都无法生效。{#reset()}不过虽然很多效果不触发，但可以恢复渣滓飞刀数量、也能恢复5%{#color(32,178,170)}韧性{#reset()}、也能触发顺手牵羊的弹药恢复" end},
{	id = "talent_tree_ada_pas_653_desc_en", --The Sweet Spot直击要害
	loc_keys = {"loc_talent_broker_passive_increased_weakspot_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "弱点伤害提升{#color(255,255,140)}{weakspot_damage:%s}{#reset()}\n\n实际加成数值很低，比如K5爆头伤害250→270，伤害提升大概只有8%左右" end},
{	id = "talent_tree_ada_pas_654_desc_en", --Hyper-Violence暴戾恣睢
	loc_keys = {"loc_talent_broker_passive_melee_damage_carry_over_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用任意方式击杀敌人后（近战、远程、爆炸、dot），该次伤害超过敌人剩余血量的{#color(255,255,140)}{percentage:%s}{#reset()}，将变为下次近战攻击的固定附加伤害，附加伤害的附魔留存时间为{#color(255,255,140)}{duration:%s}{#reset()}秒\n\n假设敌人剩余血量1000，你对其造成了2000伤害，转移（2000-1000）X25%=250点固定附加伤害，你的下一次近战攻击将会造成2000+250=2250\n\n如果你的单次近战伤害可以命中多个敌人，那么依照命中顺序进行伤害转移：比如打死A后转移200伤害，命中B的时候就是200+伤害，如果B被打死了转移150，那么命中C的时候就是150+伤害，以此类推" end},
{	id = "talent_tree_ada_pas_655_desc_en", --Hive City Brawler巢都斗士
	loc_keys = {"loc_talent_broker_passive_dr_damage_tradeoff_on_stamina_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据可用体力获得血量与韧性的全伤害减免，体力越高加成越高，上限{#color(255,255,140)}{damage_increase:%s}{#reset()}（乘法叠加）\n\n根据已消耗体力提升近战直击伤害，体力越低加成越高，上限{#color(255,255,140)}{damage_increase:%s}{#reset()}（加法叠加）" end},
{	id = "talent_tree_zea_pas_003_3_1_desc_en", --街头硬汉Street Tough
	 loc_keys = {"loc_talent_broker_passive_knockback_on_taking_melee_damage_desc_02",},
	locales = {"zh-cn",},
	 handle_func = function(locale, value)
	 return "受到近战攻击时，造成{#color(255,255,140)}3{#reset()}米半径仅有踉跄效果的爆炸，可击退附近的绝大多数人类敌人，冷却时间{cooldown:%s}秒\n\n激活后提升玩家移动速度{#color(255,255,140)}{movement_speed:%s}{#reset()}，持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n\n对专家、欧格林、大部分BOSS敌人不生效\n踉跄效果与质量有关，可以击退专家外的人类敌人、无盾连长\n{#color(230,60,0)}BUG：1.11.4补丁后，所有专家敌人的近战攻击都无法触发击退，也无法弹开扑倒玩家的狗" end}, 
{	id = "talent_tree_ada_pas_656_desc_en", --Battering Momentum乘胜追击
	loc_keys = {"loc_talent_broker_passive_cleave_on_cleave_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战或远程（包括爆炸物）的单次攻击，命中{#color(255,255,140)}{min_targets:%s}{#reset()}名或以上敌人时，下一次近战或远程（包括爆炸物）的攻击，劈裂值提升{#color(255,255,140)}{multiplier:%s}{#reset()}\n\n近战直击命中3个敌人，可以直接给下一次近战直击+50%劈裂\n\n爆炸命中3个敌人，可以直接给下一次近战、远程直击+50%劈裂\n\n劈裂类似于其他游戏的穿深，正常一刀只能砍3个怪，劈裂+50%就能砍5个，注意武器命中多个敌人伤害会逐步伤害衰减\n\n穿2个无甲敌人：炙热射击毒针爆头、AK、左轮\n穿4个无甲敌人：左轮a2\n\n{#color(230,60,0)}BUG：该技能没有图标{#reset()}\n\n{#color(230,60,0)}BUG：远程直击命中3个敌人，没有加成{#reset()}" end},
{	id = "talent_tree_ada_pas_657_desc_en", --Sample Collector样本采集
	loc_keys = {"loc_talent_broker_passive_stimm_cd_on_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家以任意方式亲自击杀敌人后，每次击杀可缩短自身“自制强化剂”{#color(255,255,140)}{restore:%s}{#reset()}的冷却时间。\n\n若被你施加化学毒素的敌人，最终死于该毒素的持续伤害（DoT）而不是其他伤害类型时，则缩短{#color(255,255,140)}{restore_toxined:%s}{#reset()}冷却时间。\n\n“自制强化剂”生效期间，该技能不生效，技能效果结束后才可以通过击杀加快技能冷却。如果你对敌人上了dot，但这个敌人最终被你的队友击杀，那么你也无法获得冷却缩短效果。\n\n注意：若玩家未选择强化剂实验室的针剂效果，虽然可以点亮此技能，但是不会产生任何效果。" end},
{	id = "talent_tree_ada_pas_658_desc_en", --Pocket Toxin袖珍毒素
	loc_keys = {"loc_talent_broker_passive_blitz_inflicts_toxin_desc_02",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "被闪击技能的爆炸效果命中的敌人，瞬间覆盖多层化学毒素效果\n\n{blinder:%s}爆炸范围3.5米内+{#color(255,255,140)}{blinder_stacks:%s}{#reset()}层\n\n{missile_launcher:%s}爆炸范围7米内+{#color(255,255,140)}{missile_launcher_stacks:%s}{#reset()}层\n\n{chem_grenade:%s}爆炸范围内+{#color(255,255,140)}{chem_grenade_stacks:%s}{#reset()}层\n化学手雷维持只有6层，所以会从10层以0.35秒的速度快速掉到6层\n\n堆叠上限：30层\n30层伤害：440（不同护甲倍率不同）\n伤害间隔：0.35秒\n持续时间：2.6秒（从第8跳伤害衰减）\n倍率：硬壳、不屈、感染90%，防弹150%，狂人200%，无甲250%，虚空10%\n\n先施加dot的玩家成为dot伤害的拥有者，伤害受当前玩家状态影响（能量增益等），其他玩家只能为dot叠层数" end},
{	id = "talent_tree_ada_pas_658_1_desc_en", --Splash Damage伤害溅射
	loc_keys = {"loc_talent_broker_passive_toxin_spread_on_kills_desc_02",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战直击击杀精英敌人时，或者荼毒武器天赋给予的化学毒素dot击杀时（其他方式比如毒枪、毒雷等造成的化学毒素dot都不算），将会对目标{#color(255,255,140)}{radius:%s}{#reset()}米半径内，最多{#color(255,255,140)}{max_targets:%s}{#reset()}名敌人，施加{#color(255,255,140)}{toxin_stacks:%s}{#reset()}层化学毒素\n上限{#color(255,255,140)}2{#reset()}层\n\n无论你砍死多少，最多2层，类似灵能那个野火传播上限4差不多，触发困难还不能叠加，废物\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}" end},
{	id = "talent_tree_ada_pas_658_2_desc_en", --Toxic Renewal毒素再生
	loc_keys = {"loc_talent_broker_passive_replenish_toughness_while_toxined_enemies_in_proximity_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "自身半径{#color(255,255,140)}{range:%s}{#reset()}米范围内，每个感染化学毒素的敌人，会使自身每秒恢复{#color(255,255,140)}{toughness_amount:%s}{#reset()}韧性。最多计算{#color(255,255,140)}{max_enemies:%s}{#reset()}名敌人。每隔0.2秒检测一次，所以可以理解为持续0.2秒" end},
{	id = "talent_tree_ada_pas_658_2_desc_en", --Virulent Strain强效菌株
	loc_keys = {"loc_talent_broker_passive_toxin_infected_enemies_take_increased_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "感染化学毒素的敌人，其受到任何伤害都会提升{#color(255,255,140)}{damage_taken:%s}{#reset()}（全队易伤）\n持续时间{#color(255,255,140)}{duration:%s}{#reset()}秒。" end},
{	id = "talent_tree_ada_pas_659_desc_en", --Toxin Mania毒素狂热
	loc_keys = {"loc_talent_broker_damage_after_toxined_enemies_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在玩家自身半径{#color(255,255,140)}12.5米{#reset()}内，每个身中化学毒素的敌人，都会使玩家的所有伤害提升{#color(255,255,140)}{damage:%s}{#reset()}（近战、远程、爆炸、dot）\n叠加上限{#color(255,255,140)}{damage_max:%s}{#reset()}\n\n检测每隔是0.2秒，所以也可以认为技能持续时间是0.2秒" end},
{	id = "talent_tree_ada_pas_660_desc_en", --Targeted Toxin精准毒素
	loc_keys = {"loc_talent_broker_passive_reduced_damage_by_toxined_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当敌人身上有化学毒素debuff，会降低敌人造成的近战与远程直击伤害，效果不会多次叠加\n{#color(255,255,140)}{default:%s}{#reset()}伤害（普通敌人）\n{#color(255,255,140)}{monster:%s}{#reset()}伤害（BOSS敌人）\n\nBOSS敌人范围：{#color(255,155,55)}瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主、四种连长{#reset()}\n\n{#color(230,60,0)}BUG：敌人造成的火焰地带、毒雾、毒雷、屎坑、手雷、爆炸物等不受影响{#reset()}" end},
	
{	id = "talent_tree_ada_pas_661_desc_en", --Unload火力倾泻
	loc_keys = {"loc_talent_broker_passive_damage_on_reload_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "远程武器装填后，远程直击伤害提升{#color(255,255,140)}{damage:%s}{#reset()}（加法叠加），持续{duration:%s}秒\n\n效果持续期间，每消耗{#color(255,255,140)}{ammo_per_stack:%s}{#reset()}的弹药，远程直击伤害将额外提升{#color(255,255,140)}{damage_per_stack:%s}{#reset()}，最多消耗90%提升至2+18=20%\n\n重新换弹会刷新持续时间，开启亡命徒大招也会刷新" end},
{	id = "talent_tree_ada_pas_662_desc_en", --Ramping Backstabs渐强背刺
	loc_keys = {"loc_talent_broker_passive_ramping_backstabs_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战武器对任意敌人进行背后攻击，每次近战命中都会增加{#color(255,255,140)}{power:%s}{#reset()}的近战直击伤害，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层\n\n打空不会清空层数，但如果攻击命中了敌人非背后区域比如正面，buff就会清空" end},
{	id = "talent_tree_ada_pas_662_1_desc_en", --Channelled Devastation引导毁灭
	loc_keys = {"loc_talent_broker_passive_crit_grants_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家当前每拥有{#color(255,255,140)}{critical_chance:%s}{#reset()}暴击几率，就会增加{#color(255,255,140)}{melee_damage:%s}{#reset()}的近战直击伤害\n叠加上限{max_stacks:%s}层，也就是{max_melee_damage:%s}增伤）\n\n向上取整，比如1.5%暴击就是1%近战伤害" end},
--{	id = "talent_tree_ada_pas_663_desc_en", --Toxic Renewal毒素再生旧
--	loc_keys = {"loc_talent_broker_toughness_on_toxined_kill_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "使用近战武器的直击攻击，击杀身上有化学毒素的敌人后，恢复{#color(255,255,140)}+15%{#reset()}{#color(32,178,170)}韧性{#reset()}" end},

{	id = "talent_tree_ada_pas_664_desc_en", --Vulture's Mark秃鹫印记
	loc_keys = {"loc_talent_broker_keystone_vultures_mark_on_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用远程武器的直击伤害，或者毒针手枪直击命中造成的毒素，击杀专家或精英敌人后，获得一层秃鹫印记\n每层印记增加：\n{#color(255,255,140)}{ranged_damage:%s}{#reset()}远程直击伤害\n{#color(255,255,140)}{crit_chance:%s}{#reset()}远程暴击几率\n{#color(255,255,140)}{movement_speed:%s}{#reset()}移动速度\n\n叠加上限{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n持续时间结束后一起全部消失，而不是一层层消失\n\n达到最大叠加层数时，使用远程直击来击杀专家或精英敌人，为你和光环范围内的盟友恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}。\n\n{#color(255,155,55)}精英：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、血痂渣滓狂暴者、血痂重锤兵，盾卫、收割者、粉碎者{#reset()}\n\n{#color(255,155,55)}专家：血痂渣滓喷火兵、血痂轰炸者、渣滓剧毒轰炸者、血痂狙击手、血痂陷阱手、瘟疫猎犬、装甲瘟疫猎犬、瘟疫爆破手、变种人{#reset()}" end},
{	id = "talent_tree_ada_pas_665_desc_en", --Vulture's Push秃鹫推击
	loc_keys = {"loc_talent_broker_keystone_vultures_mark_aoe_stagger_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用远程武器的直击伤害，击杀专家或精英敌人后，将自身半径{#color(255,255,140)}3米{#reset()}内，除欧格林和重锤兵之外的普通敌人击退（没有强制踉跄时间）\n\n踉跄等级很低，基本只对小僵尸枪兵管用，意义不大" end},
{	id = "talent_tree_ada_pas_666_desc_en", --Vulture's Dodge秃鹫闪避
	loc_keys = {"loc_talent_broker_keystone_vultures_mark_dodge_on_ranged_crit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用远程武器的直击伤害产生暴击并且命中敌人后，使你受到敌人的近战直击、远程直击攻击时不受伤害，持续时间{#color(255,255,140)}{duration:%s}{#reset()}秒\n\n不免疫：敌人的抓取技能、罐头平A、罐头砸地板、砸地板冲击波、自爆人、爆炸伤害、火焰地板、油桶、毒气、腐蚀粘液等" end},
{	id = "talent_tree_ada_pas_667_desc_en", --Patient Hunter耐心猎手
	loc_keys = {"loc_talent_broker_keystone_vultures_mark_increased_duration_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "秃鹫印记持续时间从8秒延长至{duration:%s}秒" end},

{	id = "talent_tree_ada_pas_668_desc_en", --Adrenaline Frenzy肾上腺素狂人
	loc_keys = {"loc_talent_broker_keystone_adrenaline_junkie_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战武器命中敌人获得{#color(255,255,140)}+1{#reset()}层\n造成暴击可以额外获得{#color(255,255,140)}{on_crit:%s}{#reset()}层\n命中多个敌人就能多次触发层数（链锯特殊造成多次伤害但只堆叠1层）\n\n持续时间{#color(255,255,140)}{duration:%s}{#reset()}秒，一层层消失\n\n堆叠至{#color(255,255,140)}{max_stacks:%s}{#reset()}层时，移除所有层数并获得{frenzy:%s}效果\n\n{frenzy:%s}：攻击速度{#color(255,255,140)}{attack_speed:%s}{#reset()}，近战直击伤害{#color(255,255,140)}{melee_damage:%s}{#reset()}，持续{#color(255,255,140)}{frenzy_duration:%s}{#reset()}秒\n\n{#color(230,60,0)}BUG：使用链锯系列武器的特殊模式，命中敌人只算1层{#reset()}" end},
{	id = "talent_tree_ada_pas_669_desc_en", --Adrenaline Assassin肾上腺素刺客
	loc_keys = {"loc_talent_broker_keystone_adrenaline_junkie_sub_1_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "弱点命中现在会额外获得{#color(255,255,140)}{stacks:%s}{#reset()}层肾上腺素（基础1+额外2，总共3层）。普通近战命中不获得任何层数\n\n如果只点了这个技能，暴击命中身体还是能获得1层\n\n注意这会导致你攻击连长虚空盾、盾卫盾牌时，如果不暴击就得不到任何层数\n\n{#color(230,60,0)}BUG：使用链锯系列武器的特殊模式，命中敌人只算1+2层{#reset()}" end},
{	id = "talent_tree_ada_pas_670_desc_en", --Stoked Rage怒火焚身
	loc_keys = {"loc_talent_broker_keystone_adrenaline_junkie_sub_3_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "将{frenzy:%s}持续时间从10秒提升至{#color(255,255,140)}{duration:%s}{#reset()}秒" end},
{	id = "talent_tree_ada_pas_671_desc_en", --Adrenaline Unbound肾上腺素释放
	loc_keys = {"loc_talent_broker_keystone_adrenaline_junkie_sub_5_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{frenzy:%s}激活期间，每秒恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}" end},
{	id = "talent_tree_ada_pas_672_desc_en", --Uncontrolled Aggression无拘杀意
	loc_keys = {"loc_talent_broker_keystone_adrenaline_junkie_sub_4_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "将肾上腺素持续时间从2秒提升至{#color(255,255,140)}{duration:%s}{#reset()}秒" end},
{	id = "talent_tree_ada_pas_673_desc_en", --Adrenaline Smiter肾上腺素重击者
	loc_keys = {"loc_talent_broker_keystone_adrenaline_junkie_sub_2_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战武器的直击伤害击杀敌人，获得{#color(255,255,140)}{stacks:%s}{#reset()}层肾上腺素\n如果点了肾上腺素刺客，造成弱点击杀则是7层，暴击击杀是8层\n\n近战直击击杀精英敌人获得{#color(255,255,140)}+15{#reset()}层\n如果点了肾上腺素刺客，造成弱点击杀则是17层，暴击击杀是18层\n\n如果单纯命中而不造成击杀，则不在增加层数，这会导致你的肾上腺素刺客技能命中弱点增加层数的部分失效\n\n注意这会导致你攻击连长虚空盾、盾卫盾牌时得不到任何层数\n\n{#color(230,60,0)}BUG：使用链锯系列武器的特殊模式，以命中弱点之外区域击杀敌人时（比如链锯斧没爆头而是锯肩膀胳膊造成击杀），无法获得任何层数{#reset()}" end},

{	id = "talent_tree_ada_pas_674_desc_en", --Chemical Dependency化学依赖
	loc_keys = {"loc_talent_broker_keystone_chemical_dependency_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用自制强化剂或者地图随机刷的强化剂后，玩家会获得{dependency:%s}层数\n每层加快{#color(255,255,140)}{cooldown_reduction:%s}{#reset()}技能冷却，最多可叠加{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n\n持续{#color(255,255,140)}{duration:%s}{#reset()}秒，一层层的消失\n\n{#color(230,60,0)}BUG：先扎针在放箱子，可以堆叠2层化学依赖，不过这种情况下放的箱子是没有针buff加成的，不存在针+箱子双层buff{#reset()}" end},
{	id = "talent_tree_ada_pas_675_desc_en", --Chem Enhanced化学激化
	loc_keys = {"loc_talent_broker_keystone_chemical_dependency_sub_1_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每层{dependency:%s}buff增加{#color(255,255,140)}{critical_chance:%s}{#reset()}暴击率" end},
{	id = "talent_tree_ada_pas_676_desc_en", --Chem Fortified化学强化
	loc_keys = {"loc_talent_broker_keystone_chemical_dependency_sub_2_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用自制强化剂或者地图随机刷的强化剂后，玩家自身回复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n\n每叠层{dependency:%s}增加韧性伤害减免{#color(255,255,140)}{toughness_damage_reduction:%s}{#reset()}（乘法叠加，1-0.95³=14.26%，四层18.55%）" end},
{	id = "talent_tree_ada_pas_677_desc_en", --Maxed Out Chems化学剂极限堆叠
	loc_keys = {"loc_talent_broker_keystone_chemical_dependency_sub_3_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "最大堆叠层数从3层提升至{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n\n{dependency:%s}持续时间从90秒降低至{#color(255,255,140)}{duration:%s}秒{#reset()}\n\n注意针剂的冷却时间是15秒+针剂冷却，如果你看到针剂冷却44秒，实际上是15+44=59，已经来不及堆叠层数了" end},
--44个被动小节点，20个基石，12个大招、3个光环、3个闪击
--86个节点
--82技能、30实验室
-- ==================================================Skitarius 
{	id = "trait_bespoke_678_desc_ext_en", --Resurgence 振兴
	loc_keys = {"loc_talent_cryptic_coherency_regen_aura_improved_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身{#color(32,178,170)}韧性{#reset()}上限{#color(32,178,170)}{toughness_flat:%s}{#reset()}\n\n当你拥有至少一个队友在身边时（注意这个光环不是独狼），你和连携的友军，其连携{#color(32,178,170)}韧性{#reset()}恢复量的{toughness:%s}，不会因为被近战敌人当作仇恨目标而锁定、被任意攻击命中而停滞{#color(255,255,140)}1.5{#reset()}秒\n\n正常锁定挨打：连携回韧停滞1.5秒\n三饰品的效果：连携回韧停滞0.768秒\n带光环的效果：连携回韧停滞0秒\n\n连携恢复量\n正常恢复：2人时3.75、3人时5.625、4人时7.5\n\n挨打1.5秒内：2人时0、3人时0、4人时0\n\n光环挨打1.5秒内：2人时1.875、3人时2.8125、4人时3.5\n\n3饰品+光环挨打0.768秒内：2人时3.5625、3人时5.34375、4人时7.125\n\n相同光环不叠加，并且该技能的光环不与基础光环叠加\n\n受伤会打断该连携的持续回韧效果，停止挨打后才会继续回复，也就是说不能站在火里靠这个持续恢复韧性" end}, -- colors
{	id = "trait_bespoke_679_desc_ext_en", --Ammunition Deposit 弹药补给点
	loc_keys = {"loc_talent_cryptic_ammo_aura_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身{#color(32,178,170)}韧性{#reset()}上限{#color(32,178,170)}{toughness:%s}{#reset()}\n\n你和连携的友军，备弹量提升{#color(255,255,140)}{ammo:%s}{#reset()}（加法叠加，不影响弹夹）\n\n友军脱离光环后备弹数值保留，弹药上限复原，拾取补给无法补至加成后的备弹\n示例：基础上限1000，加成后1100；脱离光环后上限回归1000，当前备弹仍维持1100不变\n\n相同光环不叠加\n可以和弹药电池卜算叠加至35%" end}, -- colors
{	id = "trait_bespoke_680_desc_ext_en", --Foe-Render Creed 裂敌信条
	loc_keys = {"loc_talent_cryptic_aura_weapon_improved_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身{#color(32,178,170)}韧性{#reset()}上限{#color(32,178,170)}{toughness:%s}{#reset()}\n\n你和连携的友军获得{#color(255,255,140)}{cleave:%s}{#reset()}近战与远程劈裂值，{rending:%s}撕裂\n\n相同光环不叠加\n\n工匠颅骨虽然是伙伴，但是不享受光环的破甲和劈裂效果。不过工匠和喷火颅骨的点燃效果享受破甲带来的增伤" end}, -- colors
{	id = "trait_bespoke_681_desc_ext_en", --Artificer Servo-Skull 工匠伺服头骨
	loc_keys = {"loc_talent_cryptic_servo_skull_improved_clarified_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "随身携带激光手枪伺服头骨，按Q可指挥攻击或标记破译数据（小游戏解码{#color(255,255,140)}15{#reset()}秒，火车解码{#color(255,255,140)}45{#reset()}秒）\n\n被动攻击：锁定模型中心而不是头，每隔{#color(255,255,140)}1.5{#reset()}秒自动射击，优先对自身半径{#color(255,255,140)}8{#reset()}米内，玩家正在攻击的敌人。或者是半径{#color(255,255,140)}20{#reset()}米内距离最近的目标，顺序：近战精英＞近战其他＞其他。被动不会攻击自爆和宿主\n\n主动标记：会在{#color(255,255,140)}25{#reset()}秒内持续对被标记的目标开火，锁定上限{#color(255,255,140)}100{#reset()}米\n当目标被遮挡时颅骨无法开火，会发愣到标记持续时间结束\n颅骨激光枪从{#color(255,255,140)}15{#reset()}米开始衰减，{#color(255,255,140)}30{#reset()}米衰减{#color(255,255,140)}60%{#reset()}且易失准；仅正面83°、4米内具备微弱压制\n\n直击伤害：无甲感染防弹不屈205，狂人256，硬壳65，虚空128\n直击倍率：狂人100%、无甲感染防弹不屈80%、硬壳25%\n灵巧倍率：弱点1.25，无法暴击\n灼烧效果：命中叠{#color(255,255,140)}{burn_stacks:%s}{#reset()}层燃烧，上限{#color(255,255,140)}8{#reset()}层\n易伤效果：目标受到{#color(255,255,140)}15%{#reset()}额外伤害，持续{#color(255,255,140)}{debuff_duration:%s}{#reset()}秒\n\n颅骨类似狗子，虽然算作玩家远程攻击，但他是独立单位不享受玩家增伤，只吃敌人debuff，并且无法触发部分技能\n体型联动：角色身高决定头骨悬浮高度，高身高更易命中头部，爆头增伤25%" end}, -- colors
{	id = "trait_bespoke_682_desc_ext_en", --Noospheric Command 星语指令
	loc_keys = {"loc_talent_cryptic_servo_skull_improved_tagging_fire_rate_cost_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "按Q主动标记一个敌人时，消耗{#color(255,255,140)}{capacitance:%s}{#reset()}电容（大招进度条），伺服头骨射击间隔从1.5秒降低至{#color(255,255,140)}0.25{#reset()}秒，持续{duration:%s}秒\n\n电容为0时，无法开启速射模式\n\n重复触发不叠加，重置持续时间\n\n{#color(230,60,0)}BUG：开启期间连续Q敌人，每次都会损失25%~5%电容，这会导致电容快速下降，所以如果还想用大招，就不要疯狂标记" end}, -- colors
{	id = "trait_bespoke_683_desc_ext_en", --Medicae Servo-Skull 医疗伺服头骨
	loc_keys = {"loc_talent_cryptic_servo_skull_inject_ally_revive_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "你额外获得一个装备适应性药物注射器的伺服头骨，消耗一次手雷使用颅骨\n\n两种特殊颅骨携带上限{#color(255,255,140)}3{#reset()}个，同时装备携带上限变为{#color(255,255,140)}5{#reset()}个，共用次数\n\n长按G键对准一个被网、被打趴在地上还未死亡、彻底死亡被捆住的友军时，如果队友距离你不超过25米且未被地形遮挡，那么队友身边会出现绿色齿轮标记，松开G后颅骨会飞过去拉人\n\n复活期间（1+1.5秒）与复活完成后的一段时间内（{duration:%s}秒），队友会获得{#color(255,255,140)}{tdr:%s}{#reset()}韧性伤害抗性，每秒恢复{toughness_per_second:%s}{#color(32,178,170)}韧性{#reset()}\n\n无效：不能救自己，不能救悬崖挂边、被变种人或混沌卵抓取、被纳垢兽吞噬、被恶魔宿主抓取\n\n无法救看不见的目标，比如被高地、墙壁、铁丝网、栅栏等东西遮挡就无法救援（markeraio的透视能在某些情况下救援楼上被遮挡的队友）\n\n饰品和技能的增加复活速度对颅骨无效，因为颅骨是单独的个体不是玩家，复活是一个固定的1+1.5秒动画，全程需要颅骨从玩家头上飞过去到队友身边才能医疗，距离远就要计算额外的飞行时间，最长25米得飞2秒才到\n这个期间如果有其他人去救人，那么会返还消耗的手雷" end}, -- colors {toughness:%s}
{	id = "trait_bespoke_684_desc_ext_en", --Purgator Servo-Skull 洗罪者伺服头骨
	loc_keys = {"loc_talent_cryptic_servo_skull_flamethrower_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "你额外获得一个装备火焰喷射器的伺服头骨，消耗一次手雷使用颅骨\n\n两种特殊颅骨携带上限{#color(255,255,140)}3{#reset()}个，同时装备携带上限变为{#color(255,255,140)}5{#reset()}个，共用次数\n\n长按G后出现范围提示区域，按左键可切换攻击模式，默认{#color(255,255,140)}360°旋转散射模式{#reset()}，或者{#color(255,255,140)}360°45°集火攻击模式{#reset()}\n松开G后颅骨飞出到标记位置进行持续{#color(255,255,140)}15{#reset()}秒的喷火，射程{#color(255,255,140)}10{#reset()}米，火焰直击伤害20，0.45秒一跳，造成微弱击退效果，命中时每{#color(255,255,140)}0.375{#reset()}秒叠加{#color(255,255,140)}2{#reset()}层燃烧，叠加上限{#color(255,255,140)}12{#reset()}层\n\n飞出后玩家无法以任何方式对其操控，不能改变喷火位置也不能终止喷火\n\n喷火不是锁定敌人进行攻击，而是平射，所以会受到高低差与墙壁的地形遮挡，但是喷火本身会无视部分障碍物，比如箱子柜子\n\n颅骨类似狗子，虽然算作玩家远程攻击，但他是独立单位不享受玩家增伤，只吃敌人debuff，并且无法触发部分技能\n\n喷火会惊醒恶魔宿主" end}, -- colors
{	id = "trait_bespoke_685_desc_ext_en", --Arc Grenades 电弧手雷
	loc_keys = {"loc_talent_cryptic_arc_grenades_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "投掷一枚电弧手雷，引信{#color(255,255,140)}2{#reset()}秒，爆炸半径{#color(255,255,140)}8{#reset()}米，踉跄半径{#color(255,255,140)}15{#reset()}米，爆炸与电弧让敌人进入{#color(255,255,140)}10{#reset()}秒感电状态\n\n以{#color(255,255,140)}270°{#reset()}的角度射出{#color(255,255,140)}{number:%s}{#reset()}道电弧，电弧让敌人进入{#color(255,255,140)}1.1{#reset()}秒闪电状态，闪电伤害每跳{#color(255,255,140)}600{#reset()}每{#color(255,255,140)}0.2{#reset()}秒一跳，弹射距离{#color(255,255,140)}12{#reset()}米，弹射上限{#color(255,255,140)}5{#reset()}次（最多命中6个目标）\n倍率：无甲感染50%，虚空75%，防弹不屈狂人硬壳100%\n弹射优先级：粉碎者、血痂重锤兵、装甲瘟疫猎犬、血痂炮手＞其他精英＞其他敌人\n多条电弧有概率攻击同一个目标，弹射电弧无视硬化皮肤、腐化装甲的减伤\n劈裂不影响电弧弹射次数，电弧不会暴击\n\n电弧手雷击杀的精英与专家提供{#color(255,255,140)}4%{#reset()}电容" end}, -- colors
{	id = "trait_bespoke_686_desc_ext_en", --Overcharged Arc Grenades 过载电弧手雷
	loc_keys = {"loc_talent_cryptic_arc_grenades_brittleness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "你的{talent_name:%s}生成的电弧数量增加{#color(255,255,140)}2{#reset()}条\n多条电弧有概率攻击同一个目标，弹射电弧无视硬化皮肤、腐化装甲的减伤\n\n被单条电弧命中的敌人会受到{stacks:%s}层{#color(255,255,140)}2.5%{#reset()}的脆弱效果，叠加上限16层\n\n电弧只是单纯的伤害，没有让远程武器故障的效果\n\n劈裂不影响电弧弹射次数，电弧不会暴击" end}, -- colors
{	id = "trait_bespoke_687_desc_ext_en", --Enhanced Arc Grenades 强化电弧手雷
	loc_keys = {"loc_talent_cryptic_arc_grenades_weapon_malfunction_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当敌人处于{talent_name:%s}半径{#color(255,255,140)}{range:%s}{#reset()}米的球形判定爆炸内，并且无任何实体障碍物阻挡时，它们的远程武器会发生故障，在{duration:%s}秒内无法使用，只能尝试近战或逃跑\n\n{#color(255,155,55)}远程武器故障：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、收割者、血痂渣滓喷火兵、血痂狙击手、血痂陷阱手、潜行者、枪兵{#reset()}\n{#color(230,60,0)}BUG：不影响血痂连长、渣滓连长、远程双子连长" end}, -- colors
{	id = "trait_bespoke_688_desc_ext_en", --Integrated Refraction Emitter 集成式折射发射器
	loc_keys = {"loc_talent_cryptic_grenade_ability_force_field_cooldown_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "携带上限{#color(255,255,140)}3{#reset()}个\n\n在身边开启一个用于吸收所有远程直击伤害的护盾，持续{duration:%s}秒，这个动作会消耗1枚手雷\n\n基础冷却时间：{cooldown:%s}秒\n\n护盾生成和消散时，会在自身周围触发电击爆炸，对{#color(255,255,140)}{range:%s}{#reset()}米范围内敌人施加持续{#color(255,255,140)}2{#reset()}秒的电击效果，每{#color(255,255,140)}0.5{#reset()}秒造成{#color(255,255,140)}25{#reset()}伤害，倍率：防弹狂人不屈硬壳100%，虚空75%，无甲感染50%。\n\n无效：网子、狗扑、变种人抓、纳垢兽喷吐、喷火兵直击、喷火兵火焰地面、火雷燃烧地面、毒气" end}, -- colors
{	id = "trait_bespoke_689_desc_ext_en", --Overcharged Refraction Emitter 过载折射发射器
	loc_keys = {"loc_talent_cryptic_force_field_duration_increase_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}的持续时间从8秒延长至{#color(255,255,140)}12{#reset()}秒\n\n除了护盾生成和消散外，当护盾持续至{#color(255,255,140)}6{#reset()}秒时，也会在自身周围触发电击爆炸，对{#color(255,255,140)}5{#reset()}米范围内敌人施加持续{#color(255,255,140)}2{#reset()}秒的电击效果，每{#color(255,255,140)}0.5{#reset()}秒造成{#color(255,255,140)}25{#reset()}伤害，倍率：防弹狂人不屈硬壳100%，虚空75%，无甲感染50%。让变种人以下的敌人进入踉跄状态。" end}, -- colors
{	id = "trait_bespoke_690_desc_ext_en", --Voltaic Resistance 电流抵抗
	loc_keys = {"loc_talent_cryptic_force_field_arcs_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在折射发射器效果持续期间，护盾每吸收{#color(255,255,140)}6{#reset()}次直击伤害，就会堆叠{#color(255,255,140)}1{#reset()}层电弧，堆叠上限{max_arcs:%s}道\n当护盾持续时间结束时，会向玩家正前方{#color(255,255,140)}12{#reset()}米、{#color(255,255,140)}270°{#reset()}范围内的敌人，发射所有储存的电弧（至少1条）\n\n电弧让敌人进入{#color(255,255,140)}1.1{#reset()}秒闪电状态，闪电伤害每跳{#color(255,255,140)}150{#reset()}每{#color(255,255,140)}0.2{#reset()}秒一跳，电弧弹跳上限{#color(255,255,140)}4{#reset()}次。让变种人以下的敌人进入踉跄状态\n\n劈裂不影响电弧弹射次数，电弧不会暴击" end}, -- colors
{	id = "trait_bespoke_691_desc_ext_en", --Kinetic Repulsion 动能排斥
	loc_keys = {"loc_talent_cryptic_force_field_health_damage_limit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{force_field_name:%s}激活期间，将自身受到的生命值伤害限制为{#color(255,255,140)}{limit:%s}{#reset()}，首先计算腐化伤害\n\n比如自爆人炸一下就是掉50紫血，如果带了抗性就是相应的紫血+白血" end}, -- colors
{	id = "trait_bespoke_692_desc_ext_en", --Voltaic Expander电流放射器强化版
	loc_keys = {"loc_talent_cryptic_discharge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}在玩家中心点释放无视掩体的电弧，使{#color(255,255,140)}{range:%s}{#reset()}米范围内敌人触电{duration:%s}秒，每{#color(255,255,140)}0.5{#reset()}秒造成{#color(255,255,140)}50{#reset()}伤害，倍率：防弹狂人不屈硬壳100%，虚空75%，无甲感染50%\n\n充能上限：{#color(255,255,140)}3{#reset()}次\n基础冷却：{#color(255,255,140)}50{#reset()}秒（每秒2%自充能；搭配增强动力循环每秒3%，加快到33.3秒；3件4%冷却饰品冷却44秒，再配合1%技能30.56秒）\n\n充能层数不少于{#color(255,255,140)}{charge_two:%s}{#reset()}层：\n在玩家所站位置{#color(255,255,140)}1.5{#reset()}米高的地方，产生半径{#color(255,255,140)}30{#reset()}球形判定爆炸；该爆炸仅作用于无掩体阻隔的远程敌人，施加持续{#color(255,255,140)}12{#reset()}秒的武器异常，限制目标一切远程攻击手段，迫使敌人转为近战或后撤\n\n{#color(255,155,55)}影响范围包括：血痂渣滓霰弹枪手、血痂渣滓炮手、血痂无线电操作员、血痂等离子炮手、收割者、血痂渣滓喷火兵、血痂狙击手、血痂陷阱手、潜行者、枪兵{#reset()}\n{#color(230,60,0)}BUG：不影响血痂连长、渣滓连长、远程双子连长\n{#color(230,60,0)}BUG：大部分实体障碍物比如箱子墙壁等都可以阻挡，有的栅栏可以阻挡有的不能阻挡，简单可以理解为能看见对面（不完全是）{#reset()}\n\n充能格数不少于{#color(255,255,140)}{charge_three:%s}{#reset()}层：\n在使用电流放射器后的{#color(255,255,140)}15{#reset()}秒内，你的近战、远程、工匠颅骨、洗罪者颅骨命中敌人，都会使敌人进入2秒的触电状态\n{#color(230,60,0)}BUG：配合系统冲击可以让任何武器都带有40%破甲能力{#reset()}" end}, -- colors
{	id = "trait_bespoke_693_desc_ext_en", --Voltaic Overcharge电流超载
	loc_keys = {"loc_talent_cryptic_discharge_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{ability_name:%s}恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}，且放电效果每命中一个敌人，额外回复{toughness_per_hit:%s}{#color(32,178,170)}韧性{#reset()}" end}, -- colors
{	id = "trait_bespoke_694_desc_ext_en", --Voltaic Motivator电流激发器
	loc_keys = {"loc_talent_cryptic_discharge_two_charge_bonus_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当使用{talent_name:%s}时，若充能数不少于{#color(255,255,140)}{charge:%s}{#reset()}层，获得{#color(255,255,140)}{attack_speed:%s}{#reset()}近战与远程攻击速度加成（加法叠加），持续{duration:%s}秒" end}, -- colors
{	id = "trait_bespoke_695_desc_ext_en", --Voltaic Arcs电能弧光
	loc_keys = {"loc_talent_cryptic_discharge_arc_bonus_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "释放{ability_name:%s}时，每消耗{#color(255,255,140)}{num_arcs:%s}{#reset()}层充能，向玩家正前方{#color(255,255,140)}270°{#reset()}的敌人发射一道射程{#color(255,255,140)}12{#reset()}米的电弧，电弧弹射上限{#color(255,255,140)}4{#reset()}，弹射距离上限{#color(255,255,140)}8{#reset()}米，电弧堆叠上限{#color(255,255,140)}3{#reset()}道。\n\n电弧让敌人进入{#color(255,255,140)}1.1{#reset()}秒闪电状态，闪电伤害每跳{#color(255,255,140)}150{#reset()}每{#color(255,255,140)}0.2{#reset()}秒一跳，电弧弹跳上限{#color(255,255,140)}4{#reset()}次。让变种人以下的敌人进入踉跄状态\n\n电弧只是单纯的伤害，没有让远程武器故障的效果\n\n无视硬化皮肤减伤，但是会被腐化装甲削弱伤害" end}, -- colors
{	id = "trait_bespoke_696_desc_ext_en", --Chordclaw Strike 共鸣爪击
	loc_keys = {"loc_talent_cryptic_chordclaw_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "用共鸣爪发起一次强有力的近战重击，本次攻击必定{#color(255,255,140)}暴击{#reset()}，并赋予{rending:%s}撕裂效果，按住蓄力阶段如果不想攻击按右键格挡可以取消\n\n爪击伤害分为{#color(255,255,140)}前刺{#reset()}和{#color(255,255,140)}抓取{#reset()}\n前刺伤害较低，如果碰到盾牌就会取消后续的抓取伤害\n抓取产生高额伤害与踉跄\n如果在抓取动画期间闪避，可以额外再造成一次前刺伤害\n\n伤害：无甲感染1300+2438，防弹硬壳1874+3514、不屈1853+3474、狂人1463+2742，虚空1196+2243\n\n充能次数：{#color(255,255,140)}3{#reset()}次。\n\n冷却时间：{#color(255,255,140)}50{#reset()}秒（每秒2%自充能，击杀普通敌人给2%，击杀精英专家给4%；配合增强型动力循环就是每秒3%，加快到33.3秒；携带3个4%技能饰品，则冷却降低到44秒，配合1%技能30.56秒；再配合左右基石到25秒）\n\n实际上游戏里有这个武器的实体模型，从设计上来说他确实是武器废案改成了技能，因此你不能把近战、远程武器的祝福、专长加持到爪子上，不过爪子能吃到玩家自身技能、以及敌人身上debuff的伤害加成" end}, -- colors
{	id = "trait_bespoke_697_desc_ext_en", --Satiated Steel 饱食钢躯
	loc_keys = {"loc_talent_cryptic_chordclaw_capacitance_restoration_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用共鸣爪的直击伤害击杀任意一名敌人后，在{duration:%s}秒内恢复{#color(255,255,140)}{capacitance_percent:%s}{#reset()}电容\n\n重复触发不叠加，重置持续时间\n\n爪子的流血dot击杀不算" end}, -- colors
{	id = "trait_bespoke_698_desc_ext_en", --Slice and Dice 大卸八块
	loc_keys = {"loc_talent_cryptic_chordclaw_consecutive_bonus_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "释放共鸣爪能力时，共鸣爪造成的伤害提升{damage:%s}，持续{#color(255,255,140)}{duration:%s}{#reset()}秒，叠加上限{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n\n重复释放重置持续时间\n\n因为是释放瞬间就获得的buff，所以能加成本次攻击伤害\n\n因为是按照技能释放次数而不是攻击命中次数，所以玩家释放一次技能命中敌人三次，也只算做一层加成" end}, -- colors
{	id = "trait_bespoke_699_desc_ext_en", --Axial Slash 轴向劈斩
	loc_keys = {"loc_talent_cryptic_chordclaw_horizontal_swipe_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "轻按F时，共鸣爪攻击招式变更为{#color(255,255,140)}横向横扫{#reset()}，可同时攻击多个目标\n长按F时，仍使用默认的穿刺+抓取两段伤害攻击\n\n伤害：无甲感染975，防弹1398、狂人1097、不屈1292、硬壳1291、虚空760" end}, -- colors
{	id = "trait_bespoke_700_desc_ext_en", --Probing Strikes 穿刺打击
	loc_keys = {"loc_talent_cryptic_chordclaw_quick_stab_combo_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "轻按F时，共鸣爪改为连续{#color(255,255,140)}{num_stab:%s}{#reset()}次{#color(255,255,140)}快速突刺{#reset()}，命中敌人的同时为其叠加{#color(255,255,140)}{bleed_stacks:%s}{#reset()}层流血（穿刺）效果\n长按F时，仍使用默认的穿刺+抓取两段伤害攻击，但是不会附加流血效果\n\n伤害：无甲感染1117，防弹1274、狂人1228、不屈1271、硬壳1185、虚空822\n\n流血（穿刺）：伤害175，0.375秒一跳，堆叠上限{#color(255,255,140)}18{#reset()}层，持续9.5秒\n倍率：狂人100%、防弹不屈75%、无甲感染50%、硬壳25%\n可穿过盾牌对盾卫造成出血效果，不能穿虚空盾\n\n流血（穿刺）与流血是两种不同的dot伤害类型，两者可同时存在于一个敌人身上，比如流血16层+流血（穿刺）18层，两者的层数不会互相叠加，伤害也是分别独立计算（可以理解为燃烧和魂火的关系）\n\n攻击之间有间隔，如果玩家手速快，可以快速晃动鼠标对三个不同的目标释放爪击\n\n爪击稳定破盾，后两次对盾卫造成伤害\n\n直击+流血的总输出跟默认爪差不多，单算直击是不如默认爪伤害高的。有一说一真不如把流血爪改成支线，本体爪改成短按三连刺，长按还是刺+抓" end}, -- colors
{	id = "trait_bespoke_701_desc_ext_en", --Advanced Combat Doctrines 高级战斗条令
	loc_keys = {"loc_talent_cryptic_precision_stance_drain_cost_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}技能持续期间：\n立即切换至你远程武器\n自动锁定准星{#color(255,255,140)}10°{#reset()}内的敌人\n{#color(255,255,140)}{spread:%s}{#reset()}散布修正\n{#color(255,255,140)}{recoil:%s}{#reset()}后坐力修正\n电容相关：\n技能开启瞬间消耗{#color(255,255,140)}{capacitance_instant:%s}{#reset()}电容\n每秒消耗{#color(255,255,140)}{capacitance_drain:%s}{#reset()}电容\n每次射击消耗{#color(255,255,140)}{capacitance_shot:%s}{#reset()}电容\n换弹期间暂停电容消耗\n\n当你从副武器切换至其他武器，或者达到{#color(255,255,140)}{zero_capacitance:%s}{#reset()}电容和{#color(255,255,140)}{zero_charges:%s}{#reset()}大招层充能，又或者重新激活技能时，此技能会失效\n\n冷却时间：{#color(255,255,140)}50{#reset()}秒（每秒2%自充能，击杀普通敌人给2%，击杀精英专家给4%；配合增强型动力循环就是每秒3%，加快到33.3秒；携带3个4%技能饰品，则冷却降低到44秒，配合1%技能30.56秒）\n\n至少{charge_min:%s}层大招才能开锁，锁定限制在100米内，是个10°的圆锥形范围，因此越远的敌人越容易爆头（当然这事有个限度）\n\n{#color(230,60,0)}BUG：本地与肥沙服务器的数据交互存在网络波动、丢包延迟，训练场灵能射击可以百发百中，放到实战里能命中80%就已经很不错了\n\nBUG：混沌卵和纳垢兽的锁定位置有误，而且有些时候会锁队友" end}, -- colors
{	id = "trait_bespoke_702_desc_ext_en", --Restoration Protocol 恢复协议
	loc_keys = {"loc_talent_cryptic_precision_stance_toughness_suppression_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在{talent_name:%s}持续时间内每秒恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}，并且在激活的一瞬间，清除所有敌人对玩家产生的{#color(255,255,140)}远程压制{#reset()}效果（不是持续免疫，是单次清空压制层数）" end}, -- colors
{	id = "trait_bespoke_703_desc_ext_en", --Writ of Ammunition Enumeration 弹药定额令状
	loc_keys = {"loc_talent_cryptic_precision_stance_fire_rate_increased_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在{talent_name:%s}生效期间，获得{#color(255,255,140)}{fire_rate:%s}{#reset()}射速加成\n\n大招持续{duration:%s}秒后，提升至{#color(255,255,140)}{fire_rate_increased:%s}{#reset()}射速加成" end}, -- colors
{	id = "trait_bespoke_704_desc_ext_en", --Piercing Sight 贯穿之视
	loc_keys = {"loc_talent_cryptic_precision_stance_crit_cleave_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在{talent_name:%s}生效期间，获得{cleave:%s}远程劈裂加成和{crit_chance:%s}暴击率加成\n\n大招持续{duration:%s}秒后，提升至{#color(255,255,140)}{increased_cleave:%s}{#reset()}远程劈裂加成和{#color(255,255,140)}{increased_crit_chance:%s}{#reset()}暴击率加成。" end}, -- colors
{	id = "trait_bespoke_705_desc_ext_en", --Readiness Doctrines 备战条令
	loc_keys = {"loc_talent_cryptic_precision_stance_reload_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{ability_name:%s}持续期间以及结束后的{duration:%s}秒内，装填动画的速度加快{reload_speed:%s}\n\n因为大招开关没有冷却时间，所以如果你想省能量，可以开一下大招就关，用能量换取快速换弹效果" end}, -- colors
{	id = "trait_bespoke_706_desc_ext_en", --Calculated Priority 优先计算
	loc_keys = {"loc_talent_cryptic_precision_stance_damage_on_elite_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在{talent_name:%s}生效期间，击杀精英敌人会使你获得{#color(255,255,140)}{damage:%s}{#reset()}能量（全伤害加成），持续{duration:%s}秒。可堆叠{stacks:%s}次" end}, -- colors
{	id = "trait_bespoke_707_desc_ext_en", --Power Overload 能量过载
	loc_keys = {"loc_talent_cryptic_overload_keystone_coherency_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "你或连携的友军击杀1个普通敌人、boss后，将获得{#color(255,255,140)}{low_stack:%s}{#reset()}层{talent_name:%s}\n击杀精英、专家敌人将赋予{#color(255,255,140)}{elite_stacks:%s}{#reset()}层\n叠加上限{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n\n达到最大层数将引发{talent_name:%s}，将层数重置为{#color(255,255,140)}{zero:%s}{#reset()}层\n\n{talent_name:%s}会为你和连携的友军赋予{damage:%s}能量（全伤害加成），{#color(255,255,140)}{tdr:%s}{#reset()}韧性伤害减免\n持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n重复触发不叠加，重置持续时间\n\n{#color(230,60,0)}BUG：部分dot造成的击杀无法触发该技能效果，比如喷火颅骨和普通颅骨射击造成的燃烧击杀{#reset()}" end}, -- colors
{	id = "trait_bespoke_708_desc_ext_en", --Critical Power Overload 极限能量过载
	loc_keys = {"loc_talent_cryptic_overload_keystone_bigger_explosion_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "过载产生半径{#color(255,255,140)}8{#reset()}米的爆炸，对范围内的敌人施加电击效果，使其额外承受{#color(255,255,140)}{damage_taken:%s}{#reset()}伤害，持续{duration:%s}秒\n重复触发不叠加，重置持续时间" end}, -- colors
{	id = "trait_bespoke_709_desc_ext_en", --Invigorating Overload 振奋过载
	loc_keys = {"loc_talent_cryptic_overload_keystone_toughness_stamina_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当过载发生时，你和连携的友军恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}和{stamina:%s}体力" end}, -- colors
{	id = "trait_bespoke_710_desc_ext_en", --Static Capacitor Drain 静电电容汲取
	loc_keys = {"loc_talent_cryptic_overload_keystone_permastack_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "过载层数越高，玩家自身获得越多加成\n没有持续时间限制，所有加成效果会一直持续到死亡为止，死亡后需要重新积累\n\n{#color(255,255,140)}{first_threshold:%s}{#reset()}层：{#color(255,255,140)}{damage:%s}{#reset()}能量（全局伤害）\n{#color(255,255,140)}{second_threshold:%s}{#reset()}层：{#color(255,255,140)}{tdr:%s}{#reset()}韧性伤害减免（乘法叠加）\n{#color(255,255,140)}{third_threshold:%s}{#reset()}层：所有电容获取效率{#color(255,255,140)}{power:%s}{#reset()}\n\n能量叠加是加法，比如基石过载+15就可以和基石支线的20加法叠加至35%增伤，但是韧抗方面就是乘法叠加1-（1-15%）X（1-20%）=32%" end}, -- colors
{	id = "trait_bespoke_711_desc_ext_en", --Powerdrive 强力驱动
	loc_keys = {"loc_talent_cryptic_overload_keystone_abilities_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每开启{#color(255,255,140)}1{#reset()}次大招，获得{stacks:%s}层增益\n\n{#color(230,60,0)}BUG：锁头大招是根据开启后持续消耗的掉层数，每层给予5层。而不计算开启拿一下的初始消耗25%导致的掉层数" end}, -- colors
{	id = "trait_bespoke_712_desc_ext_en", --Redline Capacitors 红线电容器
	loc_keys = {"loc_talent_cryptic_redline_charge_stacking_clarified_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "最大技能上限{#color(255,255,140)}{max_charges:%s}{#reset()}层\n\n消耗或获得{#color(255,255,140)}1{#reset()}层大招时，获得{#color(255,255,140)}{tdr:%s}{#reset()}韧性伤害抗性（内部加法叠加，外部乘法叠加），并使所有电容获取效率提高{#color(255,255,140)}{capacitance:%s}{#reset()}，持续{duration:%s}秒。最多叠加{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n\n重复触发可以重置持续时间，层数随时间一层层消退，而不是一起消失\n\n叠满后玩家拥有20%韧性抗性，20%电容生成加速" end}, -- colors
{	id = "trait_bespoke_713_desc_ext_en", --Advanced Power Management 高级能量管理
	loc_keys = {"loc_talent_cryptic_redline_strength_clarified_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用任意层数大招时，会直接获得红线电容器上限的buff层数，叠加上限{#color(255,255,140)}4{#reset()}层\n选择优化圣歌后可以叠加至{#color(255,255,140)}5{#reset()}层\n正常释放大招：{#color(255,255,140)}+4{#reset()}层\n优化圣歌大招：{#color(255,255,140)}+5{#reset()}层\n\n每层增加{#color(255,255,140)}{strength:%s}{#reset()}能量（全局伤害）\n持续{duration:%s}秒，重复触发可以重置持续时间" end}, -- colors
{	id = "trait_bespoke_714_desc_ext_en", --Resource Optimisation Canticles 资源优化颂歌
	loc_keys = {"loc_talent_cryptic_redline_stacks_clarified_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "最大技能上限{#color(255,255,140)}{charges:%s}{#reset()}层\n现在你可以使用{#color(255,255,140)}5{#reset()}次大招\n\n{talent_name:%s}叠加上限{#color(255,255,140)}{redline_stack:%s}{#reset()}\n现在你可以叠加{#color(255,255,140)}5{#reset()}层基石\n\n叠满后玩家拥有25%韧性抗性，25%电容生成加速\n\n这里提升的是基础，也就是玩家自然生成能量被动每秒2点X1.25=2.5，配合增强型动力循环的1%提升至每秒3.5，这样配合3饰品降低基础冷却时间，结果就变成了44s×(2/3.5)=25.14秒" end}, -- colors
{	id = "trait_bespoke_715_desc_ext_en", --Capacitory Limit Override 电容上限突破
	loc_keys = {"loc_talent_cryptic_redline_rending_clarified_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{talent_name:%s}达到{stacks:%s}层或以上时，玩家自身获得{rending:%s}{#color(115,115,255)}撕裂{#reset()}加成，对技能、武器都生效\n\n当武器的撕裂叠加超过100%时，超过的部分算作四分之一增伤，比如160%破甲就等于（160%-100%）÷4=15%增伤）。增伤对于无甲、感染、虚空无效，对其他护甲类型生效" end}, -- colors
{	id = "trait_bespoke_716_desc_ext_en", --Surge-Extension 电涌延展
	loc_keys = {"loc_talent_cryptic_redline_toughness_clarified_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每获得{#color(255,255,140)}1{#reset()}层{talent_name:%s}，即可在{#color(255,255,140)}{duration:%s}{#reset()}秒内，以每秒{#color(255,255,140)}5%{#reset()}的速度，持续恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n\n重复触发不叠加，重置持续时间" end}, -- colors
{	id = "trait_bespoke_717_desc_ext_en", --Flensing Protocols 剥皮协议 
	loc_keys = {"loc_talent_cryptic_dissector_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用任意方式击杀精英或专家，获得{#color(255,255,140)}{elite_special_stack:%s}{#reset()}层{talent_name:%s}，同时恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n\n每层{talent_name:%s}都会赋予{damage:%s}能量（全局伤害）和{#color(255,255,140)}{tdr:%s}{#reset()}韧性伤害减免（内部加法，外部乘法），叠加上限{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n\n技能没有持续时间限制，但受到任意伤害（韧性或血量）会移除{#color(255,255,140)}{removed_stacks:%s}{#reset()}层，每{#color(255,255,140)}{removed_stacks:%s}{#reset()}秒内最多损失{#color(255,255,140)}{removed_stacks:%s}{#reset()}层\n\n叠满15%能量和15%韧性抗性\n\n{#color(230,60,0)}BUG：因为是任意伤害，所以你给等离子散热受到的韧性伤害也会掉层数" end}, -- colors
{	id = "trait_bespoke_718_desc_ext_en", --Servo-Sinew Surge 伺服肌腱加力
	loc_keys = {"loc_talent_cryptic_dissector_crit_attack_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每层均会赋予{crit_chance:%s}暴击几率和{#color(255,255,140)}{attack_speed:%s}{#reset()}近战攻击速度\n\n叠满：\n暴击9%\n攻速9%\n\n8层：\n暴击12%\n攻速12%\n\n近战攻速会同样影响武器蓄力速度，但不影响助推堆叠层数，因为助推每层是固定时间" end}, -- colors
{	id = "trait_bespoke_719_desc_ext_en", --Enhanced Capacitance Protocols 强化电容协议
	loc_keys = {"loc_talent_cryptic_dissector_ability_stacks_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用大招将恢复所有层数\n\n是指大招还有充能的情况下，你按下F键激活大招，单纯消耗25%能量的星语颅骨Q不行" end}, -- colors
{	id = "trait_bespoke_720_desc_ext_en", --Honed Dissector 解剖高手
	loc_keys = {"loc_talent_cryptic_dissector_max_stacks_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "最大层数提升至{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n\n叠满：\n能量20%\n韧性抗性20%\n暴击12%\n近战攻速12%" end}, -- colors
{	id = "trait_bespoke_721_desc_ext_en", --Higher Purpose 高远目标
	loc_keys = {"loc_talent_cryptic_dissector_power_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用任意方式击杀精英或专家敌人后，额外恢复{#color(255,255,140)}{power:%s}{#reset()}电容，从4%提升至9%\n\n单次攻击如果同时击杀多个，可多次触发技能效果" end}, -- colors
{	id = "trait_bespoke_722_desc_ext_en", --Capacitor Reclamation Loop 电容再生回路
	loc_keys = {"loc_talent_cryptic_multi_hits_grant_power_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "通过单次任意直击、爆炸的攻击效果，命中至少{#color(255,255,140)}{number:%s}{#reset()}名敌人时，恢复{#color(255,255,140)}{power:%s}{#reset()}电容\n\n内部冷却时间{#color(255,255,140)}0.25{#reset()}秒，避免单次攻击多次触发" end}, -- colors
{	id = "trait_bespoke_723_desc_ext_en", --Augmented Power-Cycle 增强型动力循环
	loc_keys = {"loc_talent_cryptic_increased_passive_cooldown_regen_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每秒额外产生{#color(255,255,140)}{power:%s}{#reset()}电容\n\n额外电容会在加在基础电容之后，不与基石的25%增幅率相乘，算法是（2%+1%）X1.25=3.75%" end}, -- colors
{	id = "trait_bespoke_724_desc_ext_en", --Reactor Coil Recharge 反应堆线圈再充能
	loc_keys = {"loc_talent_cryptic_weakspot_kills_grant_power_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战或远程的直击攻击造成弱点击杀，可额外产生{#color(255,255,140)}{power:%s}{#reset()}电容\n\n击杀普通敌人+2%，以弱点方式击杀+4%\n击杀怪物敌人+2%，以弱点方式击杀+4%\n击杀精英专家+4%，以弱点方式击杀+6%" end}, -- colors
{	id = "trait_bespoke_725_desc_ext_en", --Flux Conduit Build-Up 通量导管蓄能
	loc_keys = {"loc_talent_cryptic_crits_grant_power_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "暴击攻击会在{duration:%s}秒内，以每秒{#color(255,255,140)}1.25%{#reset()}的速度，产生{#color(255,255,140)}{power:%s}{#reset()}电容\n\n重复触发不叠加，重置持续时间" end}, -- colors
{	id = "trait_bespoke_726_desc_ext_en", --Auto-Repair Doctrines 自愈条令
	loc_keys = {"loc_talent_cryptic_toughness_per_charge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每秒恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}，每拥有{#color(255,255,140)}1{#reset()}格大招充能，韧性恢复量提升{#color(32,178,170)}{toughness_per_charge:%s}{#reset()}\n\n3层大招恢复{#color(32,178,170)}4.5%韧性{#reset()}\n5层大招恢复{#color(32,178,170)}5.5%韧性{#reset()}\n\n注意这个天赋是技能的百分比恢复韧性，不是连携韧性，连携+30%饰品对这个是不生效的\n\n受伤会打断该技能的持续回韧，停止挨打会继续回复，也就是说不能站在火里靠这个持续恢复韧性（可以把这个技能看作当年的狂信独狼光环）" end}, -- colors
{	id = "trait_bespoke_727_desc_ext_en", --Voltaic Burst 电流迸发
	loc_keys = {"loc_talent_cryptic_electrocution_push_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "推搡命中敌人且对其造成踉跄后，触发半径{#color(255,255,140)}2.5{#reset()}米的电弧爆炸（无伤害），玩家正面电击效果最强、背面最弱，范围内敌人承受{#color(255,255,140)}3{#reset()}秒电击僵直（无伤害）\n\n冷却{cooldown:%s}秒\n\n对于玩家推不动的敌人，比如欧格林、变种人、boss之类是无法触发该特效的，这个技能主要是被围了推一下，让自己多活3秒。如果因为地图因子让敌人质量增加导致玩家推不动，那么该技能也无法生效" end}, -- colors
{	id = "trait_bespoke_728_desc_ext_en", --Shockline Breach Protocol 电脉冲突破协议
	loc_keys = {"loc_talent_cryptic_pushing_grants_cleave_alt_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "推搡命中一名敌人将赋予{#color(255,255,140)}{cleave:%s}{#reset()}近战劈裂值，持续{duration:%s}秒\n\n不需要推动，只要推搡命中就算\n\n正常情况下横扫爪只能打一个瘟疫欧格林、2个罐头，点这个可以同时打俩瘟疫欧格林、3个罐头" end}, -- colors
{	id = "trait_bespoke_729_desc_ext_en", --Galvanized Coating 镀锌涂层
	loc_keys = {"loc_talent_cryptic_stun_dr_power_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "获得{damage:%s}韧性与生命值全伤害抗性（乘法叠加），在受到近战伤害时会消耗{#color(255,255,140)}{power:%s}{#reset()}电容\n处于网子、狗扑、变种人抓取、被打趴在地上等受控状态时，受到攻击不会消耗电容\n\n免疫击晕，玩手机不被打断，但是不免疫抓取、击飞" end}, -- colors
{	id = "trait_bespoke_730_desc_ext_en", --Electro-Strike Conduit 电击导管
	loc_keys = {"loc_talent_cryptic_melee_crits_electrocute_first_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战暴击命中的第一个敌人，进入{#color(255,255,140)}3{#reset()}秒的电击僵直状态（无伤害）\n\n重复触发可以无限重置僵直持续时间，对自爆人、变种人、boss能触发电弧，但是不足以将其踉跄，但可以隔着盾踉跄盾卫、其他欧格林、其他所有人类敌人" end}, -- colors
{	id = "trait_bespoke_731_desc_ext_en", --Ablative Wards 防护屏障
	loc_keys = {"loc_talent_cryptic_corruption_resistance_doom_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家腐化伤害抗性{#color(153,50,204)}{corruption_resistance:%s}{#reset()}，与饰品等腐化抗性乘法叠加\n\n玩家自身每隔{#color(255,255,140)}{interval:%s}{#reset()}秒受到{#color(153,50,204)}10{#reset()}点腐化伤害（降低90%至{#color(153,50,204)}{corruption_damage_flat:%s}{#reset()}点，搭配3抗性饰品降低至{#color(153,50,204)}0.614125{#reset()}）\n\n技能+3饰品后，魔法书每本固定涨40点腐蚀减少到2.4565点，每隔10秒造成0.073695腐蚀的效果，自爆人炸一次50腐蚀减少到3.070625点，不过这样带得不偿失\n\n如果你带3个伤口饰品，甚至可以被恶魔宿主处决5次才死\n\n该技能造成的腐化，在玩家倒地、被捆绑等状态下不会持续腐蚀；并且此技能造成的腐蚀不会引起剥皮协议掉层数；该技能造成的腐化不会引发玩家掉血、受到伤害后的各种天赋（比如掉血回韧性）" end}, -- colors
{	id = "trait_bespoke_732_desc_ext_en", --System Shock 系统冲击
	loc_keys = {"loc_talent_cryptic_electrocution_applies_brittleness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家亲自以任意方式对敌人造成电击效果，都会对其施加{stacks:%s}层{#color(255,255,140)}2.5%{#reset()}脆弱，叠加上限{#color(255,255,140)}16{#reset()}层\n\n可以和这些破甲加法叠加：重剑特殊10%、穿透火焰20%、磷光枪15%、法务撕裂霰弹枪25%、骨锯紫毒37.5%\n\n{#color(230,60,0)}BUG：配合3层电流放射器大招，可以让包括激光、火颅骨在内的任何武器都带有40%破甲能力。即使不带电流大招，单独的电击导管，也可以为所有近战武器添加40%的破甲效果\n\n{#color(230,60,0)}BUG：在没有电击导管技能时，电弧槌本身的触电只能叠加4层，并且再次命中不延长时间也不继续叠加层数，不过特殊模式的触电可以叠加到16层" end}, -- colors
{	id = "trait_bespoke_733_desc_ext_en", --Entropic Transfer 热力转换
	loc_keys = {"loc_talent_cryptic_electrocution_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家亲自以任意方式对敌人造成电击效果，在{duration:%s}秒内，以每秒{#color(32,178,170)}3%{#reset()}的速度，持续恢复自身{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n\n{#color(230,60,0)}BUG：电棍造成的电弧攻击无法触发该技能恢复效果" end}, -- colors
{	id = "trait_bespoke_734_desc_ext_en", --Weakness Analysis Doctrine 弱点分析条令
	loc_keys = {"loc_talent_cryptic_afflicted_increased_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "用近战或远程攻击命中处于触电、魂火、燃烧、流血、毒素、紫刀腐甲、磷光状态的敌人时，获得{damage:%s}全伤害加成，持续{duration:%s}秒" end}, -- colors
{	id = "trait_bespoke_735_desc_ext_en", --Overcharge Transfer Lattice 过载转移晶格
	loc_keys = {"loc_talent_cryptic_electrocution_defense_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家受到近战伤害时，触发半径{#color(255,255,140)}{range:%s}{#reset()}米的电弧爆炸（无伤害），玩家正面电击效果最强、背面最弱，范围内敌人承受{#color(255,255,140)}3{#reset()}秒电击僵直（无伤害）\n\n冷却{cooldown:%s}秒\n\n虽然变种人、boss之类能触发该特效，但无法将其硬质，这个技能主要是被围了，让自己多活3秒" end}, -- colors
{	id = "trait_bespoke_736_desc_ext_en", --Retribution Conduit 报应导管
	loc_keys = {"loc_talent_cryptic_damage_vs_electrocuted_scaling_on_charge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家自身对处于电击状态下的敌人，造成的所有伤害提升{damage:%s}，并且当前每拥有{#color(255,255,140)}1{#reset()}格大招充能，伤害增幅额外提升{#color(255,255,140)}{more_damage:%s}{#reset()}\n\n3层时全增伤为25%\n5层时全增伤为35%" end}, -- colors
{	id = "trait_bespoke_737_desc_ext_en", --Kinetic Energy Distributors 动能分配组件Kinetic Energy Distribution
	loc_keys = {"loc_talent_cryptic_toughness_on_damage_taken_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "受到生命值伤害后，在{duration:%s}秒内，以每秒{#color(32,178,170)}5%{#reset()}的速度，持续恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}。冷却时间{cooldown:%s}秒" end}, -- colors
{	id = "trait_bespoke_738_desc_ext_en", --Binary Ballistics Protocol 二元弹道协议
	loc_keys = {"loc_talent_cryptic_elite_kills_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "击杀精英后，在{duration:%s}秒内，以每秒{#color(32,178,170)}5%{#reset()}的速度，持续恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n\n重复触发不叠加，重置持续时间" end}, -- colors
{	id = "trait_bespoke_739_desc_ext_en", --Precision Combat Augurs 精准战斗卜算
	loc_keys = {"loc_talent_cryptic_next_attack_all_damage_on_dodge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "成功闪避一次敌人锁定你的近战、远程攻击后，你的下次攻击将获得{damage:%s}近战与远程直击伤害加成\n\n没有持续时间，只对单次攻击生效\n\n闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果" end}, -- colors
{	id = "trait_bespoke_740_desc_ext_en", --Moebian Conductor 莫比亚导体
	loc_keys = {"loc_talent_cryptic_damage_on_ability_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用大招后，提升{damage:%s}能量（全局伤害），持续{duration:%s}秒\n\n使用大招指的是按下F释放大招，通过颅骨Q或者挨打掉的能量不算" end}, -- colors
{	id = "trait_bespoke_741_desc_ext_en", --Threat Detection Imperative 威胁检测急令
	loc_keys = {"loc_talent_cryptic_ranged_kills_tdr_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用远程武器的直击伤害击杀一个敌人后，获得一层韧性伤害抗性{#color(255,255,140)}{tdr:%s}{#reset()}的效果，持续{duration:%s}秒。叠加上限{stacks:%s}层\n\n持续时间结束后一层层消失，而不是一起消失" end}, -- colors
{	id = "trait_bespoke_742_desc_ext_en", --Ammo-Cell Augury 弹药电池卜算
	loc_keys = {"loc_talent_cryptic_ammo_reserve_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "备弹量{#color(255,255,140)}{ammo:%s}{#reset()}，向下取整，不影响弹夹\n\n可以和光环叠加至35%" end}, -- colors
{	id = "trait_bespoke_743_desc_ext_en", --Gunsmith 枪匠
	loc_keys = {"loc_talent_cryptic_auto_reload_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "装填动画加快{reload_speed:%s}\n\n停止射击{duration:%s}秒后，每秒从弹药储备中为弹匣回填{#color(255,255,140)}{reload_percent:%s}{#reset()}子弹，向上取整" end}, -- colors
{	id = "trait_bespoke_744_desc_ext_en", --Hybrid Combat Covenant 混合战斗圣约
	loc_keys = {"loc_talent_cryptic_hybrid_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战直击击杀可使远程直击伤害提升{#color(255,255,140)}{ranged_damage:%s}{#reset()}，持续{duration:%s}秒，叠加上限{stacks:%s}层\n\n远程直击击杀可使近战直击伤害提升{#color(255,255,140)}{melee_damage:%s}{#reset()}，持续{duration:%s}秒，叠加上限{stacks:%s}层\n\n持续时间结束后一层层消失，而不是一起消失\n\n单次命中击杀多个敌人时，可以一次性叠加多层buff" end}, -- colors
{	id = "trait_bespoke_745_desc_ext_en", --Superior Defence Engrams 优越防御编码
	loc_keys = {"loc_talent_cryptic_ranged_stacking_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "远程直击击杀可叠加增益层数，每层每秒恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}。最多叠加{#color(255,255,140)}{max_stacks:%s}{#reset()}层，持续{duration:%s}秒\n\n单次命中击杀多个敌人时，可以一次性叠加多层buff" end}, -- colors
{	id = "trait_bespoke_746_desc_ext_en", --Assassination Protocols 刺杀协议
	loc_keys = {"loc_talent_cryptic_ranged_vs_bfg_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在对抗欧格林、怪物和连长时，远程直击伤害提升{damage:%s}\n\n{#color(255,155,55)}覆盖范围：盾卫、收割者、粉碎者、瘟疫欧格林、群猎之主、纳垢兽、混沌卵、恶魔宿主、渣滓连长、血痂连长、近战双子连长、远程双子连长{#reset()}\n\n{#color(230,60,0)}BUG：猎群之主同时符合欧格林、怪物双标签，所以增伤是50%而不是25%。瘟疫欧格林只有怪物标签\n\n出现这个问题是因为这次代码写的是ranged_damage_vs_monsters、ranged_damage_vs_ogryn，而之前的职业写的是damage_vs_ogryn_and_monsters，所以之前的职业是全增伤但只有一个增幅，这里写的是远程直击增幅但是有两条同时计算，所以数据翻倍了" end}, -- colors
{	id = "trait_bespoke_747_desc_ext_en", --Galvanic Marking Array 流电标记阵列
	loc_keys = {"loc_talent_cryptic_elite_kills_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用远程直击伤害击杀精英敌人时，提升{damage:%s}能量（全局伤害），持续{duration:%s}秒。可叠加{stacks:%s}层\n\n持续时间结束后一层层消失，而不是一起消失" end}, -- colors
{	id = "trait_bespoke_748_desc_ext_en", --Ammunition-Restoration Pod 弹药恢复舱
	loc_keys = {"loc_talent_cryptic_passive_ammo_replenishment_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每隔{#color(255,255,140)}{interval:%s}{#reset()}秒，恢复备弹量的{#color(255,255,140)}{percent:%s}{#reset()}，向下取整\n小数点部分不满1发的会储存起来，等积累到1发后一起返还给玩家\n\n满80%远程+35%备弹：\n等离子182→1.82（+1~2）\n电弧232→2.32（+2~3）\n流电97→0.97（+1）\n磷光97→0.97（+1）\n支架621→6.21（+6~7）\n左轮70→0.7（+1）" end}, -- colors
{	id = "trait_bespoke_749_desc_ext_en", --Superior Tracking Litanies 优越追踪祷文
	loc_keys = {"loc_talent_cryptic_no_braced_movement_penalty_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "开镜瞄准的移速惩罚{#color(255,255,140)}{movement_speed_modifier:%s}{#reset()}\n远程武器的弹道分散{#color(255,255,140)}{spread:%s}{#reset()}\n\n不增加举盾后的移动速度，纯粹是翻译问题" end}, -- colors
{	id = "trait_bespoke_750_desc_ext_en", --Rad-Sink 辐射积蓄槽
	loc_keys = {"loc_talent_cryptic_stacking_ranged_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当连续{duration:%s}秒未进行射击，每秒叠加一层buff，使下次远程直击伤害{#color(255,255,140)}{ranged_damage:%s}{#reset()}（不增幅爆炸、dot）。叠加上限{stacks:%s}层" end}, -- colors
{	id = "trait_bespoke_751_desc_ext_en", -- Power Redistribution Uplink 能量再分配链路
	loc_keys = {"loc_talent_cryptic_crits_grant_tdr_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用近战、远程时产生暴击，并且该次攻击命中了敌人时，在{duration:%s}秒内，以每秒{#color(255,255,140)}2.5%{#reset()}的速度，持续恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n\n持续时间内获得{#color(255,255,140)}{tdr:%s}{#reset()}韧性伤害抗性（乘法叠加）\n\n重复触发不叠加，重置持续时间" end}, -- colors
{	id = "trait_bespoke_752_desc_ext_en", -- Salvation Doctrine 救赎条令
	loc_keys = {"loc_talent_cryptic_revive_speed_and_dr_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "与被绑着、坠崖扒边、倒在地上、被网住的队友，按E时的交互动画加快{revive_speed:%s}，这个期间你获得韧性与生命的全伤害抗性{damage_reduction:%s}（乘法叠加）\n\n基础救人时间为3秒\n\n正常玩家刚加入游戏、被捆绑后拉起来时，有3秒的宽限期，1秒内100%无敌，2~3秒有50%血量减伤和75%韧性减伤\n带3个12%饰品：救人时间从3秒降低至2.23秒，节约0.77秒，解网从1秒降低至0.74秒\n3饰品+救赎条令：救人时间从3秒降低至1.92秒，解网从1秒降低至0.64秒\n\n{#color(230,60,0)}BUG：该技能不加快医疗颅骨的拉人速度，因为医疗颅骨是个独立的单位" end}, -- colors
{	id = "trait_bespoke_753_desc_ext_en", -- Target Prioritization Psalms 目标优化圣歌
	loc_keys = {"loc_talent_cryptic_specials_marking_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当敌人进入玩家自身{#color(255,255,140)}{range:%s}{#reset()}米探测范围，该专家单位便会被打上仅玩家自身可见的浅蓝色轮廓标记，效果永久生效\n\n扫描间隔为{#color(255,255,140)}0.25{#reset()}秒" end}, -- colors
{	id = "trait_bespoke_754_desc_ext_en", -- Residual Current Buffer 残余电流缓冲
	loc_keys = {"loc_talent_cryptic_tdr_based_on_charge_base_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "韧性伤害抗性{#color(255,255,140)}{tdr:%s}{#reset()}\n\n当前每拥有{#color(255,255,140)}1{#reset()}格大招充能，额外提升{#color(255,255,140)}{tdr_per_charge:%s}{#reset()}（内部加法叠加，外部乘法叠加）\n\n3层大招时抗性17.5%\n\n5层大招时抗性22.5%" end}, -- colors
{	id = "trait_bespoke_755_desc_ext_en", -- Last Stand Relay 绝境中继
	loc_keys = {"loc_talent_cryptic_crit_chance_based_on_charge_zero_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当大招充能数大于{#color(255,255,140)}{low_charges:%s}{#reset()}时，暴击几率{#color(255,255,140)}{crit_chance_low:%s}{#reset()}\n\n当大招充能数等于{#color(255,255,140)}{low_charges:%s}{#reset()}时，暴击几率{#color(255,255,140)}{crit_chance_high:%s}{#reset()}\n\n不影响颅骨，加成仅限自身" end}, -- colors
{	id = "trait_bespoke_756_desc_ext_en", -- Protectorate Protocol 守备协议
	loc_keys = {"loc_talent_cryptic_disabled_allies_defense_post_boost_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当连携的友军处于：被网住、被狗咬、被变种人抓住、被恶魔宿主抓住、被混沌卵摔打、被混沌卵吞吃、被纳垢兽吞吃、被打趴在地上还没死、坠崖扒边状态下\n\n护教军和该队友获得韧性与生命的全伤害抗性{#color(255,255,140)}{damage_resistance:%s}{#reset()}（乘法叠加）\n\n当你亲自按E进行交互动画来救起一名友军后，获救的友军会{#color(255,255,140)}眩晕免疫{#reset()}效果，并且获得韧性与生命的全伤害抗性{#color(255,255,140)}{damage_resistance_post:%s}{#reset()}（乘法叠加），持续{duration:%s}秒\n\n{#color(230,60,0)}BUG：如果是颅骨救活的队友，他不享受该技能后续效果\n\n{#color(230,60,0)}BUG：该技能目前不生效，双方都没有伤害抗性25%的效果，拉人也没有眩晕免疫的效果" end}, -- colors
{	id = "trait_bespoke_757_desc_ext_en", -- Data Sensor Protocol 数据探测协议
	loc_keys = {"loc_talent_cryptic_ally_coherency_defenses_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "若你或一名连携的友军受到韧性伤害时，你和友军都将恢复{stamina:%s}体力\n冷却时间{#color(255,255,140)}{stamina_cd:%s}{#reset()}秒\n\n若你或一名连携的友军受到生命值伤害时，你和友军都将恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n冷却时间{#color(255,255,140)}{toughness_cd:%s}{#reset()}秒\n\n自己一个人没队友的时候挨打也能触发对应效果" end}, -- colors
{	id = "trait_bespoke_758_desc_ext_en", -- Sequenced Charge 序列式充能
	loc_keys = {"loc_talent_cryptic_strength_on_charge_gain_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每当玩家获得一格大招充能时，同时获得{#color(255,255,140)}{strength:%s}{#reset()}能量（全局伤害），持续{duration:%s}秒" end}, -- colors
{	id = "trait_bespoke_759_desc_ext_en", -- Omnissian Recharge Litany 欧姆尼塞亚再充能连祷
	loc_keys = {"loc_talent_cryptic_multi_hits_restore_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用任意方式的攻击同时命中{#color(255,255,140)}{number:%s}{#reset()}名或以上的敌人后（没伤害的推搡也算），在{#color(255,255,140)}{duration:%s}{#reset()}秒内恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n\n内置冷却时间{#color(255,255,140)}0.25{#reset()}秒\n\n重复触发不叠加，重置持续时间" end}, -- colors
{	id = "trait_bespoke_760_desc_ext_en", -- Channelled Motive Force 引导原初动力
	loc_keys = {"loc_talent_cryptic_stamina_increases_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家消耗{stamina:%s}体力后，获得{damage:%s}能量（全局伤害）加成，持续{duration:%s}秒\n\n{#color(230,60,0)}BUG：切换不同体力的武器时，也会获得伤害增幅" end}, -- colors
{	id = "trait_bespoke_761_desc_ext_en", -- Voltaic Restoration 电能恢复
	loc_keys = {"loc_talent_cryptic_coherency_toughness_on_ability_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用大招后，你和连携的友军恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}" end}, -- colors
{	id = "trait_bespoke_762_desc_ext_en", -- Power Overflow 动力溢出
	loc_keys = {"loc_talent_cryptic_shared_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家自身的韧性达到{#color(255,255,140)}100%{#reset()}后，通过任何主动方式获取的韧性，都会给连携的友军{toughness_share:%s}{#color(32,178,170)}韧性{#reset()}\n\n主动方式包括近战击杀、各种自身技能、队友战吼开祷等方式增加的韧性\n比如你近战砍死一个怪获得了5%韧性，此时就会为8米半径内的队友，每个人分享1.25%的韧性\n\n分享的类别不包括连携韧性恢复，因为100%韧性时连携恢复被禁用\n恢复量只按最终值的25%来算，不会左脚踩右脚" end}, -- colors
{	id = "trait_bespoke_763_desc_ext_en", -- Evasive Servo Recovery 规避伺服复原机制
	loc_keys = {"loc_talent_cryptic_successful_dodge_stamina_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "成功闪避一次敌人锁定你的攻击后，恢复{stamina:%s}体力\n\n{#color(230,60,0)}BUG：闪避血痂渣滓炮手、收割者、狙击手的攻击没buff效果" end}, -- colors
{	id = "trait_bespoke_764_desc_ext_en", -- Servo-Core Recharge Engine 伺服核心再充能引擎
	loc_keys = {"loc_talent_cryptic_weakspot_kills_restore_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用远程造成弱点击杀后，恢复{toughness:%s}{#color(32,178,170)}韧性{#reset()}\n\n近战弱点击杀在{#color(255,255,140)}5%{#reset()}的基础上再额外加{toughness:%s}" end}, -- colors
{	id = "trait_bespoke_765_desc_ext_en", -- Ablative Motion Routines 损耗性机动程序
	loc_keys = {"loc_talent_cryptic_mobile_defense_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在疾跑或滑铲时获得韧性与生命的全伤害抗性{#color(255,255,140)}{damage_resistance:%s}{#reset()}（乘法叠加）\n\n这类技能减伤时，会同时减少正常白血伤害和腐化紫血伤害，比如自爆人伤害50白+50紫，就变成37.5白+37.5紫\n\n体力为0时技能失效" end}, -- colors
{	id = "trait_bespoke_766_desc_ext_en", -- Adaptive Combat Calibration 自适应战斗校准
	loc_keys = {"loc_talent_cryptic_melee_cleave_and_impact_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "韧性高于{toughness:%s}，提升{#color(255,255,140)}{cleave:%s}{#reset()}近战劈裂\n\n韧性低于{toughness:%s}，提升{impact:%s}近战冲击\n\n正常情况下横扫爪只能打一个瘟疫欧格林，点这个可以同时打俩" end}, -- colors
{	id = "trait_bespoke_767_desc_ext_en", -- Progressive Plating Matrix 渐进式防护矩阵
	loc_keys = {"loc_talent_cryptic_stacking_tdr_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战、远程、闪击命中敌人后，每次为自身叠加{#color(255,255,140)}1{#reset()}层韧性伤害减免{#color(255,255,140)}+2.5%{#reset()}（内部加法叠加，外部乘法叠加），持续{#color(255,255,140)}{duration:%s}{#reset()}秒。叠加上限{stacks:%s}层\n叠满15%抗\n\n每次攻击即使命中多个目标，也只能赋予一层" end}, -- colors
{	id = "trait_bespoke_768_desc_ext_en", -- Sureshot Cogitator Sync 神射沉思者同步机制
	loc_keys = {"loc_talent_cryptic_weakspot_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战与远程造成的弱点伤害{weakspot_damage:%s}（乘法叠加）\n\n实际加成数值很低，比如K5爆头伤害250→270，伤害提升大概只有8%左右" end}, -- colors
{	id = "trait_bespoke_769_desc_ext_en", -- Target-Neutralization Feedback 目标无害化反馈
	loc_keys = {"loc_talent_cryptic_stun_suppression_immune_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战与远程造成的弱点伤害击杀一名敌人后，将使你{#color(255,255,140)}免疫眩晕{#reset()}和{#color(255,255,140)}免疫压制{#reset()}，持续{duration:%s}秒" end}, -- colors
{	id = "trait_bespoke_770_desc_ext_en", -- Uncapped Arrestor 无拘禁锢
	loc_keys = {"loc_talent_cryptic_melee_attacks_give_melee_attack_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战攻击命中敌人后，获得{#color(255,255,140)}1{#reset()}层近战攻击速度{#color(255,255,140)}{melee_attack_speed:%s}{#reset()}的效果，持续{duration:%s}秒，最多叠加{stacks:%s}层" end}, -- colors
{	id = "trait_bespoke_771_desc_ext_en", -- Force Distribution Actuators动力传导致动器
	loc_keys = {"loc_talent_cryptic_push_stagger_stamina_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "体力大于或等于{stamina:%s}时，推搡的踉跄效果{#color(255,255,140)}{push_strength:%s}{#reset()}" end}, -- colors
{	id = "trait_bespoke_772_desc_ext_en", -- Sustained Assault Doctrine 连续突击条令
	loc_keys = {"loc_talent_cryptic_stacking_melee_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战攻击命中敌人后，提升{damage:%s}能量（全局伤害），持续{duration:%s}秒。可叠加{stacks:%s}层" end}, -- colors
{	id = "trait_bespoke_773_desc_ext_en", -- Slaughter Protocol 屠戮协议
	loc_keys = {"loc_talent_cryptic_toughness_replenishment_on_kill_bonus_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战击杀韧性恢复量提升\n\n当大招充能数大于{#color(255,255,140)}{zero_charges:%s}{#reset()}时，恢复量{#color(255,255,140)}{toughness_percent:%s}{#reset()}\n近战击杀恢复量：5%→6.25%{#color(32,178,170)}韧性{#reset()}\n\n当大招充能数等于{#color(255,255,140)}{zero_charges:%s}{#reset()}时，恢复量{#color(255,255,140)}{toughness_percent_improved:%s}{#reset()}\n近战击杀恢复量：5%→7.5%{#color(32,178,170)}韧性{#reset()}" end}, -- colors
{	id = "trait_bespoke_774_desc_ext_en", -- Adaptive Combat Engram 自适应作战编码
	loc_keys = {"loc_talent_cryptic_dr_on_toughness_break_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "韧性效果消失时，获得韧性与生命的全伤害抗性{#color(255,255,140)}{damage_resistance:%s}{#reset()}（乘法叠加），持续{duration:%s}秒，冷却时间{cooldown:%s}秒\n\n该技能的运作方式就是鼠疫2的树皮术，当你因为挨打而让韧性清空的那一次伤害，不会被该技能削减，因为此时该技能才被触发，他在接下来的5秒内才能给与你减伤效果\n举例你被狙击一发打空韧性，此次伤害不会被削减，接下来的5秒内如果你还挨打，受到的伤害会降低" end}, -- colors
{	id = "trait_bespoke_775_desc_ext_en", -- Hydraulic Impact 液压冲击
	loc_keys = {"loc_talent_cryptic_better_heavies_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在轻击和重击的蓄力阶段，攻击蓄力动画不会被敌人的普通攻击打断\n\n蓄力近战的直击伤害提升{damage:%s}\n\n爪子大招享受重击增伤，无论是横扫、三连、还是默认的前刺+抓取，不管轻击还是长按都按重击算" end}, -- colors
	
--能{power_level:%s}劈{hit_mass:%s}踉{impact:%s}2踉{stagger:%s}3踉{vs_stagger:%s}次{stacks:%s}2次{multiple_hit:%s}3次{time:%s}4次{extra_hits:%s}时{charge_time:%s}2时{cooldown_reduction:%s}暴{crit_chance:%s}热{warp_charge:%s}格{block_cost:%s}冷{cooldown:%s}2冷{cooldown_duration:%s}撕{rending:%s}2撕{min_stack_count:%s}3撕{max_stack_count:%s}移{movement_speed:%s}2移{reduction:%s}压{suppression:%s}换{reload_speed:%s}质{hit_mass_reduction:%s}范{radius:%s}近{melee_heavy_damage:%s}名{talent_name:%s}速{smite_attack_speed:%s}几率{smite_chance:%s}次{max_jumps:%s}速{blitz_two:%s}弱{weakspot_damage:%s}次{bonus_stacks:%s}时{bonus_duration}移{move_speed:%s}几{chance:%s}次{stacks_previous:%s}2次{stacks_after:%s}散{spread_reduction:%s}摇{sway_reduction:%s}后{recoil_reduction:%s}体{stamina:%s}伤{damage:%s}3冷{duration:%s}韧{toughness:%s}
--腐{corruption:%s}腐{resistance:%s}、{ammo:%s}、{max_ammo:%s}、{ammo_threshold:%s}、{ammo_2:%s}、{bullet_amount:%s}
--48个被动小节点，15个基石，15个大招、3个光环、11个闪击、4个回路、5天4.4W字
-- FOR TESTS ONLY!!!
-- {id = "weap_testum00",
-- loc_keys = {
-- "",},
-- locales = {"zh-cn",},
-- handle_func = function(locale, value)
-- return string.gsub(value, "{", "(")
-- end,},
}

function mod.on_enabled()
	if WTL then
		WTL.reload_templates()
	end
end
function mod.on_disabled()
	if WTL then
		WTL.reload_templates()
	end
end
