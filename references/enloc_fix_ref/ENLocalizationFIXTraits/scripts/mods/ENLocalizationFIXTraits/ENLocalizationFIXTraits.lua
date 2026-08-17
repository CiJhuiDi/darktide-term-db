local mod = get_mod("ENLocalizationFIXTraits")
local WTL = get_mod("WhatTheLocalization")
local InputUtils = require("scripts/managers/input/input_utils")

--[[ Thanks to Ovenproof! Moving the Use button.
	--self._widgets_by_name.equip_button.offset[1] = -622 ]]
-- mod:hook_safe(CLASS.InventoryWeaponsView, "on_enter", function (self)
	-- self._widgets_by_name.equip_button.offset = {-622,20,0}
-- end)

--[[ Thanks to Fracticality!
local InputUtils = require("scripts/managers/input/input_utils")
local color_name = mod:get("damage_text_colour")
local color = Color[color_name](255, true)
local damage_text = InputUtils.apply_color_to_input_text("Damage", color) ]]

-- CRIT CHANCE/HIT/DAMAGE
local crit_color = Color[mod:get("crit_text_colour")](255, true)
local crit_chance_color_rgb = InputUtils.apply_color_to_input_text("Critical Hit Chance", crit_color)
local crit_chance_r_color_rgb = InputUtils.apply_color_to_input_text("Critical Strike Chance", crit_color)
local crit_hit_color_rgb = InputUtils.apply_color_to_input_text("Critical Hit Damage", crit_color)

-- DAMAGE
local damage_color = Color[mod:get("damage_text_colour")](255, true)
local damage_color_rgb = InputUtils.apply_color_to_input_text("Damage", damage_color)

-- STAMINA
local stamina_color = Color[mod:get("stamina_text_colour")](255, true)
local stamina_color_rgb = InputUtils.apply_color_to_input_text("Stamina", stamina_color)

-- WEAK SPOT
local weakspot_color = Color[mod:get("weakspot_text_colour")](255, true)
local weakspot4_color_rgb = InputUtils.apply_color_to_input_text("Weak Spot Damage", weakspot_color)

mod.localization_templates = {
-- Fixes and overhauls by xsSplater
-- {	id = "some_id_here",
	-- loc_keys = {"loc_code_of_element",}, -- Enable Debug mode in WhatTheLocalization mod settings
	-- locales = {"zh-cn",}, -- de|en|es|fr|it|pl|ru|...
	-- handle_func = function(locale, value)
	-- return "Your variant of game String." end},

-- ==============================================================WEAPON PERKS

-- ____________________________________________________Melee
{	id = "weap_bb0_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increased_armored_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对防弹护甲" end},
{	id = "weap_bb1_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increased_berserker_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对狂人护甲" end},
{	id = "weap_bb2_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increased_disgustingly_resilient_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对感染护甲" end},
{	id = "weap_bb3_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increased_resistant_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对不屈护甲" end},
{	id = "weap_bb4_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increased_super_armor_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对硬壳护甲" end},
{	id = "weap_bb5_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increased_unarmored_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对无甲敌人" end},
{	id = "weap_bb6_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increase_critical_hit_chance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{crit_chance:%s}近战暴击几率（加法）" end},
{	id = "weap_bb7_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_wield_increase_critical_strike_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{crit_damage:%s}近战暴击伤害（加法，实际伤害加成极低）" end},
{	id = "weap_bb8_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increase_horde_enemy_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对瘟疫行尸和呻吟者（尸潮小僵尸）" end},
{	id = "weap_bb9_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increase_elite_enemy_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对精英敌人" end},
{	id = "weap_bb10_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increase_special_enemy_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对专家敌人" end},
{	id = "weap_bb11_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increase_stamina_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "手持此武器时体力上限{stamina:%s}" end},
{	id = "weap_bb12_ext_en",
	loc_keys = {"loc_trait_melee_common_wield_increase_weakspot_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{weakspot_damage:%s}弱点伤害（加法，实际伤害加成极低）" end},

-- ____________________________________________________Ranged
{	id = "weap_db0_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_armored_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对防弹护甲" end},
{	id = "weap_db1_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_berserker_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对狂人护甲" end},
{	id = "weap_db2_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_disgustinglyresilient_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对感染护甲" end},
{	id = "weap_db3_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_resistant_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对不屈护甲" end},
{	id = "weap_db4_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_superarmor_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对硬壳护甲" end},
{	id = "weap_db5_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_unarmored_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对无甲敌人" end},
{	id = "weap_db6_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_increase_crit_chance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{crit_chance:%s}远程暴击几率（加法）" end},
{	id = "weap_db7_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_wield_increase_critical_strike_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{crit_damage:%s}暴击伤害（加法，实际伤害加成极低）" end},
{	id = "weap_db8_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_increase_elite_enemy_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对精英敌人" end},
{	id = "weap_db9_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_increase_horde_enemy_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对瘟疫行尸和呻吟者（尸潮小僵尸）" end},
{	id = "weap_db10_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_increase_special_enemy_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{damage:%s}伤害对专家敌人" end},
{	id = "weap_db11_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_increase_stamina_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{stamina:%s}远程武器时体力上限" end},
{	id = "weap_db12_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_increase_weakspot_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{weakspot_damage:%s}弱点伤害（加法，实际伤害加成极低）" end},
	{	id = "weap_db13_ext_en",
	loc_keys = {"loc_trait_ranged_common_wield_increase_reload_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{reload_speed:%s}换弹速度（4级实际5.97%）" end},
	
    {	id = "loc_popup_description_slow_internet",
	loc_keys = {"loc_popup_description_slow_internet",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "游戏链接缓慢，尝试更换加速器节点" end},
    {	id = "loc_popup_description_afk_kicked",--1014
	loc_keys = {"loc_popup_description_afk_kicked",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "因长时间不活跃被踢出" end},
	{	id = "loc_disconnect_by_kick",--1015
	loc_keys = {"loc_disconnect_by_kick",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "被队友投票踢出" end},

{	id = "loc_stats_special_action_special_attack_combatsword_p2m1",
	loc_keys = {"loc_stats_special_action_special_attack_combatsword_p2m1_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "反劈连击起手式,准备对敌人施展致命一击\n{#color(230,60,0)}BUG：1.11.1补丁后，重剑特殊攻击会导致无法释放狂信开祷、渣滓箱子、灵能罩子{#reset()}" end},
{	id = "trait_bespoke_0_1_desc_ext_en",
	loc_keys = {"loc_stats_special_action_chem_swap_needlepistol_p1_m1_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在化学毒素（黄针）与爆炸型毒素（蓝针）之间切换毒素模式\n{#color(230,60,0)}BUG：1.10.6版本更新出的问题，直到目前为止，爆炸模式不生效{#reset()}" end}, -- colors
{	id = "trait_bespoke_0_2_desc_ext_en",
	loc_keys = {"loc_stats_special_action_chem_swap_needlepistol_p1_m2_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "在化学毒素（黄针）与爆炸型毒素（蓝针）之间切换毒素模式\n{#color(230,60,0)}BUG：1.10.6版本更新出的问题，直到目前为止，爆炸模式不生效{#reset()}" end}, -- colors
{	id = "trait_bespoke_0_3_desc_ext_en",
	loc_keys = {"loc_stats_special_action_weapon_powerup_dual_stubpistols_p1_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "转枪后{#color(255,255,140)}0.75{#reset()}秒内，下一发子弹的灵巧伤害增加{#color(255,255,140)}+50%{#reset()}\n灵巧指的是爆头暴击的伤害倍率" end}, -- colors
{	id = "trait_bespoke_0_4_desc_ext_en",
	loc_keys = {"loc_stats_special_action_special_bullet_shotgun_p4m2_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "给武器装填一枚破甲弹，使下次射击命中的敌人附加{#color(255,255,140)}25%{#reset()}的脆弱debuff效果\n可以和雷鸣（40%）、穿透火焰（20%）祝福加法叠加到85%\n特殊子弹最多储备6发，拾取任意弹药恢复6发" end}, -- colors
{	id = "trait_bespoke_0_5_desc_ext_en",
	loc_keys = {"loc_stats_special_action_powerup_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "为武器充能以获得更加强大的攻击。\n注意武器的伤害、劈裂目标数、劈裂伤害等基础属性会影响特殊模式\n对动力剑来说，你可以牺牲劈裂目标数，因为劈裂60~80之间没有区别，质变的阈值在88%" end}, -- colors
{	id = "trait_bespoke_0_6_desc_ext_en",
	loc_keys = {"loc_stats_display_burn_stat",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "燃烧（76→88）" end}, -- colors
{	id = "trait_bespoke_0_7_desc_ext_en",
	loc_keys = {"loc_stats_special_action_powermaul_p3_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(255,255,140)}特殊电弧模式：需至少1格能量开启，上限8格，开启后能量无时间增减\n每12.5秒自动回1格；轻重击直击命中3次充能1格\n模式下挡反触发群体爆炸，高额踉跄。命中变种人及以下敌人，强踉跄1秒、感电3秒\n电棍对感电状态下的敌人造成额外10%伤害\n持续击打感电目标触发连锁闪电，6.6米半径、攻击方向90°扇形，最多弹跳2次{#reset()}" end}, -- colors
{	id = "trait_bespoke_0_8_desc_ext_en",
	loc_keys = {"loc_stats_special_action_powersword_p3_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(255,255,140)}特殊能量模式：至少1格能量开启，上限6格，无论命中与否都消耗1格能量\n被动回能：停止释放充能攻击4秒后，每秒恢复1格\n充能攻击判定区分短按轻击、长按重击\n能量层数提升普攻与充能攻击伤害，每层6%，满层直击、充能攻击增伤30%\n{#color(230,60,0)}BUG：五维只有能量输出影响特殊模式伤害，其他都不影响{#reset()}" end}, -- colors
{	id = "trait_bespoke_0_9_desc_ext_en",
	loc_keys = {"loc_stats_special_action_transonic_sword_transonic_knife_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(255,255,140)}特殊能量模式：切换超音速调和形态和攻击招式流派\n每种调和形态对特定装甲类型具备更高作战效率\n在普通攻击后使用特殊按钮，可衔接一记毁灭性横扫重击\n该武器有个穿透的被动设定，其所有攻击都默认无视硬壳敌人的卡刀效果{#reset()}" end}, -- colors
{	id = "trait_bespoke_0_9_desc_ext_en",
	loc_keys = {"loc_weapon_keyword_arc_weapon_mouseover",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(255,255,140)}直击无视硬化皮肤减伤，弹跳电弧算dot，按命中敌人中心算，无视硬化皮肤和腐化装甲减伤\n感电：中弹敌人进入3秒无伤害感电异常\n攻击感电目标触发连锁闪电，作用半径4.8米、散射角度122°；左键闪电仅弹跳1次，右键弹跳2次\n攻击范围内未感电敌人，若角度达标，会直接生成闪电轰击区域内所有感电单位\n弹跳闪电仅按敌人中心的护甲类型算，不看命中部位的护甲类型；单次弹跳闪电不会重复命中同一目标，仅向新敌人弹射；暴击增伤倍率30%{#reset()}" end}, -- colors





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
