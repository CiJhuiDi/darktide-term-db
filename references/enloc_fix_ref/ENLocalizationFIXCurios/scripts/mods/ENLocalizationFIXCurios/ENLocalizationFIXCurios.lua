local mod = get_mod("ENLocalizationFIXCurios")
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

-- COMBAT ABILITY
local combat_ability_color = Color[mod:get("combat_ability_text_colour")](255, true)
local combat_ability_color_rgb = InputUtils.apply_color_to_input_text("Combat Ability", combat_ability_color)

-- CORRUPTION
local corruption_color = Color[mod:get("corruption_text_colour")](255, true)
local corruption_color_rgb = InputUtils.apply_color_to_input_text("Corruption", corruption_color)

-- DAMAGE
local damage_color = Color[mod:get("damage_text_colour")](255, true)
local damage_color_rgb = InputUtils.apply_color_to_input_text("Damage", damage_color)

-- HEALTH
local health_color = Color[mod:get("health_text_colour")](255, true)
local health_color_rgb = InputUtils.apply_color_to_input_text("Health", health_color)

-- STAMINA
local stamina_color = Color[mod:get("stamina_text_colour")](255, true)
local stamina_color_rgb = InputUtils.apply_color_to_input_text("Stamina", stamina_color)

-- TOUGHNESS
local toughness_color = Color[mod:get("toughness_text_colour")](255, true)
local toughness_color_rgb = InputUtils.apply_color_to_input_text("Toughness", toughness_color)


mod.localization_templates = {
-- Fixes and overhauls by xsSplater
-- {	id = "some_id_here",
	-- loc_keys = {"loc_code_of_element",}, -- Enable Debug mode in WhatTheLocalization mod settings
	-- locales = {"zh-cn",}, -- de|en|es|fr|it|pl|ru|...
	-- handle_func = function(locale, value)
	-- return "Your variant of game String." end},

-- ==============================================================CURIOS

-- ____________________________________________________Blessings
{	id = "curio_bless0_ext_zh-cn",
	loc_keys = {"loc_inate_gadget_health_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(0,255,0)}生命上限{max_health_modifier:%s}{#reset()}（最高21）"  end},
{	id = "curio_bless1_ext_zh-cn",
	loc_keys = {"loc_inate_gadget_health_segment_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(255,255,140)}伤口{extra_max_amount_of_wounds:%s}{#reset()}（倒地可救援次数）" end},
{	id = "curio_bless2_ext_zh-cn",
	loc_keys = {"loc_inate_gadget_stamina_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(255,255,140)}体力上限{stamina_modifier:%s}{#reset()}"end},
{	id = "curio_bless3_ext_zh-cn",
	loc_keys = {"loc_inate_gadget_toughness_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(32,178,170)}韧性上限{toughness_bonus:%s}{#reset()}（最高17）"end},

-- ____________________________________________________Traits
{	id = "curio_traits0_ext_en",
	loc_keys = {"loc_gadget_cooldown_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(255,0,150)}大招冷却降低{ability_cooldown_modifier:%s}{#reset()}，3饰品叠加至{#color(255,0,150)}12%{#reset()}（30s→26.4s）" end},
{	id = "curio_traits1_ext_en",
	loc_keys = {"loc_gadget_corruption_resistance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(153,50,204)}腐化抗性{corruption_taken_multiplier:%s}{#reset()}，3饰品{#color(153,50,204)}38.6%{#reset()}，书、毒气、自爆、狗等" end},
{	id = "curio_traits2_ext_en",
	loc_keys = {"loc_gadget_grim_corruption_resistance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(153,50,204)}魔法书抗性{permanent_damage_converter_resistance:%s}{#reset()}，3饰品时{#color(153,50,204)}38.6%{#reset()}，仅对魔法书生效" end},
{	id = "curio_traits3_ext_en",
	loc_keys = {"loc_trait_gadget_health_increase_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(0,255,0)}生命上限{max_health_modifier:%s}{#reset()}，3饰品时{#color(0,255,0)}（21+5）X3=78%{#reset()}" end},
{	id = "curio_traits4_ext_en",
	loc_keys = {"loc_gadget_block_cost_reduction_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "格挡体力降低{#color(255,255,140)}{block_cost_multiplier:%s}{#reset()}，3饰品时{#color(255,255,140)}31.9%{#reset()}" end},
{	id = "curio_traits5_ext_en",
	loc_keys = {"loc_gadget_sprint_cost_reduction_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "跑步体力降低{#color(255,255,140)}{sprinting_cost_multiplier:%s}{#reset()}，3饰品时{#color(255,255,140)}38.6%{#reset()}" end},
{	id = "curio_traits6_ext_en",
	loc_keys = {"loc_gadget_revive_speed_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(255,255,140)}救人加快{revive_speed_modifier:%s}{#reset()}，3饰品{#color(255,255,140)}36%{#reset()}（绑、网、倒地、坠崖3s→2.2s）" end},
{	id = "curio_traits7_ext_en",
	loc_keys = {"loc_gadget_stamina_regeneration_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
--	代码错误，写的是10%实际上是12%
	return "{#color(255,255,140)}每秒体力恢复{stamina_regeneration_modifier:%s}{#reset()}，3饰品时{#color(255,255,140)}40.5%{#reset()}，不降低体力恢复延迟" end},
{	id = "curio_traits8_ext_en",
	loc_keys = {"loc_trait_gadget_toughness_increase_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(32,178,170)}韧性上限{toughness_bonus:%s}{#reset()}，3饰品时{#color(32,178,170)}（17+5）X3=66%{#reset()}" end},
{	id = "curio_traits9_ext_en",
	loc_keys = {"loc_gadget_toughness_regen_delay_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(32,178,170)}连携韧性恢复{toughness_regen_delay_multiplier:%s}{#reset()}，3饰品{#color(32,178,170)}+90%{#reset()}，连携回韧延迟降低{#color(32,178,170)}48.8%{#reset()}" end},
{	id = "curio_traits10_ext_en",
	loc_keys = {"loc_trait_gadget_mission_xp_increase_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "任务完成后获取的人物经验值{#color(255,255,140)}{mission_reward_xp_modifier:%s}{#reset()}，3饰品时{#color(255,255,140)}30%{#reset()}" end},
{	id = "curio_traits11_ext_en",
	loc_keys = {"loc_trait_gadget_mission_credits_increase_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "任务完成后获取双子币{#color(255,255,140)}{mission_reward_credit_modifier:%s}{#reset()}，3饰品时{#color(255,255,140)}30%{#reset()}" end},
{	id = "curio_traits12_ext_en",
	loc_keys = {"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "任务完成后不送武器，送饰品的概率{#color(255,255,140)}{mission_reward_gear_instead_of_weapon_modifier:%s}{#reset()}，3饰品时{#color(255,255,140)}60%{#reset()}" end},
{	id = "curio_traits13_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_flamer_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(255,0,0)}喷火兵伤害抗性{damage_reduction:%s}{#reset()}，3饰品{#color(255,255,140)}48.8%{#reset()}，自爆火地板无效" end},
{	id = "curio_traits14_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_grenadiers_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(153,50,204)}渣滓{#reset()}{#color(255,0,0)}血痂{#reset()}轰炸抗性{#color(255,255,140)}{damage_reduction:%s}{#reset()}，3饰品{#color(255,255,140)}48.8%{#reset()}，不抗地图毒气和油桶" end},
{	id = "curio_traits15_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_gunners_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "血痂渣滓炮手、收割者伤害抗性{#color(255,255,140)}{damage_reduction:%s}{#reset()}，3饰品时{#color(255,255,140)}48.8%{#reset()}" end},
{	id = "curio_traits16_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_hounds_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(153,50,204)}瘟疫猎犬伤害抗性{damage_reduction:%s}{#reset()}，3饰品时{#color(153,50,204)}48.8%{#reset()}" end},
{	id = "curio_traits17_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_mutants_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "变种人伤害抗性{#color(255,255,140)}{damage_reduction:%s}{#reset()}，3饰品时{#color(255,255,140)}48.8%{#reset()}" end},
{	id = "curio_traits18_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_snipers_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "狙击手伤害抗性{#color(255,255,140)}{damage_reduction:%s}{#reset()}，3饰品时{#color(255,255,140)}48.8%{#reset()}" end},
{	id = "curio_traits19_ext_en",
	loc_keys = {"loc_trait_gadget_dr_vs_bursters_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "{#color(128,0,128)}瘟疫爆破手伤害抗性{damage_reduction:%s}{#reset()}，3饰品时{#color(128,0,128)}48.8%{#reset()}" end},





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
