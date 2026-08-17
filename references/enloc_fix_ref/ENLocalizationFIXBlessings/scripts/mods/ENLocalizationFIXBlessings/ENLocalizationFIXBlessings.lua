local mod = get_mod("ENLocalizationFIXBlessings")
local WTL = get_mod("WhatTheLocalization")
local InputUtils = require("scripts/managers/input/input_utils")

--[[ Thanks to Ovenproof! Moving the Use button.
	--self._widgets_by_name.equip_button.offset[1] = -622 ]]
mod:hook_safe(CLASS.InventoryWeaponsView, "on_enter", function (self)
	self._widgets_by_name.equip_button.offset = {-622,20,0}
end)

mod:hook_safe(CLASS.MarksVendorView, "on_enter", function (self)
	self._widgets_by_name.purchase_button.offset = {-622,20,0}
end)

--[[ Thanks to Fracticality!
local InputUtils = require("scripts/managers/input/input_utils")
local color_name = mod:get("damage_text_colour")
local color = Color[color_name](255, true)
local damage_text = InputUtils.apply_color_to_input_text("Damage", color) ]]

-- BLEED 
local bleed_color = Color[mod:get("bleed_text_colour")](255, true)
local bleed_color_rgb = InputUtils.apply_color_to_input_text("Bleed", bleed_color)

-- BRITTLENESS
local brittleness_color = Color[mod:get("brittleness_text_colour")](255, true)
local brittleness_color_rgb = InputUtils.apply_color_to_input_text("Brittleness", brittleness_color)

-- BURN
local burn_color = Color[mod:get("burn_text_colour")](255, true)
local burn_color_rgb = InputUtils.apply_color_to_input_text("Burning", burn_color)

-- CLEAVE
local cleave_color = Color[mod:get("cleave_text_colour")](255, true)
local cleave_color_rgb = InputUtils.apply_color_to_input_text("Cleave", cleave_color)

-- CRIT CHANCE/HIT/DAMAGE
local crit_color = Color[mod:get("crit_text_colour")](255, true)
local crit_chance_color_rgb = InputUtils.apply_color_to_input_text("Critical Chance", crit_color)
local crit_hit_color_rgb = InputUtils.apply_color_to_input_text("Critical Hit", crit_color)
local crit_hits_color_rgb = InputUtils.apply_color_to_input_text("Critical Hits", crit_color)
local crit_color_rgb = InputUtils.apply_color_to_input_text("Critical", crit_color)

-- DAMAGE
local damage_color = Color[mod:get("damage_text_colour")](255, true)
local damage_color_rgb = InputUtils.apply_color_to_input_text("Damage", damage_color)

-- FINESSE
local finesse_color = Color[mod:get("finesse_text_colour")](255, true)
local finesse_color_rgb = InputUtils.apply_color_to_input_text("Finesse", finesse_color)

-- HIT MASS
local hit_mass_color = Color[mod:get("hit_mass_text_colour")](255, true)
local hit_mass_color_rgb = InputUtils.apply_color_to_input_text("Hit Mass", hit_mass_color)

-- IMPACT
local impact_color = Color[mod:get("impact_text_colour")](255, true)
local impact_color_rgb = InputUtils.apply_color_to_input_text("Impact", impact_color)

-- PERIL
local peril_color = Color[mod:get("peril_text_colour")](255, true)
local peril_color_rgb = InputUtils.apply_color_to_input_text("Peril", peril_color)

-- POWER
local power_color = Color[mod:get("power_text_colour")](255, true)
local power_color_rgb = InputUtils.apply_color_to_input_text("Power", power_color)

-- RENDING
local rending_color = Color[mod:get("rending_text_colour")](255, true)
local rending_color_rgb = InputUtils.apply_color_to_input_text("Rending", rending_color)

-- SOULBLAZE
local soulblaze_color = Color[mod:get("soulblaze_text_colour")](255, true)
local soulblaze_color_rgb = InputUtils.apply_color_to_input_text("Soulblaze", soulblaze_color)

-- STAGGER
local stagger_color = Color[mod:get("stagger_text_colour")](255, true)
local stagger_color_rgb = InputUtils.apply_color_to_input_text("Stagger", stagger_color)
local stagger2_color_rgb = InputUtils.apply_color_to_input_text("Staggered", stagger_color)

-- STAMINA
local stamina_color = Color[mod:get("stamina_text_colour")](255, true)
local stamina_color_rgb = InputUtils.apply_color_to_input_text("Stamina", stamina_color)

-- TOUGHNESS
local toughness_color = Color[mod:get("toughness_text_colour")](255, true)
local toughness_color_rgb = InputUtils.apply_color_to_input_text("Toughness", toughness_color)

-- WEAK SPOT
local weakspot_color = Color[mod:get("weakspot_text_colour")](255, true)
local weakspot_color_rgb = InputUtils.apply_color_to_input_text("Weakspot", weakspot_color)
local weakspot2_color_rgb = InputUtils.apply_color_to_input_text("Weak Spot", weakspot_color)
local weakspot3_color_rgb = InputUtils.apply_color_to_input_text("Weak Spots", weakspot_color)
local weakspot4_color_rgb = InputUtils.apply_color_to_input_text("Weak Spot Damage", weakspot_color)


-- NOTE
local note_color = Color[mod:get("note_text_colour")](255, true)
local trauma_note_color_rgb = InputUtils.apply_color_to_input_text(" Doesn't work for secondary attacks of Trauma Staff.", note_color)
local finesse_note_color_rgb = InputUtils.apply_color_to_input_text(" Finesse increases Damage to Weak Spots and Damage from Critical Hits.", note_color)
local power_note_color_rgb = InputUtils.apply_color_to_input_text(" Power increases Damage, Impact and Cleave.", note_color)
local rending_note_color_rgb = InputUtils.apply_color_to_input_text(" Rending increases weapon Damage.", note_color)
local brittleness_note_color_rgb = InputUtils.apply_color_to_input_text(" Brittleness reduces enemy's Armor.", note_color)


mod.localization_templates = {
-- Fixes and overhauls by xsSplater
-- {	id = "some_id_here",
	-- loc_keys = {"loc_code_of_element",}, -- Enable Debug mode in WhatTheLocalization mod settings
	-- locales = {"zh-cn",}, -- de|en|es|fr|it|pl|ru|...
	-- handle_func = function(locale, value)
	-- return "Your variant of game String." end},

-- ==============================================================BLESSINGS OF WEAPONS

-- ==================================================PSYKER

-- ____________________________________________________Melee
-- ____________________________________________________"Devil's Claw" Sword
-- {	id = "trait_bespoke_0_ext_en", -- Trauma_ 创伤
	-- loc_keys = {"loc_trait_bespoke_consecutive_hits_increases_stagger",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Trauma" end},
{	id = "trait_bespoke_0_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_consecutive_hits_increases_stagger_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用当前武器连续命中敌人时（推也算），从第二次命中开始，每次堆叠1层{#color(255,255,140)}{impact:%s}{#reset()}踉跄强度（加法叠加），{#color(255,255,140)}10%{#reset()}踉跄持续时间（乘法叠加），叠加上限{#color(255,255,140)}{stacks:%s}层{#reset()}，持续{#color(255,255,140)}{time:%s}秒{#reset()}\n叠满100%的踉跄强度，并且让敌人连滚带爬的时间延长61%，在对抗纳垢赐福绿怪之类的敌人有更好的效果，对变种人和boss没用" end}, -- colors
-- {	id = "trait_bespoke_1_ext_en", -- Savage Sweep
	-- loc_keys = {"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Savage Sweep" end},
--{	id = "trait_bespoke_1_desc_ext_en",
	--loc_keys = {"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits_desc",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	--return "Hitting at least {#color(255,255,140)}{multiple_hit:%s}{#reset()} enemies with an attack, increases your " .. cleave_color_rgb .. " by {#color(255,255,140)}{cleave:%s}{#reset()} for {#color(255,255,140)}{time:%s}{#reset()} seconds." end}, -- colors
-- {	id = "trait_bespoke_2_ext_en", -- Skullcrusher
	-- loc_keys = {"loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Skullcrusher" end},
	{	id = "trait_bespoke_2_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "对被命中的目标添加{#color(255,255,140)}{stacks:%s}{#reset()}层碎颅异常状态，根据敌人当前的踉跄程度，每层最多受到额外{#color(255,255,140)}{damage:%s}{#reset()}伤害（全队生效，包括dot伤害也增幅），最多堆叠{#color(255,155,55)}8{#reset()}层，持续{#color(255,255,140)}{time:%s}{#reset()}秒（除了纳垢兽弱点、无盾连长能吃到增伤外，其他BOSS因为无法踉跄所以无效。" end},
	{	id = "trait_bespoke_2_1_desc_ext_en", --No Guts No Glory 没有胆量，没有荣耀
	loc_keys = {"loc_trait_bespoke_toughness_regen_on_punching_elites_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "命中精英敌人时，自身每秒都可以获得4人连携时50%的{#color(32,178,170)}韧性{#reset()}恢复{#color(255,255,140)}3.75{#reset()}，持续{#color(255,255,140)}2~5秒{#reset()}（按祝福等级）\n{#color(230,60,0)}BUG：狂信那儿扣的代码，即使没有队友也能恢复，连携延迟降低为0，但如果有近战敌人锁定玩家会导致韧性无法恢复{#reset()}" end},
-- {	id = "trait_bespoke_3_ext_ru", -- Thunderstrike
	-- loc_keys = {"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Thunderstrike" end},
{	id = "trait_bespoke_3_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战攻击命中一个处于踉跄状态的敌人时，对被命中的目标添加{#color(255,255,140)}{stacks:%s}{#reset()}层雷击异常状态，每层会使敌人受到额外{#color(255,255,140)}{impact:%s}{#reset()}踉跄（全队生效），最多堆叠{#color(255,155,55)}8层{#reset()}，持续{#color(255,255,140)}{time:%s}秒{#reset()}\n电棍直击+爆炸一次能叠满8层，欧格林冲锋撞翻部分BOSS后才能给对方挂雷击" end},
	{	id = "trait_bespoke_3_1_desc_ext_en", --最后的卫士 Last Guard
	loc_keys = {"loc_trait_block_break_pushes_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "格挡体力消耗降低{#color(255,255,140)}{block_cost:%s}{#reset()}\n当玩家的体力因为格挡降低至0后，产生半径{#color(255,255,140)}5{#reset()}米的高额踉跄，前方强控198°除了牛boss带盾连长外都能控，后方弱控162°不能踉跄狂战、粉碎，爆炸冷却{#color(255,255,140)}{cooldown:%s}{#reset()}秒\n格挡近战：正面72%→80.4%，侧、背面20%→15.4%\n格挡远程：正面86%→90.2%，侧、背面挡不住" end},

-- {	id = "trait_bespoke_4_ext_ru", -- Rampage 狂暴
	-- loc_keys = {"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Rampage" end},
{	id = "loc_trait_bespoke_increased_melee_damage_on_multiple_hits_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_increased_melee_damage_on_multiple_hits_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "单次近战攻击命中至少{#color(255,255,140)}{multiple_hit:%s}{#reset()}个敌人时，近战伤害与踉跄增加{#color(255,255,140)}{damage:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}{#reset()}秒" end}, -- colors -- DAMAGE -> POWER!!!
{	id = "trait_bespoke_4_1_desc_ext_en", -- 刀刃势头 Bladed Momentum
	loc_keys = {"loc_trait_bespoke_stacking_melee_rending_on_cleave_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "单次近战攻击命中至少2个以上的敌人时，玩家的近战直击伤害，会获得{#color(255,255,140)}{rending:%s}{#reset()}的撕裂效果，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层，持续{#color(255,255,140)}{time:%s}{#reset()}秒\n重剑倍率：无甲100%→100%、感染80%→100%、防弹60%→92%、不屈37%→69%、硬壳4%→36%、狂人73%→101.25%\n无甲感染比较特别，它们本身上限就只有100%没额外增伤" end},
{	id = "trait_bespoke_4_2_desc_ext_en", -- Chained Deathblow 连锁死亡打击
	loc_keys = {"loc_trait_bespoke_increased_crit_chance_on_weakspot_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你造成弱点击杀后，在{#color(255,255,140)}{time:%s}{#reset()}秒内，玩家的暴击几率增加{#color(255,255,140)}{crit_chance:%s}{#reset()}" end},
-- {	id = "trait_bespoke_5_ext_en", -- Wrath 怒火
	-- loc_keys = {"loc_trait_bespoke_chained_hits_increases_cleave",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Wrath" end},
{	id = "trait_bespoke_5_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_chained_hits_increases_cleave_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你的这一次近战攻击命中敌人时（不管几个），玩家自身只能获得1层{#color(255,255,140)}{cleave:%s}{#reset()}劈裂效果，持续{#color(255,155,55)}3.5{#reset()}秒，最多叠加{#color(255,255,140)}{stacks:%s}{#reset()}层（劈裂越高单次攻击可命中的敌人数量越多，但是会有伤害衰减；如果你的攻击没有命中敌人，那么所有堆叠的层数都会消失）" end}, -- colors Note! -- hidden "for 3.5 seconds"
{	id = "trait_bespoke_5_1_desc_ext_en",--能量泄露 Energy Leakage
	loc_keys = {"loc_power_bonus_scaled_on_heat_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据热量等级增加能量（全局伤害加成，包括dot），每{#color(255,255,140)}20%{#reset()}热量增加1层，每层增加{#color(255,255,140)}{amount}{#reset()}，叠加上限{#color(255,255,140)}5{#reset()}层，上限12.5~20%" end}, -- colors Note! -- hidden "for 3.5 seconds"
{	id = "trait_bespoke_5_2_desc_ext_en",--能量转移 Energy Transfer
	loc_keys = {"loc_slower_heat_buildup_on_perfect_block_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你在敌人攻击前的0.3秒内按下右键进行完美格挡，可以为你提供持续{#color(255,255,140)}{time:%s}{#reset()}秒的buff：附魔期间被动热量提升速度降低{#color(255,255,140)}{heat_reduction:%s}{#reset()}，附魔结束后散热速度加快{#color(255,255,140)}{heat_dissipation:%s}{#reset()}\nbuff不叠加只有1层而且无法刷新持续时间，buff结束3秒才能再次触发，与其他减热散热效果乘法叠加\n减少热量仅对被动生效，主动攻击的每下3.4%（老剑）、2.9%（新刀）热量不会降低\n举例80%抗性下每秒产生3.4%热量，不攻击29.42秒过热，散热8.83秒。按两次完美格挡算，持续31.42秒，散热8.66秒" end}, -- colors Note! -- hidden "for 3.5 seconds" 
{	id = "trait_bespoke_5_3_desc_ext_en",--Cranial Grounding 人头落地
	loc_keys = {"loc_chained_weakspot_hits_increase_finesse_and_reduce_overheat_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家连续命中敌人弱点时，从第二击开始，每次攻击叠加一层：弱点与暴击伤害倍率{#color(255,255,140)}{damage:%s}{#reset()}，附魔期间被动升温以及命中敌人升温的幅度降低{#color(255,255,140)}{buildup_amount:%s}{#reset()}，持续时间{#color(255,255,140)}{duration:%s}{#reset()}，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层\n叠满5层时弱点与暴击倍率+20%，热量降低26.6%\n弱点20%的实际增伤大致7%左右，热量方面从砍18刀过热变为砍23刀过热" end}, -- colors Note! -- hidden "for 3.5 seconds"
{	id = "trait_bespoke_5_4_desc_ext_en",--散热器 Heatsink
	loc_keys = {"loc_reduce_fixed_overheat_amount_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家手持当前武器造成弱点、暴击击杀时（飞刀杀也算）获得{#color(255,255,140)}1{#reset()}层持续{#color(255,255,140)}{time:%s}{#reset()}秒的buff：附魔持续期间每秒降低{#color(255,255,140)}0.33~0.83%{#reset()}的热量（按祝福等级），附魔结束后每秒降低{#color(255,255,140)}1.3~3.3%{#reset()}的热量（按祝福等级）\n持续期间内重复触发可重置持续时间\n实战从18刀过热变成19刀，过热后的散热时间从8.83秒减少到6.84秒" end}, -- colors Note! -- hidden "for 3.5 seconds"
{	id = "trait_bespoke_5_5_desc_ext_en",--过载 overload
	loc_keys = {"loc_explosion_on_overheat_lockout_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "武器热量到达100%时，立刻产生一次爆炸并降低{#color(255,255,140)}{overheat_reduction:%s}{#reset()}的热量\n爆炸内半径{#color(255,255,140)}2~2.75{#reset()}米，可造成25点伤害\n爆炸外半径{#color(255,255,140)}3~4.5{#reset()}米，造成微弱踉跄效果\n想再附魔要等6.62秒完全散热后才行\n{#color(230,60,0)}BUG：别带这个，有概率导致游戏崩溃{#reset()}" end}, -- colors Note! -- hidden "for 3.5 seconds"
-- {	id = "trait_bespoke_6_ext_en", -- Hammerblow 锤击
	-- loc_keys = {"loc_trait_bespoke_stacking_increase_impact_on_hit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Hammerblow" end},
{	id = "trait_bespoke_6_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_stacking_increase_impact_on_hit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战攻击以及电锤的电弧命中敌人，玩家自身获得{#color(255,255,140)}{impact:%s}{#reset()}踉跄效果，持续{#color(255,255,140)}{time:%s}{#reset()}秒，最多叠加{#color(255,255,140)}{stacks:%s}{#reset()}层\n命中多个可同时堆叠多层" end}, -- colors s->seconds -- {time:%s}=1.5
-- {	id = "trait_bespoke_7_ext_en", -- Devastating Strike
	-- loc_keys = {"loc_trait_bespoke_infinite_melee_cleave_on_crit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Devastating Strike" end},
{	id = "trait_bespoke_7_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_infinite_melee_cleave_on_crit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当你的这一次近战攻击产生暴击时，玩家自身获得{#color(255,255,140)}{hit_mass:%s}{#reset()}劈裂效果，持续{#color(255,255,140)}{time:%s}{#reset()}秒（劈裂越高，单次攻击可命中的敌人数量越多，但是伤害衰减会导致玩家的攻击打上去，后面挨打的敌人只破个皮）" end}, -- colors
-- {	id = "trait_bespoke_8_ext_en", -- Shred 撕碎
	-- loc_keys = {"loc_trait_bespoke_chained_hits_increases_crit_chance",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Shred" end},
{	id = "trait_bespoke_8_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_chained_hits_increases_crit_chance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用该武器命中敌人时（盾牌也算），暴击几率增加{#color(255,255,140)}{crit_chance:%s}{#reset()}，持续时间{#color(255,155,55)}3.5{#reset()}秒，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层\n如果打空会清除所有层数\n{#color(230,60,0)}BUG：灵能大剑的剑气无法叠加层数{#reset()}" end},
-- {	id = "trait_bespoke_9_ext_ru", -- Vicious Slice 邪恶斩切
	-- loc_keys = {"loc_trait_bespoke_increase_stagger_per_hit_in_sweep",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Vicious Slice" end},
{	id = "trait_bespoke_9_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_increase_stagger_per_hit_in_sweep_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "从第二个开始，每个被你命中的敌人，都会增加此次攻击对其造成{#color(255,255,140)}{impact:%s}{#reset()}踉跄值，上限{#color(255,255,140)}5层{#reset()}，没有持续时间，所以挥刀攻击后buff就会消失\n该祝福是为了单次攻击可以对更多敌人造成更好的踉跄效果。祝福对被命中的前六个敌人产生影响，从第二个开始，每个敌人受到1层踉跄加成，第五个则是五层踉跄加成。比如武器基础踉跄9，但是命中第六个敌人时衰减至3.5，有这个祝福就是3.5X（0.2X5+1）=7" end}, -- colors

-- ____________________________________________________Blaze Force Sword
-- {	id = "trait_bespoke_10_ext_en", -- Exorcist 驱魔
	-- loc_keys = {"loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Exorcist" end},
{	id = "trait_bespoke_10_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用近战武器连续命中敌人弱点时，从第二次命中弱点开始，每次命中弱点都可以降低玩家自身{#color(255,255,140)}{warp_charge:%s}{#reset()}的热量\n命中多个敌人弱点也只算一次，推搡挡反、武器特殊模式都不算" end}, -- colors
-- {	id = "trait_bespoke_11_ext_en", -- Riposte
	-- loc_keys = {"loc_trait_bespoke_dodge_grants_crit_chance",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Riposte" end},
{	id = "trait_bespoke_11_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_dodge_grants_crit_chance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "成功闪避敌人的一次攻击时（炮手、狙击的不算），玩家自身获得{#color(255,255,140)}{crit_chance:%s}{#reset()}近战暴击几率加成（近战限定，加法叠加），持续{#color(255,255,140)}{time:%s}{#reset()}秒，重复触发不叠加但可以重置持续时间" end}, -- colors s->seconds
-- {	id = "trait_bespoke_12_ext_en", -- Precognition
	-- loc_keys = {"loc_trait_bespoke_dodge_grants_finesse_bonus",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Precognition 预知" end},
{	id = "trait_bespoke_12_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_dodge_grants_finesse_bonus_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "成功闪避敌人的一次攻击时（炮手、狙击的不算），玩家自身获得{#color(255,255,140)}{damage:%s}{#reset()}的近战娴熟伤害加成（近战限定，加法叠加，娴熟会同时增加弱点倍率和暴击倍率），持续{#color(255,255,140)}{time:%s}秒{#reset()}，上限1层" end},
-- {	id = "trait_bespoke_13_ext_ru", -- Deflector
	-- loc_keys = {"loc_trait_bespoke_can_block_ranged",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Deflector" end},
{	id = "trait_bespoke_13_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_can_block_ranged_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "灵能剑的格挡现在可以挡住子弹、激光、连长等离子这类普通远程投射物攻击（狙击、喷火不行），并且格挡消耗降低{#color(255,255,140)}{block_cost:%s}{#reset()}。偏转器不等于无敌，BOSS、大小罐头的很多攻击都可以无视格挡直接对玩家造成伤害，并且偏转器在你拉人的时候不生效\n{#color(230,60,0)}BUG：灵能剑的亚空间抗性对动能偏转技能不生效{#reset()}" end},
{	id = "trait_bespoke_13_1_desc_ext_en", --亚空间切割Warp Slice
	loc_keys = {"loc_trait_bespoke_wind_slash_crits_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "附魔后的第一击必定暴击，冷却{#color(255,255,140)}{cooldown:%s}{#reset()}秒\n剑气暴击倍率是1.3并不高，也没有弱点伤害加成\n附魔后如果不想攻击可以切远程或闪击，祝福不会进入CD\n剑气可穿墙，射程0~8米内伤害最大，15~29米衰减至基础的10%" end},
-- {	id = "trait_bespoke_14_ext_ru", -- Uncanny Strike 神秘打击
	-- loc_keys = {"loc_trait_bespoke_stacking_rending_on_weakspot",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Uncanny Strike" end},
{	id = "trait_bespoke_14_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_stacking_rending_debuff_on_weakspot_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "对被命中的目标添加{#color(255,255,140)}{stacks:%s}{#reset()}层脆弱异常状态（上限16层，全队生效），每层{#color(255,255,140)}{rending:%s}{#reset()}脆弱，持续{#color(255,255,140)}{time:%s}{#reset()}秒（到上限的时候武器无论攻击什么敌人都是按照无甲伤害算（按VE查看武器的攻击系数），叠加超过40%的部分算作四分之一全增伤，比如60%撕裂就等于（60%-40%）÷4=5%全增伤），无甲感染比较特别，它们本身上限就只有100%没额外增伤\n{#color(230,60,0)}BUG：灵能剑挡反后续的推动攻击算击中弱点，也能触发神秘打击，可以为最靠近自己的单个敌人叠加debuff{#reset()}" end},
-- {	id = "trait_bespoke_15_ext_ru", -- Executor 处刑者
	-- loc_keys = {"loc_trait_bespoke_chained_weakspot_hits_increases_power",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Executor" end},
{	id = "trait_bespoke_15_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_chained_weakspot_hits_increases_power_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用近战武器连续命中敌人弱点时，从第二次命中弱点开始，每次命中弱点都可以为玩家增加{#color(255,255,140)}{power_level:%s}{#reset()}能量（全局加成，对dot生效），叠加上限为{#color(255,255,140)}{stacks:%s}{#reset()}层，持续{#color(255,255,140)}2.5{#reset()}秒。如果只命中身体会清空层数" end}, -- colors
-- {	id = "trait_bespoke_16_ext_en", -- Slaughterer 屠宰
	-- loc_keys = {"loc_trait_bespoke_increase_power_on_kill",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Slaughterer" end},
{	id = "trait_bespoke_16_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_increase_power_on_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家对敌人造成击杀时，每次击杀都可以为玩家增加{#color(255,255,140)}{power_level:%s}{#reset()}能量（全局伤害加成），叠加上限为{#color(255,255,140)}{stacks:%s}{#reset()}层，持续{#color(255,255,140)}{time:%s}{#reset()}秒" end}, -- colors s->seconds
-- {	id = "trait_bespoke_17__ext_en", -- Unstable Power
	-- loc_keys = {"loc_trait_bespoke_warp_charge_power_bonus",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Unstable Power" end},
{	id = "trait_bespoke_17_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_warp_charge_power_bonus_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家当前热量越高，伤害就越高，每20%热量增加{#color(255,255,140)}{power_level:%s}{#reset()}能量（全局加成，最终伤害乘法叠加），在80%热量时候加成为最高值{#color(255,255,140)}20%{#reset()}能量" end},
-- {	id = "trait_bespoke_18_ext_en", -- Blazing Spirit 烈焰之魂
	-- loc_keys = {"loc_trait_bespoke_warp_burninating_on_crit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Blazing Spirit" end},
{	id = "trait_bespoke_18_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_warp_burninating_on_crit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家使用当前武器产生暴击时，被命中的敌人受到{#color(255,255,140)}{stacks:%s}{#reset()}层魂火异常状态。如果敌人身上已有{#color(255,255,140)}{max_stacks:%s}{#reset()}层时，就无法用此祝福为其继续叠加层数\n当敌人身上有虚空盾时，平A无法为其继续施加魂火debuff，但剑气可以" end},
-- {	id = "trait_bespoke_19_ext_ru", -- Superiority 优势
	-- loc_keys = {"loc_trait_bespoke_elite_kills_grants_stackable_power",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Superiority" end},
{	id = "trait_bespoke_19_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_elite_kills_grants_stackable_power_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用该武器时，以任意方式击杀精英或专家后（包括dot），增加{#color(255,255,140)}{power_level:%s}{#reset()}能量（全局加成，最终伤害乘法叠加），持续{#color(255,255,140)}{time:%s}{#reset()}秒，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层" end}, -- colors s->seconds
-- {	id = "trait_bespoke_20_ext_en", -- Bloodthirsty
	-- loc_keys = {"loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Bloodthirsty" end}, 嗜血
{	id = "trait_bespoke_20_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用武器的特殊模式对敌人造成击杀时（链锯开锯、灵能剑附魔），玩家的下次攻击会获得{#color(255,255,140)}{crit_chance:%s}{#reset()}近战暴击几率，持续{#color(255,255,140)}5{#reset()}秒" end}, -- colors

-- ____________________________________________________Assault Chainsword
-- {	id = "trait_bespoke_21_ext_en", -- Bloodletter
	-- loc_keys = {"loc_trait_bespoke_bleed_on_activated_hit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Bloodletter" end},
{	id = "trait_bespoke_21_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_bleed_on_activated_hit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用武器的特殊模式命中敌人时（链锯开锯），特殊的每跳伤害都会给敌人{#color(255,255,140)}{stacks:%s}{#reset()}流血异常状态，上限{#color(255,155,55)}16{#reset()}层\n有虚空盾的连长不行，也不能隔着盾牌流血\n{#color(230,60,0)}BUG：链锯剑14层，链锯斧16层，链锯大剑6层{#reset()}\n{#color(230,60,0)}BUG：链锯斧造成的流血可以叠雷鸣、刷新雷鸣持续时间{#reset()}" end}, -- colors
{	id = "trait_bespoke_21_1_desc_ext_en", --野蛮扫荡 Savage Sweep
	loc_keys = {"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用近战攻击命中至少{#color(255,255,140)}{multiple_hit:%s}{#reset()}个敌人时，玩家的劈裂值提升{#color(255,255,140)}{cleave:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}{#reset()}秒\n简单来说就是平常一刀打2个渣滓狂战，4级一刀能砍5个渣滓狂战\n攻击到具有“无法穿透”属性的硬壳敌人时仍然会弹刀" end},
-- {	id = "trait_bespoke_22_ext_en", -- Rev it up 加速
	-- loc_keys = {"loc_trait_bespoke_movement_speed_on_activation",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Rev it up" end},
{	id = "trait_bespoke_22_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_movement_speed_on_activation_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用武器的特殊模式时（链锯开锯），自身会获得{#color(255,255,140)}{movement_speed:%s}{#reset()}移动速度加成，持续{#color(255,255,140)}{time:%s}{#reset()}秒" end}, -- colors s->seconds

-- ____________________________________________________Tactical Axe
-- {	id = "trait_bespoke_23_ext_en", -- 野蛮势头 Brutal Momentum
	-- loc_keys = {"loc_trait_bespoke_infinite_cleave_on_weakspot_kill",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Brutal Momentum" end},
{	id = "trait_bespoke_23_desc_ext_en", 
	loc_keys = {"loc_trait_bespoke_infinite_cleave_on_weakspot_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家使用此武器造成的弱点伤害增加{#color(255,255,140)}{weakspot_damage:%s}{#reset()}（乘法叠加），当玩家的某次弱点攻击可以击杀敌人时，此次攻击可以对最多4个敌人视为第一击（伤害不衰减；大幅度增加穿透数量，对硬壳、欧格林、boss不生效），从第五个开始正常计算穿透伤害衰减" end},
{	id = "trait_bespoke_23_1_desc_ext_en", -- 敏捷 Agile
	loc_keys = {"loc_trait_bespoke_dodge_count_reset_on_weakspot_hit_and_weakspot_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战武器命中敌人弱点时，将闪避层数重置为最大值（层数为0时闪避距离降低50%，停止闪避0.85秒后恢复）\n近战弱点伤害增加{#color(255,255,140)}2.5%~10%{#reset()}（按祝福等级）" end},
-- {	id = "trait_bespoke_24__ext_ru", -- 断肢者 Limbsplitter
	-- loc_keys = {"loc_trait_bespoke_power_bonus_on_first_attack",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Limbsplitter" end},
{	id = "trait_bespoke_24_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_power_bonus_on_first_attack_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "如果玩家在{#color(255,255,140)}{cooldown:%s}{#reset()}秒内没有攻击命中过敌人，那么玩家的下一次攻击近战伤害与踉跄增加{#color(255,255,140)}{power_level:%s}{#reset()}" end}, -- colors
-- {	id = "trait_bespoke_25_ext_en", -- 孤注一掷 All or Nothing
	-- loc_keys = {"loc_trait_bespoke_power_bonus_scaled_on_stamina",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "孤注一掷" end},
{	id = "trait_bespoke_25_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_power_bonus_scaled_on_stamina_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家每损失{#color(255,255,140)}20%{#reset()}体力，就会增加{#color(255,255,140)}5%~8%{#reset()}直击伤害与踉跄（按祝福等级），体力耗尽时达到最大值{#color(255,255,140)}25%~{power_level:%s}{#reset()}" end}, -- colors Note!
-- {	id = "trait_bespoke_26_ext_en", -- 夺颅者Headtaker
	-- loc_keys = {"loc_trait_bespoke_increase_power_on_hit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Headtaker" end},
{	id = "trait_bespoke_26_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_increase_power_on_hit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家使用当前武器每命中一个敌人，获得{#color(255,255,140)}1层{#reset()}直击伤害与踉跄（有些武器还会加穿透）{#color(255,255,140)}{power_level:%s}{#reset()}的效果，持续{#color(255,255,140)}{time:%s}{#reset()}秒，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}次" end}, -- colors
-- {	id = "trait_bespoke_26_ext_en", -- 夺颅者Headtaker
	-- loc_keys = {"loc_trait_bespoke_increase_power_on_hit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Headtaker" end},
{	id = "loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill_new_ext_en", --Slaughter Spree 屠杀狂欢
	loc_keys = {"loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家的近战攻击产生暴击、并且命中敌人弱点、并且击杀敌人时，在{#color(255,255,140)}5{#reset()}秒内的下一次近战攻击，近战暴击几率增加{#color(255,255,140)}+40~100%{#reset()}" end}, -- colors
-- {	id = "trait_bespoke_27_ext_en", -- Decimator 屠戮者
	-- loc_keys = {"loc_trait_bespoke_chained_hits_increases_power",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Decimator" end},
{	id = "trait_bespoke_27_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_chained_hits_increases_power_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用近战武器连续命中敌人时，从第二次命中开始，每次命中敌人都可以为玩家增加{#color(255,255,140)}{power_level:%s}{#reset()}直击伤害与踉跄（有些武器还会加穿透），叠加上限为{#color(255,255,140)}{stacks:%s}{#reset()}层\n如果打空，会清除所有层数"  end}, -- colors

-- ____________________________________________________Combat Axe
-- {	id = "trait_bespoke_28_ext_en", -- Thrust
	-- loc_keys = {"loc_trait_bespoke_power_bonus_based_on_charge_time",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Thrust" end},
{	id = "trait_bespoke_28_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_power_bonus_based_on_charge_time_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据玩家长按鼠标左键的蓄力时间，来为武器增加伤害，每层增加{#color(255,255,140)}{power_level:%s}{#reset()}直击伤害与踉跄（有些武器还会加穿透），最多叠加{#color(255,255,140)}{stacks:%s}{#reset()}层\n链锯斧、镐子、雷锤是0.2秒一层，其他是0.25秒" end}, -- colors
-- {	id = "trait_bespoke_29_ext_en", -- Thunderous 雷鸣
	-- loc_keys = {"loc_trait_bespoke_targets_receive_rending_debuff",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Thunderous" end},
{	id = "trait_bespoke_29_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_targets_receive_rending_debuff_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "对被命中的目标添加{#color(255,255,140)}{stacks:%s}{#reset()}层脆弱异常状态（上限16层，全队生效），每层{#color(255,255,140)}{rending:%s}{#reset()}脆弱，持续{#color(255,255,140)}{time:%s}{#reset()}秒（到上限的时候武器无论攻击什么敌人都是按照无甲伤害算（按VE查看武器的攻击系数），叠加超过40%的部分算作四分之一全增伤，比如60%撕裂就等于（60%-40%）÷4=5%全增伤）\n无甲感染比较特别，它们本身上限就只有100%没额外增伤\n{#color(230,60,0)}BUG：推搡也能为敌人叠加debuff，机械电棍开特殊后挡反，可以快速为一群敌人套上{#reset()}" end},
-- {	id = "trait_bespoke_30_ext_ru", -- Decapitator 斩首者
	-- loc_keys = {"loc_trait_bespoke_stacking_rending_on_one_hit_kills",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Decapitator" end},
{	id = "trait_bespoke_30_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_stacking_rending_on_one_hit_kills_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用近战武器，对一个80%血的目标，在单次攻击中造成多过其生命上限的伤害时，玩家自身获得{#color(255,255,140)}{finesse:%s}{#reset()}近战娴熟伤害加成（弱点倍率与暴击倍率，乘法叠加），持续{#color(255,255,140)}{time:%s}{#reset()}秒（逐层消失），叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层\n120%弱点倍率加成实际伤害增幅是35%，倍率的算法是（弱点369÷身体260）X（1+120%）=92%，倍率从41%提升至92%）" end}, -- colors s->seconds Note!

-- ____________________________________________________Combat Blade
-- {	id = "trait_bespoke_31_ext_en", -- Smackdown 攻击波
	-- loc_keys = {"loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Smackdown" end},
{	id = "trait_bespoke_31_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用武器的特殊攻击动作命中敌人时，如果对敌人造成了踉跄，那么玩家自身获得{#color(255,255,140)}{crit_chance:%s}{#reset()}近战暴击几率加成，持续{#color(255,255,140)}{time:%s}{#reset()}秒（切换武器buff失效，特殊攻击基本不可能踉跄欧格林和boss）" end}, -- colors s->seconds ()->for
-- {	id = "trait_bespoke_32_ext_en", -- Flesh Tearer
	-- loc_keys = {"loc_trait_bespoke_bleed_on_crit_melee",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Flesh Tearer" end},
{	id = "trait_bespoke_32_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_bleed_on_crit_melee_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家使用当前武器产生暴击时，被命中的敌人受到{#color(255,255,140)}{stacks:%s}{#reset()}层流血异常状态，流血上限{#color(255,155,55)}16{#reset()}层，到达上限后就无法继续叠加\n当敌人身上有虚空盾时，无法为其继续施加流血debuff" end}, -- colors
-- {	id = "trait_bespoke_33_ext_en", -- Lacerate
	-- loc_keys = {"loc_trait_bespoke_bleed_on_non_weakspot_hit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Lacerate" end},
{	id = "trait_bespoke_33_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_bleed_on_non_weakspot_hit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家使用当前武器命中敌人弱点之外的部位时，被命中的敌人受到{#color(255,255,140)}{stacks:%s}{#reset()}层流血异常状态，流血上限{#color(255,155,55)}16{#reset()}层，到达上限后就无法继续叠加\n当敌人身上有虚空盾时，无法为其继续施加流血debuff" end}, -- colors
-- {	id = "trait_bespoke_34_ext_en", -- Ruthless Backstab 无情背刺
	-- loc_keys = {"loc_trait_bespoke_rending_on_backstabs",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Ruthless Backstab" end},
{	id = "trait_bespoke_34_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_rending_on_backstabs_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家手持此武器造成近战背刺伤害时，此次攻击造成的撕裂效果{#color(255,255,140)}{rending:%s}{#reset()}（加法叠加，比如匕首基础4%+100%就是101%撕裂）\n无甲感染比较特别，它们本身上限就只有100%没额外增伤" end}, -- colors
{	id = "trait_bespoke_34_1_desc_ext_en", --Relentless Strikes 无情打击
	loc_keys = {"loc_trait_bespoke_power_bonus_on_same_enemy_attacks_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家手持此武器连续命中、推搡同一个敌人时，从第二次命中开始，每次叠加一层{#color(255,255,140)}{power_level:%s}{#reset()}直击伤害与踉跄，持续{#color(255,255,140)}{time:%s}{#reset()}秒，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层\n命中其他敌人会清空buff" end}, -- colors
-- {	id = "trait_bespoke_35_ext_en", -- Mercy Killer
	-- loc_keys = {"loc_trait_bespoke_increased_weakspot_damage_on_bleeding",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Mercy Killer" end},
--{	id = "trait_bespoke_35_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_increased_weakspot_damage_on_bleeding_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{#color(255,255,140)}{damage:%s}{#reset()} " .. weakspot4_color_rgb .. " to Enemies with " .. bleed_color_rgb .. " Stacks." end}, -- colors
-- {	id = "trait_bespoke_36_ext_en", -- Haymaker 干草机
	-- loc_keys = {"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Haymaker" end},
	
{	id = "trait_bespoke_36_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家使用当前武器的左键蓄力、挡反攻击模式，每命中1个敌人时，就会为自身叠加1层{#color(255,255,140)}{proc_chance:%s}{#reset()}秒杀buff，在出效果时可以瞬间击杀敌人（欧格林、BOSS、连长无效），叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层，持续时间{#color(255,155,55)}5秒{#reset()}\n持续时间到了只消失一层\n{#color(230,60,0)}BUG：代码杀无法触发大部分职业的技能效果，比如欧格林制霸巨汉屠杀、老兵的给手雷、灵能的恢复CD等等，但可以恢复渣滓飞刀数量{#reset()}" end}, -- colors

{	id = "trait_bespoke_36_1_desc_ext_en", -- Opportunist 机会主义者
	loc_keys = {"loc_trait_bespoke_melee_rending_vs_staggered_desc",},
	locales = {"zh-cn",}, handle_func = function(locale, value)
	return "当敌人处于踉跄状态时，玩家的近战直击伤害，会获得{#color(255,255,140)}{rending:%s}{#reset()}的撕裂效果\n撕裂超过100%的部分扣除75%（电锤特殊攻击命中的敌人会处于3秒踉跄状态（BOSS、自爆、变种人除外），蓄力对硬壳倍率是83%，+25%撕裂后为100%+2%，轻击对硬壳是45%，加成后为70%）\n无甲感染比较特别，它们本身上限就只有100%没额外增伤" end},
	
 {	id = "trait_bespoke_36_2_desc_ext_en", -- 闪电反应 Lightning Reflexes
	 loc_keys = {"loc_trait_bespoke_block_has_chance_to_stun_with_cd_desc",},
	 locales = {"zh-cn",}, handle_func = function(locale, value)
	 return "在敌人攻击前的一瞬间完美格挡（{#color(255,255,140)}0.3秒{#reset()}内），敌人就会遭到电击在原地打摆子{#color(255,255,140)}3秒{#reset()}（这一特效有{#color(255,255,140)}{cooldown_duration:%s}{#reset()}秒的内置CD）。使敌人每0.55秒造成一次dot伤害和踉跄。玩家自身获得{#color(255,255,140)}{power_level:%s}{#reset()}的近战伤害与踉跄加成，持续{#color(255,255,140)}{duration:%s}{#reset()}秒\n对BOSS、自爆、变种人无效，大小罐头下劈无效，但是狗扑的一瞬间可以电狗\n如果你实在不知道怎么完美格挡，那么狂按右键也行，不过记住同一时间只能控一个敌人" end}, -- "..duration_var_rgb.." = {duration:%s} == 3s
	
-- {	id = "trait_bespoke_36_2_1_desc_ext_en", -- 反击 Counterattack
--	 loc_keys = {"loc_trait_bespoke_block_has_chance_to_stun_variant_desc",},
--	 locales = {"zh-cn",}, handle_func = function(locale, value)
--	 return "在敌人攻击前的一瞬间完美格挡（0.3秒内），近战武器攻击动画加快{#color(255,255,140)}6~12%{#reset()}（按祝福等级），持续{#color(255,255,140)}5秒{#reset()}（持续期间无法刷新）" end}, -- "..duration_var_rgb.." = {duration:%s} == 3s
 {	id = "trait_bespoke_36_3_desc_ext_en", -- 迅猛之力 Overwhelming Force
	 loc_keys = {"loc_trait_bespoke_staggering_hits_has_chance_to_stun_desc",},
	 locales = {"zh-cn",}, handle_func = function(locale, value)
	 return "当玩家的攻击命中敌人时，如果命中的区域与你的武器有超过60%的伤害倍率（破甲），并且可以导致敌人踉跄时，有{#color(255,255,140)}{chance:%s}{#reset()}的几率，使攻击命中的第一个敌人遭到电击效果，原地打摆子{#color(255,255,140)}3{#reset()}秒，冷却时间{#color(255,255,140)}{cooldown:%s}{#reset()}秒\n因为无法踉跄对方所以对BOSS、自爆、变种人无效，配合摇摇欲坠祝福也不行；即使同时攻击到多个敌人也只能让一个敌人被电击\n{#color(230,60,0)}BUG：当你用远程高倍率的慢速武器比如球杖对敌人射球后立刻切换成电棍，那么远程直击有25%的几率使敌人进入触电打摆子状态3秒（虽然没什么用）{#reset()}" end}, -- "..cd_var_rgb.." = {cooldown:%s} == 3.5s
	 
 {	id = "trait_bespoke_36_4_desc_ext_en", -- 高压电High Voltage
	 loc_keys = {"loc_trait_bespoke_damage_bonus_vs_electrocuded_desc",},
	 locales = {"zh-cn",}, handle_func = function(locale, value)
	 return "当玩家手持此武器时，对处于触电状态的敌人攻击，对其造成的所有伤害都会增加{#color(255,255,140)}{damage:%s}{#reset()}（包括爆炸dot）" end},

-- ____________________________________________________Ranged

-- ____________________________________________________Force Staff - Surge
-- {	id = "trait_bespoke_37_ext_en", -- Warp Flurry 亚空间骚动
	-- loc_keys = {"loc_trait_bespoke_faster_charge_on_chained_secondary_attack",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Warp Flurry" end},
{	id = "trait_bespoke_37_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_faster_charge_on_chained_secondary_attacks_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每当玩家进行一次右键蓄力攻击，都会加快一层右键动画的播放速度，蓄力时间{#color(255,255,140)}{charge_time:%s}{#reset()}，持续{#color(255,255,140)}5{#reset()}秒，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层，同时因为加快速度而降低蓄力阶段的热量消耗\n正常球杖蓄力：1.48秒+12.29%热量\n三层球杖蓄力：1.17秒+8.7%热量" end},
-- {	id = "trait_bespoke_38_ext_en", -- Terrifying Barrage
	-- loc_keys = {"loc_trait_bespoke_suppression_on_close_kill",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Terrifying Barrage" end},
{	id = "trait_bespoke_38_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_suppression_on_close_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用武器的直击伤害击杀一个敌人时，以这个敌人为中心，对{#color(255,255,140)}{range:%s}{#reset()}米半径内的敌人，造成一次{#color(255,255,140)}15~30点{#reset()}远程压制效果（按祝福等级）\n远程压制仅对小僵尸潮、枪兵、炮手生效\n注意火杖喷火器这类武器的直击击杀才算，dot不算\n{#color(230,60,0)}BUG：实际上祝福等级改变的是压制力，范围从1.2补丁后就一直是12米{#reset()}" end}, -- {range:%s}:5
-- {	id = "trait_bespoke_39_ext_en", -- Warp Nexus
	-- loc_keys = {"loc_trait_bespoke_increased_crit_chance_scaled_on_peril",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Warp Nexus" end},
{	id = "trait_bespoke_39_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_increased_crit_chance_scaled_on_peril_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据热量增加暴击率，热量20%时暴击率增加{#color(255,255,140)}{crit_chance:%s}{#reset()}，热量80%时增加至最大值{#color(255,255,140)}{crit_chance_max:%s}{#reset()}（暴击率为加法叠加）" end},
-- {	id = "trait_bespoke_40_ext_en", -- Focused Channelling
	-- loc_keys = {"loc_trait_bespoke_uninterruptable_while_charging",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Focused Channelling" end},
  {	id = "trait_bespoke_40_desc_ext_en",
	  loc_keys = {"loc_trait_bespoke_uninterruptable_while_charging_and_movement_desc",},
	  locales = {"zh-cn",},
	  handle_func = function(locale, value)
 	return "法杖右键蓄力期间，如果受到近战攻击不会被打断蓄力进度（抓取、击飞仍然会打断）；并且蓄力期间移动速度惩罚会降低{#color(255,255,140)}{reduction:%s}{#reset()}" end},
-- {	id = "trait_bespoke_41_ext_en", -- Run 'n' Gun 跑步射击
	-- loc_keys = {"loc_trait_bespoke_allow_hipfire_while_sprinting",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Run 'n' Gun" end},
  {	id = "trait_bespoke_41_desc_ext_en",
  loc_keys = {"loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats_desc",},
  locales = {"zh-cn",},
  handle_func = function(locale, value)
  return "玩家可以一边跑步一边使用这个武器的左键模式射击敌人，武器的扩散降低{#color(255,255,140)}{weapon_spread:%s}{#reset()}（喷子降低{#color(255,255,140)}10%{#reset()}），在跑步期间持有当前远程武器，所有伤害增加{#color(255,255,140)}{damage_near:%s}{#reset()}（直击、dot、爆炸都加成，按右键会停止跑步），0~12.5米全额，12.5米外加成逐渐降低，30米外失去所有加成" end},

-- ____________________________________________________Force Staff - Trauma
-- {	id = "trait_bespoke_42_ext_en", -- Rending Shockwave 撕裂冲击波
	-- loc_keys = {"loc_trait_bespoke_rend_armor_on_aoe_charge",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Rending Shockwave" end},
{	id = "trait_bespoke_42_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_rend_armor_on_aoe_charge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用法杖的右键模式可对被命中的目标造成脆弱异常状态（全队生效，但是地板杖本身不需要），基于蓄力时间最多堆叠{#color(255,255,140)}{stacks:%s}{#reset()}层（最低蓄力3层，最大蓄力8层），每层造成{#color(255,255,140)}{rending:%s}{#reset()}的撕裂效果（最多叠加16层到40%，也就是炸两次），持续{#color(255,155,55)}5{#reset()}秒\n地板杖左键倍率：无甲感染防弹狂人100%→110%，不屈60%→100%，硬壳10%→50%\n地板杖右键倍率：无甲不屈狂人100%→110%，感染75%→103.75%，防弹硬壳80→105%\n无甲感染比较特别，它们本身上限就只有100%没额外增伤" end},
-- {	id = "trait_bespoke_43_ext_en", -- Sustained Fire 持续射击
	-- loc_keys = {"loc_trait_bespoke_followup_shots_ranged_damage",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Sustained Fire" end},
{	id = "trait_bespoke_43_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_followup_shots_ranged_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家按住左键连续开火的时候，第1发子弹没有伤害加成，第2、3、4发拥有{#color(255,255,140)}{damage:%s}{#reset()}伤害加成效果，第5发以及之后没有加成，之后需要停止攻击0.5秒，才可以再次触发（法杖是1、2、3发）" end}, -- colors -- "on Third and Fourth shots" -> "on Second, Third and Fourth"
-- {	id = "trait_bespoke_44_ext_en", -- Transfer Peril
	-- loc_keys = {"loc_trait_bespoke_peril_vent_on_weak_spot_hit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Transfer Peril" end},转移危机值
{	id = "trait_bespoke_44_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_peril_vent_on_weakspot_hit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "法杖左键射出去的球命中敌人弱点时，会降低玩家自身{#color(255,255,140)}{warp_charge:%s}{#reset()}的热量\n球杖右键的球每命中一个敌人弱点就会降低一次热量（地板、电只有左键生效）" end}, -- colors
-- {	id = "trait_bespoke_45_ext_en", -- Blazing Spirit 烈焰之魂
	-- loc_keys = {"loc_trait_bespoke_warpfire_burn_on_crit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Blazing Spirit" end},
{	id = "trait_bespoke_45_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_warpfire_burn_on_crit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家使用当前武器的直击或者剑气产生暴击时，被命中的敌人受到{#color(255,255,140)}{stacks:%s}{#reset()}层魂火异常状态。如果敌人身上已有{#color(255,155,55)}6层{#reset()}层时，就无法用此祝福为其继续叠加层数\n有虚空盾的连长不行\n现在灵能大剑的剑气可以点燃30米内的敌人" end}, -- colors Note!
{	id = "trait_bespoke_45_1_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_vent_warp_charge_on_multiple_hits_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家使用当前武器命中至少3个敌人时，降低{#color(255,255,140)}5%{#reset()}热量\n每次只能触发一次该祝福\n{#color(230,60,0)}BUG：灵能大剑的剑气命中敌人也无法降低热量{#reset()}" end}, -- colors Note!
-- {	id = "trait_bespoke_46_ext_en", -- Surge
	-- loc_keys = {"loc_trait_bespoke_double_shot_on_crit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Surge" end},
{	id = "trait_bespoke_46_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_double_shot_on_crit_and_crit_chance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家的远程暴击率增加{#color(255,255,140)}{crit_chance:%s}{#reset()}\n并且当玩家的攻击产生暴击时，会复制一发伤害、踉跄完全等同于当前蓄力程度的球，在短暂延迟后射向玩家瞄准的方向（额外出球对于球杖来说左右键都生效，对于其他法杖来说只有左键生效）" end}, -- colors Note!
{	id = "trait_bespoke_46_1_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_double_shot_on_primary_crit_and_crit_chance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家的远程暴击率增加{#color(255,255,140)}{crit_chance:%s}{#reset()}\n并且当玩家的攻击产生暴击时，会复制一发伤害、踉跄完全等同于当前蓄力程度的球，在短暂延迟后射向玩家瞄准的方向（额外出球对于球杖来说左右键都生效，对于其他法杖来说只有左键生效）" end}, -- colors Note!
-- ____________________________________________________Shredder Autopistol
-- {	id = "trait_bespoke_47_ext_en", -- Raking Fire
	-- loc_keys = {"loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Raking Fire" end},
{	id = "trait_bespoke_47_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家处于敌人后方时，子弹直击的伤害与踉跄增加{#color(255,255,140)}{damage:%s}{#reset()}（判定范围很大，身侧靠后都行，但是不加成dot）" end}, -- colors
-- {	id = "trait_bespoke_48_ext_en", -- Powderburn
	-- loc_keys = {"loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Powderburn" end},
{	id = "trait_bespoke_48_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当敌人被远程压制时，该武器对其造成的子弹直击伤害与踉跄提高{#color(255,255,140)}{damage:%s}{#reset()}；当玩家手持该武器时击杀一个{#color(255,255,140)}12.5{#reset()}米内的敌人，玩家的远程武器压制增加{#color(255,255,140)}{suppression:%s}{#reset()}，武器的后坐力降低{#color(255,255,140)}{recoil_reduction:%s}{#reset()}，持续时间{#color(255,155,55)}1.5{#reset()}秒\n远程压制仅对这些敌人生效：呻吟者、血痂射手、渣滓潜行者、血痂潜行者、渣滓炮手、血痂炮手、收割者（看不懂就理解为小僵尸潮、枪兵、炮手）" end}, -- colors
-- {	id = "trait_bespoke_49_ext_en", -- Cavalcade
	-- loc_keys = {"loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Cavalcade" end},
--{	id = "trait_bespoke_49_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{#color(255,255,140)}{crit_chance:%s}{#reset()} " .. crit_chance_color_rgb .. " for every {#color(255,255,140)}{ammo:%s}{#reset()} of magazine spent during continuos fire. Stacks {#color(255,255,140)}{stacks:%s}{#reset()} times." end}, -- colors
-- {	id = "trait_bespoke_50_ext_en", -- Speedload 速度装弹
	-- loc_keys = {"loc_trait_bespoke_reload_speed_on_slide",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Speedload" end},
	{	id = "trait_bespoke_50_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_reload_speed_on_slide_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用远程武器直击或直击造成的dot伤害，击杀一个距离{#color(255,255,140)}12.5米{#reset()}内的敌人时，远程武器的换弹速度加快{#color(255,255,140)}{reload_speed:%s}{#reset()}，最多持续{#color(255,255,140)}{time:%s}{#reset()}秒，最多叠加{#color(255,255,140)}{stacks:%s}{#reset()}层\n{#color(230,60,0)}BUG：毒针特殊射击地面造成的爆炸范围上毒击杀，无法触发换弹加速，但特殊毒标命中敌人后造成毒素击杀可以触发{#reset()}" end}, -- rewrite colors Note!
-- {	id = "trait_bespoke_51_ext_en", -- 火力压制Pinning Fire
	-- loc_keys = {"loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Pinning Fire" end},
{	id = "trait_bespoke_51_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家的攻击对敌人造成踉跄时，每个敌人增加1层，每层增加{#color(255,255,140)}{power_level:%s}{#reset()}能量（全局加成，最终伤害乘法叠加），堆叠上限{#color(255,255,140)}{stacks:%s}{#reset()}层，持续{#color(255,255,140)}2.5{#reset()}秒\n无法踉跄变种人、纳垢兽以外的boss" end},
-- {	id = "trait_bespoke_52_ext_en", -- Blaze Away 连续射击
	-- loc_keys = {"loc_trait_bespoke_power_bonus_on_continuous_fire",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Blaze Away" end},
	{	id = "trait_bespoke_52_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_power_bonus_on_continuous_fire_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "持续不间断的开火可以叠加伤害加成，每层增加{#color(255,255,140)}{power_level:%s}{#reset()}能量（全局加成，最终伤害乘法叠加），每当射击消耗{#color(255,255,140)}{ammo:%s}{#reset()}弹药就会增加一层，叠加上限为{#color(255,255,140)}{stacks:%s}{#reset()}层（部分近战攻击模式也能叠加，能量可以增加玩家造成包括dot在内的所有伤害，最高贵的加成）" end}, -- colors
-- {	id = "trait_bespoke_53_ext_en", -- Inspiring Barrage
	-- loc_keys = {"loc_trait_bespoke_toughness_on_continuous_fire",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Inspiring Barrage" end},
--{	id = "trait_bespoke_53_desc_ext_en",
	--loc_keys = {"loc_trait_bespoke_toughness_on_continuous_fire_desc",},
	--locales = {"zh-cn",},
	--handle_func = function(locale, value)
	----return "{#color(255,255,140)}{toughness:%s}{#reset()} " .. toughness_color_rgb .. " for every {#color(255,255,140)}{ammo:%s}{#reset()} of magazine spent during continuous fire. Stacks {#color(255,255,140)}{stacks:%s}{#reset()} times." end}, -- colors
-- ____________________________________________________Headhunter Autogun
-- {	id = "trait_bespoke_54_ext_en", -- Opening Salvo
	-- loc_keys = {"loc_trait_bespoke_power_bonus_on_first_shot",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Opening Salvo" end},
{	id = "trait_bespoke_54_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_power_bonus_on_first_shot_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每隔{#color(255,155,55)}0.5秒{#reset()}（不同武器准星回正时间不同），下一发子弹增加{#color(255,255,140)}{power_level:%s}{#reset()}直击伤害与踉跄" end}, -- colors
-- {	id = "trait_bespoke_55_ext_en", -- Ghost
	-- loc_keys = {"loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Ghost" end},
--{	id = "trait_bespoke_55_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "Immune to Ranged Attacks for {#color(255,255,140)}{time:%s}{#reset()} seconds on " .. weakspot2_color_rgb .. " Hit." end}, -- colors
-- {	id = "trait_bespoke_56_ext_en", -- Falter 摇摇欲坠
	-- loc_keys = {"loc_trait_bespoke_negate_stagger_reduction_on_weakspot",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Falter" end},
{	id = "trait_bespoke_56_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_negate_stagger_reduction_on_weakspot_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用当前武器命中敌人弱点时，该敌人踉跄抗性降低{#color(255,255,140)}{stagger:%s}{#reset()}\n作用方式：狂战抗性25，你一棍子只能打8点踉跄打不动，有这个祝福的时候给他脑门儿一棍抗性25X0.1=2.5，然后你下一棍子就能抽陀螺了\n\n武器说明的远程踉跄增幅部分（30%），只对远程武器附魔该祝福时生效" end}, -- colors
-- {	id = "trait_bespoke_57_ext_en", -- Surgical
	-- loc_keys = {"loc_trait_bespoke_crit_chance_based_on_aim_time",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Surgical" end}, 外科手术
--{	id = "trait_bespoke_57_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_crit_chance_based_on_aim_time_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "Up to {#color(255,255,140)}{stacks:%s}{#reset()} Stacks of {#color(255,255,140)}{crit_chance:%s}{#reset()} " .. crit_chance_color_rgb .. " for every {#color(255,255,140)}{time:%s}{#reset()} seconds while aiming. Discharges all Stacks upon firing." end}, -- colors second->seconds
-- {	id = "trait_bespoke_58_ext_en", -- 不容喘息No Respite
	-- loc_keys = {"loc_trait_bespoke_stagger_count_bonus_damage",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "No Respite" end},
{	id = "trait_bespoke_58_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_stagger_count_bonus_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家对敌人造成踉跄时，会给予每层{#color(255,255,140)}{damage:%s}{#reset()}能量（全局加成，内部加法叠加），在踉跄结束之前再次触发踉跄就可以堆叠技能效果，叠加上限{#color(255,255,140)}7层{#reset()}，也就是140%\n\n{#color(230,60,0)}BUG：1.12.0补丁修复了不生效的问题，但不是所有武器都有足够的踉跄能触发该技能，比如激光、电弧类就难以触发{#reset()}" end}, -- colors
{	id = "trait_bespoke_58_1_desc_ext_en", --炙热射击 Hot-Shot
	loc_keys = {"loc_trait_bespoke_cleave_on_weakspot_hits_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value) 
	return "该武器的投射物直击命中敌人弱点时，敌人的质量降低{#color(255,255,140)}{hit_mass_reduction:%s}{#reset()}\n简单说就是增加武器穿怪数量，毒针爆头多打1个，卢修斯蓄力爆头多打1个" end},
{	id = "trait_bespoke_58_2_desc_ext_en", --装甲之祸 Armourbane
	loc_keys = {"loc_trait_bespoke_rend_armor_on_charged_shots_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "卢修斯的投射物不蓄力直击命中敌人时，目标获得{#color(255,255,140)}{min_stack_count:%s}~{max_stack_count:%s}{#reset()}层脆弱效果（按祝福等级，全队生效），每层{#color(255,255,140)}2.5%{#reset()}，上限{#color(255,255,140)}16{#reset()}层。\n根据蓄力程度会额外增加0~10%的脆弱效果，最高单次施加30%脆弱（上限依然是40%）\n卢修斯叠的伤害倍率：无甲感染100%→110%，防弹不屈66%→101.5%，硬壳5%→45%，狂人160%→170%，无甲感染100%就是上限" end},
-- {	id = "trait_bespoke_59_ext_en", -- Between the Eyes
	-- loc_keys = {"loc_trait_bespoke_suppression_negation_on_weakspot",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Between the Eyes" end},
--{	id = "trait_bespoke_59_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_suppression_negation_on_weakspot_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "Gain Suppression Immunity for {#color(255,255,140)}{time:%s}{#reset()} seconds on " .. weakspot2_color_rgb .. " Hit." end}, -- colors s->seconds
-- {	id = "trait_bespoke_60_ext_en", -- Deadly Accurate
	-- loc_keys = {"loc_trait_bespoke_crit_weakspot_finesse",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Deadly Accurate" end},
--{	id = "trait_bespoke_60_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_crit_weakspot_finesse_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{#color(255,255,140)}{crit_weakspot_damage:%s}{#reset()} " .. crit_color_rgb .. " " .. weakspot4_color_rgb .. "." end}, -- colors
-- {	id = "trait_bespoke_61_ext_en", -- Headhunter
	-- loc_keys = {"loc_trait_bespoke_weakspot_sta�king_crit_chance",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Headhunter" end},
{	id = "trait_bespoke_61_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_weakspot_stacking_crit_chance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每当玩家命中敌人弱点时，如果此次攻击没有产生暴击，那么就会为玩家叠加1层{#color(255,255,140)}{crit_chance:%s}{#reset()}远程暴击率加成，如果产生暴击就会清空所有叠加层数，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层（切换近战武器、闪击技能时buff失效；但你可以丢飞刀后在飞刀飞行中立刻切换远程武器，飞刀命中敌人弱点时会叠加层数）" end}, -- colors
-- {	id = "trait_bespoke_61_ext_en", -- Crucian Roulette 轮盘赌
	-- loc_keys = {"loc_trait_bespoke_crit_chance_based_on_ammo_left",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Crucian Roulette" end},
{	id = "trait_bespoke_62_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_crit_chance_based_on_ammo_left_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "远程武器的弹夹中每少一发子弹，暴击率增加{#color(255,255,140)}{crit_chance:%s}{#reset()}，换弹后失效\n切换近战武器、闪击技能时buff失效" end}, -- colors

-- ____________________________________________________Infantry Autogun
-- {	id = "trait_bespoke_63_ext_en", -- Punishing Salvo 惩戒齐射
	-- loc_keys = {"loc_trait_bespoke_followup_shots_ranged_weakspot_damage",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Punishing Salvo" end},
{	id = "trait_bespoke_63_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_followup_shots_ranged_weakspot_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家命中敌人弱点的时候，第1发子弹没有伤害加成，第2、3、4发拥有{#color(255,255,140)}{damage:%s}{#reset()}伤害加成效果，第5发以及之后没有加成，之后需要停止攻击0.5秒，才可以再次触发\n实际增伤大概15%左右" end}, -- colors -- "on Third and Fourth shots" to "on Second, Third and Fourth"
-- {	id = "trait_bespoke_64_ext_en", -- Fire Frenzy 疯狂射击
	-- loc_keys = {"loc_trait_bespoke_increase_close_damage_on_close_kill",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Fire Frenzy" end},
{	id = "trait_bespoke_64_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_increase_close_damage_on_close_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用当前远程武器的投射物直击伤害对{#color(255,155,55)}12.5米{#reset()}内的敌人造成击杀时，每次击杀增加{#color(255,255,140)}{close_damage:%s}{#reset()}能量（全局加成，最终伤害乘法叠加），从{#color(255,155,55)}12.5米{#reset()}处开始衰减，{#color(255,155,55)}30米{#reset()}外失去所有加成。持续{#color(255,255,140)}{time:%s}{#reset()}秒，叠加上限为{#color(255,255,140)}{stacks:%s}{#reset()}层（叠满50%能量）" end}, -- colors Note!
-- {	id = "trait_bespoke_65_ext_en", -- Deathspitter 死亡喷吐
	-- loc_keys = {"loc_trait_bespoke_increase_power_on_close_kill",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Deathspitter" end},
{	id = "trait_bespoke_65_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_increase_power_on_close_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用当前远程武器的投射物直击伤害对{#color(255,155,55)}12.5米{#reset()}内的敌人造成击杀时，每次击杀增加{#color(255,255,140)}{power_level:%s}{#reset()}能量（全局加成，最终伤害乘法叠加），持续时间为{#color(255,255,140)}{time:%s}{#reset()}秒，最多堆叠{#color(255,155,55)}5{#reset()}层（叠满32.5%能量）" end}, -- colors Note!
--{	id = "trait_bespoke_66_ext_en", -- Hit & Run
--	loc_keys = {"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "Hit and Run" end}, -- &->and
 {	id = "trait_bespoke_66_desc_ext_en",
 	loc_keys = {"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill_desc",},
 	locales = {"zh-cn",},
 	handle_func = function(locale, value)
 	return "玩家使用当前武器的直击伤害击杀一个{#color(255,155,55)}12.5米{#reset()}内的敌人时，免疫远程攻击持续{#color(255,255,140)}{time:%s}{#reset()}秒（重复击杀会重置持续时间）" end}, -- colors s->second
-- {	id = "trait_bespoke_67_ext_en", -- Dumdum 达姆弹
	-- loc_keys = {"loc_trait_bespoke_consecutive_hits_increases_close_damage",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Dumdum" end},
{	id = "trait_bespoke_67_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_consecutive_hits_increases_close_damage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "直击命中敌人可叠加一层buff，增加{#color(255,255,140)}{damage:%s}{#reset()}能量（全局加成，最终伤害乘法叠加），持续时间{#color(255,155,55)}2{#reset()}秒，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层。伤害加成从12.5米开始衰减，30米外没有加成效果" end},
-- {	id = "trait_bespoke_68_ext_ru", -- Stripped Down
	-- loc_keys = {"loc_trait_bespoke_increased_sprint_speed",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Stripped Down" end},
--{	id = "trait_bespoke_68_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_increased_sprint_speed_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "Gain Ranged Attack Immunity while sprinting with over {#color(255,255,140)}{stamina:%s}{#reset()} " .. stamina_color_rgb .. ". {#color(255,155,55)}Doesn't save you from Flamers and Trappers.{#reset()}" end}, -- colors

-- ____________________________________________________Infantry Lasgun
-- {	id = "trait_bespoke_69_ext_en", -- Efficiency
	-- loc_keys = {"loc_trait_bespoke_first_shot_ammo_cost_reduction",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Efficiency" end},
{	id = "trait_bespoke_69_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_first_shot_ammo_cost_reduction_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每隔{#color(255,255,140)}{time:%s}{#reset()}秒获得一个减少弹药消耗的buff，效果是让下一发子弹的弹药消耗量降低为正常的{#color(255,255,140)}{ammo:%s}{#reset()}（比如激光枪正常开一枪消耗3发子弹，祝福生效的时候只消耗1发子弹）" end}, -- rewrite colors s->seconds -- {ammo:%s} Reduced Ammo use after not shooting for {time:%s} seconds.
-- {	id = "trait_bespoke_70_ext_en", -- 地狱火Infernus
	-- loc_keys = {"loc_trait_bespoke_burninating_on_crit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Infernus" end},
{	id = "trait_bespoke_70_desc_ext_en",  
	loc_keys = {"loc_trait_bespoke_burninating_on_crit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当远程武器的直击伤害产生暴击且命中敌人时，为敌人添加{#color(255,255,140)}{stacks:%s}{#reset()}层燃烧效果叠加上限为{#color(255,255,140)}{max_stacks:%s}{#reset()}层\n当敌人身上有虚空盾时，无法为其继续施加燃烧debuff\n燃烧持续4秒，每0.5秒一跳，倍率：无甲不屈150%，防弹狂人虚空100%，硬壳10%，感染125%" end}, -- colors ()
{	id = "loc_trait_bespoke_crit_chance_on_sucessful_dodge_en", --Desperado 亡命之徒
	loc_keys = {"loc_trait_bespoke_crit_chance_on_successful_dodge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家成功闪避敌人的近战或远程攻击时（除了炮手狙击），远程暴击几率增加{#color(255,255,140)}{crit_chance:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}{#reset()}秒\n重复触发不叠加但可以重置持续时间" end}, -- colors ()

-- ____________________________________________________Quickdraw Stub Revolver
-- {	id = "trait_bespoke_71_ext_en", -- Point Blank
	-- loc_keys = {"loc_trait_bespoke_crit_chance_bonus_on_melee_kills",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Point Blank" end},
{	id = "trait_bespoke_71_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_crit_chance_bonus_on_melee_kills_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用近战武器击杀一个敌人时，增加{#color(255,255,140)}{crit_chance:%s}{#reset()}远程暴击率，持续{#color(255,255,140)}{time:%s}{#reset()}秒" end}, -- colors
-- {	id = "trait_bespoke_72_ext_en", -- Hand-Cannon
	-- loc_keys = {"loc_trait_bespoke_rending_on_crit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Hand-Cannon" end},
{	id = "trait_bespoke_72_desc_ext_en", --手持火炮
	loc_keys = {"loc_trait_bespoke_rending_on_crit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家手持此武器产生暴击时，此次攻击造成的撕裂效果{#color(255,255,140)}{rend:%s}{#reset()}（左轮手枪基础40%撕裂+60%就是100%撕裂，如果敌人已被40%脆弱，那么叠加超过100%的部分算作四分之一\n无甲感染比较特别，它们本身上限就只有100%没额外增伤\n{#color(230,60,0)}BUG：灵能大剑剑气飞出后切换左轮，剑气能吃到暴击撕裂加成{#reset()}" end}, -- colors
-- {	id = "trait_bespoke_73_ext_en", -- Trickshooter
	-- loc_keys = {"loc_trait_bespoke_power_bonus_on_chained_weakspot_hits",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Trickshooter" end},
{	id = "trait_bespoke_73_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_power_bonus_on_chained_weakspot_hits_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "连续命中敌人弱点时，每次叠加1层buff，远程伤害与踉跄{#color(255,255,140)}{power_level:%s}{#reset()}，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层，持续{#color(255,255,140)}3.5{#reset()}秒" end}, -- colors
-- {	id = "trait_bespoke_74_ext_en", -- Gloryhunter
	-- loc_keys = {"loc_trait_bespoke_toughness_on_elite_kills",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Gloryhunter" end},
{	id = "trait_bespoke_74_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_toughness_on_elite_kills_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家使用此武器击杀一个精英敌人时，为自身恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n精英：血痂渣滓霰弹、炮手、等离子、狂暴、重锤，盾卫、收割、粉碎\n{#color(230,60,0)}BUG：流血、化学毒素击杀不触发{#reset()}" end}, -- colors


-- ==================================================ZEALOT
--____________________________________________________Godwyn-Branx Pattern Bolt Pistol
{	id = "trait_bespoke_74_1_desc_ext_en", -- Puncture
	loc_keys = {"loc_trait_bespoke_bleed_on_ranged_desc",},
	locales = {"zh-cn",}, handle_func = function(locale, value)
	return "远程武器的投射物直击命中敌人后，敌人受到{#color(255,255,140)}{stacks:%s}{#reset()}层流血异常状态（按祝福等级）\n当敌人身上有虚空盾时，无法为其继续施加流血debuff\n当你使用飞刀、电手、剑气时，迅速切换到爆弹手枪，那么敌人也会进入流血状态，可以轻易为大片敌人叠流血" end},
	
{	id = "trait_bespoke_74_2_desc_ext_en", -- Execution处刑 处决
	loc_keys = {"loc_trait_bespoke_damage_vs_stagger_desc",},
	locales = {"zh-cn",}, handle_func = function(locale, value)
	return "你手持当前武器面对踉跄状态的敌人时，对其造成的所有伤害{#color(255,255,140)}{vs_stagger:%s}{#reset()}（包括直击、爆炸、dot）" end},
	
{	id = "trait_bespoke_74_3_desc_ext_en", -- 致命距离 Lethal Proximity
	loc_keys = {"loc_trait_bespoke_close_explosion_desc",},
	locales = {"zh-cn",}, handle_func = function(locale, value)
	return "子弹飞行投射物直击命中敌人时，会产生一个半径{#color(255,255,140)}3.3~3.75米{#reset()}的爆炸（按祝福等级）。并且爆炸范围提升{#color(255,255,140)}{radius:%s}{#reset()}\n爆弹枪2、手枪4（老）命中5米外且不造成击杀（打到无法穿透表面）时才会造成无伤害的踉跄爆炸\n爆弹枪3、手枪6（新）没有引爆距离限制而且不管是否造成击杀都会造成伤害+踉跄的爆炸\n{#color(230,60,0)}BUG：1.9补丁后，无论玩家是否手持该武器，都能增加狂信晕雷、灵能自爆、手雷爆炸、手雷出血等伤害范围，不包括烟雾、电雷、剑气等效果，不包括玩家电手、开祷、战吼等技能{#reset()}" end},

--____________________________________________________Ironhelm "Hacker" Mk IV Assault Shotgun

{	id = "trait_bespoke_74_4_desc_ext_en", -- Both Barrels
	loc_keys = {"loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill_desc",},
	locales = {"zh-cn",}, handle_func = function(locale, value)
	return "当你的枪膛中有2发子弹时，使用右键瞄准模式击杀至少一个敌人后，换弹速度加快{reload_speed:%s}，可以与天赋技能乘法叠加" end},

-- ____________________________________________________Thunder Hammer
--{	id = "trait_bespoke_74_ext_en", -- Shock & Awe
--	loc_keys = {"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "Shock and Awe" end}, -- &->and
{	id = "trait_bespoke_75_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "造成击杀后，当前武器在攻击敌人时，判定敌人质量时降低{#color(255,255,140)}{hit_mass:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}{#reset()}秒（敌人的质量关系到武器对其造成的踉跄幅度，武器能否击中敌人后穿透攻击到下一个敌人）" end}, -- colors s->seconds
-- {	id = "trait_bespoke_76_ext_en", -- Momentum 动量
	-- loc_keys = {"loc_trait_bespoke_toughness_recovery_on_multiple_hits",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Momentum" end},
{	id = "trait_bespoke_76_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_toughness_recovery_on_multiple_hits_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用当前武器至少命中{multiple_hit:%s}个敌人时，玩家自身恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n{#color(230,60,0)}BUG： 因为忘写限制条件，所以会受到毒气弹降低30%、毒气因子+50%等影响\n{#color(230,60,0)}BUG：灵能大剑的剑气无法触发祝福恢复韧性{#reset()}" end}, -- colors
{	id = "trait_bespoke_76_1_desc_ext_en", -- Momentum 动量
	loc_keys = {"loc_trait_bespoke_regain_toughness_on_multiple_hits_by_weapon_special_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用当前武器开启特殊模式后，在至少命中{#color(255,255,140)}3{#reset()}个敌人时，玩家自身恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}\n{#color(230,60,0)}BUG：因为忘写限制条件，所以会受到毒气弹降低30%、毒气因子+50%等影响{#reset()}" end}, -- colors


-- ____________________________________________________Turtolsky Heavy Sword
-- {	id = "trait_bespoke_77_ext_en", -- Perfect Strike
	-- loc_keys = {"loc_trait_bespoke_pass_past_armor_on_crit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Perfect Strike" end},
--{	id = "trait_bespoke_77_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_pass_past_armor_on_crit_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return crit_hits_color_rgb .. " ignore " .. hit_mass_color_rgb .. " Bonus from Armour." end}, -- colors
-- {	id = "trait_bespoke_78_ext_en", -- Deathblow
	-- loc_keys = {"loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Deathblow" end},
{	id = "trait_bespoke_78_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "玩家使用此武器造成的弱点伤害增加{#color(255,255,140)}{weakspot_damage:%s}{#reset()}（乘法叠加），当玩家的某次弱点攻击可以击杀敌人时，此次攻击可以对最多{#color(255,255,140)}4{#reset()}个敌人视为第一击（伤害不衰减、大幅度增加穿透敌人的数量，但是对硬壳、欧格林、boss不生效），从第五个开始正常计算穿透伤害衰减。" end}, -- colors
{	id = "trait_bespoke_78_1_desc_ext_en", --Perfect Strike 完美打击
	loc_keys = {"loc_trait_bespoke_pass_past_armor_on_crit_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "近战暴击伤害倍率增加{#color(255,255,140)}{crit_damage:%s}{#reset()}\n玩家使用此武器造成暴击后，此次攻击在计算敌人的打击质量时降低{#color(255,255,140)}75%{#reset()}（可以理解为一刀命中更多敌人，但不等于无限穿透），并且可以无视硬壳敌人“不可穿透”的属性（其他增加劈裂的祝福命中硬壳会停下，完美打击命中硬壳可以再打2个敌人）\n链锯开锯对精英特感必定卡刀，祝福不管用\n双劈裂祝福也不会增加命中上限" end}, 

-- ____________________________________________________Lawbringer Combat Shotgun
-- {	id = "trait_bespoke_79_ext_en", -- Flechette
	-- loc_keys = {"loc_trait_bespoke_bleed_on_crit_ranged",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Flechette" end}, 箭弹
{	id = "trait_bespoke_79_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_bleed_on_crit_ranged_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当远程武器的投射物产生暴击并且命中敌人时，给予敌人{#color(255,255,140)}{stacks:%s}{#reset()}流血异常状态，叠加上限{#color(255,155,55)}16层{#reset()}\n有虚空盾的连长不行，也不能隔着盾牌流血" end}, -- colors
-- {	id = "trait_bespoke_80_ext_en", -- Scattershot
	-- loc_keys = {"loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Scattershot" end},
--{	id = "trait_bespoke_80_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{#color(255,255,140)}{crit_chance:%s}{#reset()} " .. crit_chance_color_rgb .. " for each Enemy Hit by your previous attack. Stacks {#color(255,255,140)}{stacks:%s}{#reset()} times." end}, -- colors
-- {	id = "trait_bespoke_81_ext_en", -- 强力炮弹Man-Stopper
	-- loc_keys = {"loc_trait_bespoke_cleave_on_crit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Man-Stopper" end},
{	id = "trait_bespoke_81_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_cleave_on_crit_and_stagger_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当远程武器产生暴击时，该次远程投射物的穿透力大幅度增加，并且会造成额外{stagger:%s}的踉跄效果，很适合配合散射祝福\n比如喷子正常情况下穿透2个狂人甲、2个防弹甲，这个祝福暴击时穿透20个狂人甲、20个防弹甲，但是硬壳、BOSS、盾牌都穿不透\n喷子在20米内最大伤害，40米外最低。双管最远射程75米，战斗则是100米，有这个祝福时龙息弹能点燃范围内所有敌人" end}, -- colors
-- {	id = "trait_bespoke_82_ext_en", -- Full Bore
	-- loc_keys = {"loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Full Bore" end},
{	id = "trait_bespoke_82_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当远程武器的所有弹丸全部命中同一个敌人时，增加{#color(255,255,140)}{power_level:%s}{#reset()}能量（全局加成，最终伤害乘法叠加），持续{#color(255,255,140)}{time:%s}{#reset()}秒" end}, -- colors s->seconds

-- ____________________________________________________Purgation Flamer
-- {	id = "trait_bespoke_83_ext_en", -- Fan the Flames
	-- loc_keys = {"loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Fan the Flames" end},
{	id = "trait_bespoke_83_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "左键攻击降低敌人{#color(255,255,140)}{stagger_reduction:%s}{#reset()}的踉跄抗性，并对其造成{#color(255,255,140)}{impact_modifier:%s}{#reset()}的额外踉跄效果\n{#color(230,60,0)}BUG：祝福无意义，左键本身代码就决定了其无视踉跄抗性，但增加踉跄的数值太低又不足以踉跄罐头{#reset()}" end}, -- colors
-- {	id = "trait_bespoke_84_ext_en", -- Showstopper 精彩爆炸
	-- loc_keys = {"loc_trait_bespoke_chance_to_explode_elites_on_kill",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Showstopper" end},
{	id = "trait_bespoke_84_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_chance_to_explode_elites_on_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用当前远程武器的直击或dot伤害，击杀一个精英、专家敌人时，有{#color(255,255,140)}{proc_chance:%s}{#reset()}的几率，在敌人死亡的位置产生一个半径{#color(255,255,140)}3{#reset()}米（火杖、磷光{#color(255,255,140)}4{#reset()}米）的爆炸效果（2米外衰减到没伤害），爆炸造成20踉跄与400点伤害（火杖、磷光240）" end}, -- colors %%->%
-- {	id = "trait_bespoke_84_1_ext_en", -- Showstopper
	-- loc_keys = {"loc_trait_bespoke_armor_rending_from_dot_burning_desc",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Showstopper" end},
{	id = "trait_bespoke_84_1_desc_ext_en", -- 穿透火焰 Penetrating Flame
	loc_keys = {"loc_trait_bespoke_armor_rending_from_dot_burning_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当火杖、喷火器的左键或者右键直接命中敌人时，此次攻击造成{#color(255,255,140)}{num_stacks:%s}{#reset()}层的脆弱效果，每层{#color(255,255,140)}1%{#reset()}（全队生效），最多叠加{#color(255,255,140)}20{#reset()}层，持续{#color(255,255,140)}{duration:%s}{#reset()}秒（这个祝福的脆弱可以和其他脆弱叠加）\n火杖左键倍率：无甲不屈100%→105%，感染75%→95%，防弹85%→101%，硬壳35%→55%，狂人125%→130%\n魂火倍率：无甲防弹不屈150%→155%，狂人虚空100%→105%，硬壳25%→45%，感染125%→130%\n喷火器左键倍率：无甲不屈100%→105%，感染狂人150%→155%，防弹170%→175%，硬壳25%→45%\n燃烧倍率：无甲不屈150%→155%，防弹狂人虚空100%→105%，硬壳10%→30%，感染125%→130%" end}, -- colors %%->%
{	id = "trait_bespoke_84_2_desc_ext_en", --永恒之火 Everlasting Flame
	loc_keys = {"loc_trait_bespoke_ammo_spent_from_reserve_on_crit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每当玩家产生暴击时（不管有没有命中敌人），都会从备弹中转移持续{#color(255,255,140)}2~5发{#reset()}子弹（按祝福等级），到武器的弹夹中" end},
-- {	id = "trait_bespoke_85_ext_en", -- Quickflame
	-- loc_keys = {"loc_trait_bespoke_faster_reload_on_empty_clip",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Quickflame" end},快速火焰
{	id = "trait_bespoke_85_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_faster_reload_on_empty_clip_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "武器弹夹为0时，换弹速度加快{#color(255,255,140)}{reload_speed:%s}{#reset()}（4级从基础3.55秒降低至2.55秒，如果再带10%换弹专长变成2.44秒）" end}, -- colors
-- {	id = "trait_bespoke_86_ext_en", -- 超压Overpressure
	-- loc_keys = {"loc_trait_bespoke_power_scales_with_clip_percentage",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Overpressure" end},
{	id = "trait_bespoke_86_desc_ext_en", 
	loc_keys = {"loc_trait_bespoke_power_scales_with_clip_percentage_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "从弹夹50%开始提供{#color(255,255,140)}{power_level:%s}{#reset()}能量（全局加成，最终伤害乘法叠加），最多堆叠{#color(255,255,140)}{stacks:%s}{#reset()}层，对火焰dot持续伤害也有效果" end}, -- colors

-- ____________________________________________________Spearhead Boldgun
-- {	id = "trait_bespoke_87_ext_en", -- Shattering Impact 破碎冲击
	-- loc_keys = {"loc_trait_bespoke_armor_rend_on_projectile_hit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Shattering Impact" end},
{	id = "trait_bespoke_87_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_armor_rend_on_projectile_hit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "远程投射物直击、爆炸命中敌人时，为敌人堆叠{#color(255,255,140)}{stacks:%s}{#reset()}层脆弱（上限16，全队生效），每层{#color(255,255,140)}{rending:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}{#reset()}秒\n榴弹臂铠可以一次堆叠20%；等离子Mk3只有直击能叠，爆炸不叠\n倍率超过100%的部分算作25%全增伤，比如160%就等于（160%-100%）÷4=15%" end}, -- colors s->seconds


-- ==================================================VETERAN

-- ____________________________________________________Melee

-- ____________________________________________________Power Sword
-- {	id = "trait_bespoke_88_ext_en", -- Supercharge
	-- loc_keys = {"loc_trait_bespoke_armor_rend_on_activated_attacks",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Supercharge" end},
{	id = "trait_bespoke_88_desc_ext_en", --超负荷
	loc_keys = {"loc_trait_bespoke_armor_rend_on_activated_attacks_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家给武器充能后，被充能攻击命中的敌人会受到{#color(255,255,140)}{rend:%s}{#reset()}层撕裂的破甲效果（上限{#color(255,255,140)}16层{#reset()}），每层{#color(255,255,140)}2.5%{#reset()}，持续{#color(255,255,140)}2.5秒{#reset()}" end}, -- colors
-- {	id = "trait_bespoke_89_ext_en", -- Power Cycler能量循环
	-- loc_keys = {"loc_trait_bespoke_extended_activation_duration_on_chained_attacks",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Power Cycler" end},
{	id = "trait_bespoke_89_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "动力剑的特殊充能模式除了正常的第一次充能外，还可以获得额外{#color(255,255,140)}{extra_hits:%s}{#reset()}次的充能攻击次数奖励，buff持续{#color(255,255,140)}3秒{#reset()}\n充能攻击的踉跄效果增加{#color(255,255,140)}{stagger:%s}{#reset()}\n攻击命中敌人后格挡会取消祝福效果，所以每次挡反后都需要重新附魔" end}, -- colors
{	id = "trait_bespoke_89_1_desc_ext_en", -- 能量激增 Power Surge
	loc_keys = {"loc_trait_bespoke_explosion_on_activated_attacks_on_armor_new_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "电棍开特殊模式在{#color(255,255,140)}4{#reset()}秒内命中敌人会造成一次爆炸，带此祝福时命中防弹、硬壳敌人则会造成二次爆炸\n爆炸范围扩大{#color(255,255,140)}{explosion_radius:%s}{#reset()}，技能大爆炸也会增强27.5%\n爆炸中心：2.8→3.5→4.27米，造成400伤害，爆炸最远：7.2→9→10.98米，造成125~0伤害衰减\n{#color(230,60,0)}BUG：丢出手雷后切回电棍，手雷范围也加{#reset()}" end},
-- {	id = "trait_bespoke_90_ext_en", -- 切裂Sunder
	-- loc_keys = {"loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Sunder" end},
 {	id = "trait_bespoke_90_desc_ext_en",
 	loc_keys = {"loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks_and_heavy_damage_desc",},
 	locales = {"zh-cn",},
 	handle_func = function(locale, value)
 	return "近战蓄力动作期间，充能的伤害增加{#color(255,255,140)}{heavy_damage:%s}{#reset()}\n特殊充能无视敌人{#color(255,255,140)}75%{#reset()}打击质量，无视硬壳敌人“不可穿透”的词条，单次攻击可以命中更多目标：不屈硬壳1→4，防弹2→5，狂人3→8，无甲5→8\n动力剑的劈裂目标数在38~87之间没区别，当超过88，没切裂的时候打狂人无甲能多砍一个，因此动力剑可以要60劈裂" end}, -- colors

-- ____________________________________________________Ranged

-- ____________________________________________________Plasma Gun
-- {	id = "trait_bespoke_91_ext_en", -- Volatile
	-- loc_keys = {"loc_trait_bespoke_lower_overheat_gives_faster_charge",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Volatile" end},
{	id = "trait_bespoke_91_desc_ext_en", --易挥发
	loc_keys = {"loc_trait_bespoke_lower_overheat_gives_faster_charge_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "热量为0时提供{#color(255,255,140)}{stacks:%s}{#reset()}层效果，每层都会加快{#color(255,255,140)}{charge_speed:%s}{#reset()}充能速度，随着热量上升层数会逐渐降低，热量20、38、56、74分别对应4、3、2、1，92时完全失去加成\n加成数据极低，5层左键蓄力时间0.3→0.25秒，右键1.2→0.98秒" end}, -- colors -- "%Charge" -> "% Charge"
-- {	id = "trait_bespoke_88_ext_en", -- Gets Hot! 升温
	-- loc_keys = {"loc_trait_bespoke_crit_chance_scaled_on_heat",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Gets Hot!" end},
{	id = "trait_bespoke_92_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_crit_chance_scaled_on_heat_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据当前热量增加远程暴击几率和暴击伤害倍率，每层增加{#color(255,255,140)}{crit_chance:%s}{#reset()}，叠加上限{#color(255,255,140)}5层{#reset()}（91%热是50%暴率、50%爆伤）\n热阻69%就可以8连发，而9连的阈值是84\n热量层数阈值：19、37、55、73、91" end}, -- colors -- "(scales on Heat Level)" -> "Scales with increasing Heat level."
{	id = "trait_bespoke_92_1_desc_ext_en",  --Rising Heat 急剧升温
	loc_keys = {"loc_trait_bespoke_power_bonus_scaled_on_heat_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据热量等级增加直击伤害与踉跄，每层增加{#color(255,255,140)}{damage:%s}{#reset()}，最多{#color(255,255,140)}5层{#reset()}，上限12.5~20%（按祝福等级）\n热阻69%可以8连发，9连的阈值是84\n热量层数阈值：19、37、55、73、91" end}, 
{	id = "trait_bespoke_92_2_desc_ext_en", --Power Blast 充能爆破
	loc_keys = {"loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "根据充能层数增加暴击几率，每层增加{#color(255,255,140)}{crit_chance_min:%s}{#reset()}，最多{#color(255,255,140)}5层{#reset()}，上限10~25%（按祝福等级）\n左键直接开火是2层充能10%暴击，右键最多蓄力到5层是{crit_chance_max:%s}暴击" end}, 
{	id = "trait_bespoke_92_3_desc_ext_en", --Focused Cooling 专注冷却
	loc_keys = {"loc_trait_bespoke_reduced_overheat_on_crits_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "如果玩家的此次攻击产生暴击，那么此次攻击产生的热量降低{#color(255,255,140)}{heat_percentage:%s}{#reset()}\n正常右键满蓄力是24%热量，触发特效只产生9.6%" end}, 
{	id = "trait_bespoke_92_4_desc_ext_en", --优化冷却 Optimised Cooling
	loc_keys = {"loc_trait_bespoke_reduced_heat_on_continuous_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "当玩家连续开火时，每次减少{#color(255,255,140)}10%{#reset()}热量生成，最多堆叠{#color(255,255,140)}{stacks:%s}{#reset()}层（乘法叠加，叠满40.951%）\n正常80%热阻的等离子8枪过热，带这个祝福能开12枪" end}, 


-- ____________________________________________________Helbore Lasgun
-- {	id = "trait_bespoke_93_ext_en", -- Onslaught
	-- loc_keys = {"loc_trait_bespoke_faster_charge_on_chained_attacks",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Onslaught" end},
--{	id = "trait_bespoke_93_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_faster_charge_on_chained_attacks_desc",},
--	locales = {"zh-cn",},
----	handle_func = function(locale, value)
--	return "{#color(255,255,140)}{charge_time:%s}{#reset()} Charge Time when aiming. Stacks {#color(255,255,140)}{stacks:%s}{#reset()} times." end}, -- colors -- Chaining Charged Attacks reduces their Charge Time by {#color(255,255,140)}{charge_time:%s}{#reset()}. Stacks {#color(255,255,140)}{stacks:%s}{#reset()} times.


-- ==================================================OGRYN

-- ____________________________________________________Melee

-- ____________________________________________________Slab Shield
-- {	id = "trait_bespoke_94_ext_en", -- Confident Strike
	-- loc_keys = {"loc_trait_bespoke_toughness_recovery_on_chained_attacks",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Confident Strike" end},
{	id = "trait_bespoke_94_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_toughness_recovery_on_chained_attacks_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "以当前武器对敌人连续攻击时，从第二次命中开始，每次命中敌人为自身恢复{#color(255,255,140)}{toughness:%s}{#reset()}{#color(32,178,170)}韧性{#reset()}，即使单次攻击命中多个敌人，每次也只回复一次韧性" end}, -- colors

-- ____________________________________________________Cleaver
-- {	id = "trait_bespoke_94_ext_en", -- Bash
	-- loc_keys = {"loc_trait_bespoke_crit_chance_on_push",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Bash" end},
{	id = "trait_bespoke_95_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_crit_chance_on_push_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "做出近战武器推敌人的动作并命中后（不需要使敌人踉跄），暴击几率增加{#color(255,255,140)}{crit_chance:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}{#reset()}秒" end}, -- colors s->seconds
-- {	id = "trait_bespoke_96_ext_en", -- Tenderiser
	-- loc_keys = {"loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Tenderiser" end},
{	id = "trait_bespoke_96_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用切肉刀武器特殊技（上勾拳）命中敌人后，提升接下来{#color(255,255,140)}3次{#reset()}的近战直击伤害{#color(255,255,140)}{power:%s}{#reset()}\n打空也会消耗层数" end}, -- colors ()
-- {	id = "trait_bespoke_97_ext_en", -- 势不可挡 Unstoppable Force
	-- loc_keys = {"loc_trait_bespoke_pass_past_armor_on_heavy_attack",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Unstoppable Force" end},
{	id = "trait_bespoke_97_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack_desc",},
	locales = {"zh-cn",}, 

	handle_func = function(locale, value)
	return "蓄力攻击无视硬壳“无法穿透”的效果\n当玩家长按鼠标左键直到角色完全蓄力开始自动攻击，提升{#color(255,255,140)}{damage:%s}{#reset()}的近战直击伤害与踉跄\n完全蓄力的攻击可以让武器模型碰到的所有敌人都受到伤害（但是劈裂衰减没变，穿透越多伤害越低）" end}, -- colors

--____________________________________________________Pickaxes
	{	id = "trait_bespoke_97_1_desc_ext_en", -- Torment 折磨
	loc_keys = {"loc_trait_bespoke_increase_power_on_weapon_special_hit_desc",},
	locales = {"zh-cn",}, handle_func = function(locale, value)
	return "当使用武器的特殊攻击模式命中敌人后，近战伤害与踉跄增加{#color(255,255,140)}{power_level:%s}{#reset()}，持续{#color(255,255,140)}{time:%s}秒{#reset()}\n镐子的特殊勾人自带一个{#color(255,255,140)}10%{#reset()}全伤增幅的debuff，持续{#color(255,255,140)}5秒{#reset()}。" end},
	{	id = "trait_bespoke_97_2_desc_ext_en", -- Slow and Steady 步稳行远
	loc_keys = {"loc_trait_bespoke_toughness_on_hit_based_on_charge_time_desc",},
	locales = {"zh-cn",}, handle_func = function(locale, value)
	return "蓄力攻击命中敌人后，根据蓄力时间积累层数来增加韧性，每层增加{#color(255,255,140)}8%{#reset()}，最多堆叠{#color(255,255,140)}3{#reset()}层增加{toughness:%s}的{#color(32,178,170)}韧性{#reset()}。蓄力时间与助推祝福完全相同" end},
-- ____________________________________________________Ranged

-- ____________________________________________________Twin-Linked Heavy Stubber
-- {	id = "trait_bespoke_98_ext_en", -- Charmed Reload
	-- loc_keys = {"loc_trait_bespoke_ammo_refill_from_reserve_on_crit",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Charmed Reload" end},
{	id = "trait_bespoke_98_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_ammo_refill_from_reserve_on_crit_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "每当玩家产生暴击时（不管有没有命中敌人），都会从备弹中转移{#color(255,255,140)}{bullet_amount:%s}{#reset()}发子弹到武器的弹夹中" end}, -- colors
-- {	id = "trait_bespoke_99_ext_en", -- Roaring Advance 咆哮推进
	-- loc_keys = {"loc_trait_bespoke_movement_speed_on_continuous_fire",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Roaring Advance" end},
{	id = "trait_bespoke_99_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_movement_speed_on_continuous_fire_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "按右键架枪开火期间会有基础减速，每当玩家消耗{#color(255,255,140)}{ammo:%s}{#reset()}弹夹中的弹药，就会降低{#color(255,255,140)}{movement_speed:%s}{#reset()}的基础减速效果，最多叠加{#color(255,255,140)}{stacks:%s}{#reset()}层（乘法叠加，叠满5层是34.4%）" end}, -- colors s->seconds
-- {	id = "trait_bespoke_100_ext_en", -- Overwhelming Fire 狂猛火力
	-- loc_keys = {"loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Overwhelming Fire" end},
{	id = "trait_bespoke_100_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "持续攻击单个敌人时，每当命中{#color(255,255,140)}{hit:%s}{#reset()}发弹药，直击伤害与踉跄{#color(255,255,140)}{power:%s}{#reset()}（加法叠加），持续{#color(255,255,140)}{time:%s}{#reset()}秒，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层（不加成dot，只要有1发命中其他敌人会清空所有层数，电弧也算，所以电弧枪完全叠不了层数）" end}, -- colors s->seconds
-- {	id = "trait_bespoke_101_ext_en", -- Ceaseless Barrage 无尽弹幕 
	-- loc_keys = {"loc_trait_bespoke_suppression_on_continuous_fire",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Ceaseless Barrage" end},
{	id = "trait_bespoke_101_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_suppression_on_continuous_fire_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "持续射击期间，每消耗弹夹{#color(255,255,140)}{ammo:%s}{#reset()}的弹药，就会叠加1层压制{#color(255,255,140)}{suppression:%s}{#reset()}的buff，并且对被压制敌人的子弹直击伤害与踉跄{#color(255,255,140)}+4~7%{#reset()}，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层\n远程压制仅对这些敌人生效：呻吟者、血痂射手、渣滓潜行者、血痂潜行者、渣滓炮手、血痂炮手、收割者（看不懂就理解为小僵尸潮、枪兵、炮手）" end}, -- colors

-- ____________________________________________________Ripper Gun
-- {	id = "trait_bespoke_102_ext_en", -- Can opener 开罐器
	-- loc_keys = {"loc_trait_bespoke_armor_rending_bayonette",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Can opener" end},
{	id = "trait_bespoke_102_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_armor_rending_bayonette_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "远程武器的近战攻击模式，会为敌人增加{#color(255,255,140)}{stacks:%s}{#reset()}层脆弱异常状态（上限16层），每层{#color(255,255,140)}{rending:%s}{#reset()}，持续时间为{#color(255,255,140)}{time:%s}{#reset()}秒（到上限的时候武器无论攻击什么敌人都是按照无甲伤害算（按VE查看武器的攻击系数），叠加超过100%的部分算作四分之一全增伤）" end}, -- colors s->seconds
-- {	id = "trait_bespoke_103_ext_en", -- Born in blood
	-- loc_keys = {"loc_trait_bespoke_toughness_on_close_range_kills",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Born in blood" end},
--{	id = "trait_bespoke_103_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_toughness_on_close_range_kills_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{#color(255,255,140)}{toughness:%s}{#reset()} " .. toughness_color_rgb .. " on Kill at a distance of up to {#color(255,155,55)}8{#reset()} meters." end}, -- colors

--____________________________________________________Rumbler
-- {	id = "trait_bespoke_104_ext_en", -- Pierce
	-- loc_keys = {"loc_trait_bespoke_pass_trough_armor_on_weapon_special",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Pierce" end},
{	id = "trait_bespoke_104_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_pass_trough_armor_on_weapon_special_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "远程武器的特殊攻击模式劈裂增加{#color(255,255,140)}10~25%{#reset()}（按祝福等级），可降低敌人{#color(255,255,140)}75%{#reset()}的质量，并且可以穿透硬壳不卡刀" end}, -- colors
 -- {	id = "trait_bespoke_105_ext_en", -- Adhesive Charge
	--  loc_keys = {"loc_trait_bespoke_grenades_stick_to_monsters",},
   --   locales = {"zh-cn",},
	--  handle_func = function(locale, value)
	--  return "Adhesive Charge" end},
  {	id = "trait_bespoke_105_desc_ext_en", --粘性炸药 Adhesive Charge
	  loc_keys = {"loc_trait_bespoke_grenades_stick_to_monsters_and_damage_desc",},
	  locales = {"zh-cn",},
	  handle_func = function(locale, value)
	 return "榴弹投射物可以黏在欧格林和怪物身上爆炸，并且对欧格林和怪物的伤害{#color(255,255,140)}{dmg_vs_ogryn_monster:%s}{#reset()}\n可以粘收割、盾卫、粉碎、瘟欧、猎群、纳垢兽、混沌卵、宿主\n注意是直击才能黏附，不像老兵穿甲雷还带吸引，某些mod修改了连长的怪物标签，离线模式能粘、在线模式不生效的" end},
  {	id = "trait_bespoke_105_1_desc_ext_en", --弹片 Shrapnel
	  loc_keys = {"loc_trait_bespoke_close_explosion_applies_bleed_desc",},
	  locales = {"zh-cn",},
	  handle_func = function(locale, value)
	 return "投射物爆炸时，在爆炸中心半径范围内的敌人会进入{#color(255,255,140)}{stacks:%s}{#reset()}层流血状态\n当敌人身上有虚空盾时，无法为其继续施加流血debuff\n爆炸中心半径在2米~2.8米之间（0~80）\n技能和祝福会影响流血区域：大爆炸X1.275，爆炸区域X1.3，最高叠到4.41米流血半径" end},
  {	id = "trait_bespoke_105_2_desc_ext_en", --爆炸区域 Blast Zone
	  loc_keys = {"loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire_desc",},
	  locales = {"zh-cn",},
	  handle_func = function(locale, value)
	 return "持续射击增加爆炸范围，每次开火增加{#color(255,255,140)}{radius:%s}{#reset()}，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层，停手后buff消失\n叠满配合大爆炸：中心2.8→4.41、最远9→14.18\n{#color(230,60,0)}BUG：点左键开火第二发才开始计算叠加层，按住右键开火第一发就能叠加一层{#reset()}" end},
  {	id = "trait_bespoke_105_3_desc_ext_en", --神射手的反射 Marksman's Reflex
	  loc_keys = {"loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed_desc",},
	  locales = {"zh-cn",},
	  handle_func = function(locale, value)
	 return "命中敌人弱点时，在{#color(255,255,140)}{duration:%s}{#reset()}秒内，换弹速度加快{#color(255,255,140)}{reload_speed:%s}{#reset()}\n{#color(230,60,0)}BUG：换成近战武器弱点命中也能触发{#reset()}" end},

-- ____________________________________________________Kickback
-- {	id = "trait_bespoke_106_ext_en", -- Expansive
	-- loc_keys = {"loc_trait_bespoke_weapon_special_power_bonus_after_one_shots",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Expansive" end},
--{	id = "trait_bespoke_106_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_weapon_special_power_bonus_after_one_shots_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{#color(255,255,140)}{power_level:%s}{#reset()} Melee " .. power_color_rgb .. " for {#color(255,255,140)}{time:%s}{#reset()} seconds on Hitting {#color(255,255,140)}3{#reset()} Enemies with a Ranged Attack." .. power_note_color_rgb end}, -- colors s->seconds -- "+30%Melee Power for  3.5s"->"+30% Melee Power for 3.5 seconds"
-- {	id = "trait_bespoke_107_ext_en", -- Punishing Fire
	-- loc_keys = {"loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Punishing Fire" end},
--{	id = "trait_bespoke_107_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{#color(255,255,140)}{power_level:%s}{#reset()} " .. power_color_rgb .. " Bonus on your ranged attack for {#color(255,255,140)}{time:%s}{#reset()} seconds after Cleaving through several enemies with your weapon's Special attack." .. power_note_color_rgb end}, -- colors

--____________________________________________________Grenadier Gauntlet
-- {	id = "trait_bespoke_108_ext_en", -- Reassuringly Accurate
	-- loc_keys = {"loc_trait_bespoke_toughness_on_crit_kills",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Reassuringly Accurate" end},
--{	id = "trait_bespoke_108_desc_ext_en",
--	loc_keys = {"loc_trait_bespoke_toughness_on_crit_kills_desc",},
--	locales = {"zh-cn",},
--	handle_func = function(locale, value)
--	return "{#color(255,255,140)}{toughness:%s}{#reset()} " .. toughness_color_rgb .. " on " .. crit_hit_color_rgb .. " Kill." end},
-- {	id = "trait_bespoke_109_ext_en", -- Pinpointing target 精确定位
	-- loc_keys = {"loc_trait_bespoke_power_bonus_based_on_charge_time_ranged",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Pinpointing target" end},
{	id = "trait_bespoke_109_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_power_bonus_based_on_charge_time_ranged_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "按住右键不开火的时候每{#color(255,255,140)}{time:%s}{#reset()}秒增加一层，每层增加{#color(255,255,140)}{power_level:%s}{#reset()}能量（全局加成，最终伤害乘法叠加），叠加上限为{#color(255,255,140)}{stacks:%s}{#reset()}层" end},
{	id = "loc_trait_bespoke_power_bonus_after_weapon_special_multiple_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_power_bonus_after_weapon_special_multiple_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "用臂铠的特殊近战爆破拳，单次命中至少3个敌人时，增加臂铠的近战、远程直击、爆炸aoe伤害{#color(255,255,140)}6~15%{#reset()}（按祝福等级），效果持续{#color(255,255,140)}6{#reset()}秒\n重复触发不叠加但可重置持续时间" end},
{	id = "loc_trait_bespoke_power_bonus_on_chained_melee_desc_ext_en", --Gauntlet Momentum
	loc_keys = {"loc_trait_bespoke_power_bonus_on_chained_melee_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "用臂铠的近战模式连续命中敌人，每次命中叠加1层buff，近战伤害与踉跄增加{#color(255,255,140)}{power:%s}{#reset()}，最多堆叠{#color(255,255,140)}{stacks:%s}{#reset()}层，效果持续{#color(255,255,140)}{time:%s}{#reset()}秒\n每次只丢失一层堆叠，而不是全部失去\n{#color(230,60,0)}BUG：1~4级都是5%{#reset()}" end},
-- {	id = "trait_bespoke_110_ext_en", -- Blaze Away 连续射击
	-- loc_keys = {"loc_trait_bespoke_power_bonus_on_continuous_fire_alternative",},
	-- locales = {"zh-cn",},
	-- handle_func = function(locale, value)
	-- return "Blaze Away" end},
	{	id = "trait_bespoke_110_desc_ext_en",
	loc_keys = {"loc_trait_bespoke_power_bonus_on_continuous_fire_alternative_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "持续不间断的开火可以叠加伤害加成，每层增加{#color(255,255,140)}{power_level:%s}{#reset()}能量（全局加成，最终伤害乘法叠加），每当射击消耗{#color(255,255,140)}1{#reset()}发弹药就会增加一层，叠加上限为{#color(255,255,140)}{stacks:%s}{#reset()}层（部分近战攻击模式也能叠加）\n{#color(230,60,0)}BUG：点左键开火第二发才开始计算叠加层，按住右键开火第一发就能叠加一层" end},
	
-- ==================================================Skitarius 

	{	id = "trait_bespoke_111_1_desc_ext_en", --Enhanced Voltaic Arcs电弧延展
	loc_keys = {"loc_trait_bespoke_enhanced_arc_jumps_angle",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "电弧延展" end},
	{	id = "trait_bespoke_111_desc_ext_en", --Enhanced Voltaic Arcs电弧延展
	loc_keys = {"loc_trait_bespoke_enhanced_arc_jumps_angle_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "该武器产生的电弧弹跳角度{#color(255,255,140)}{angle:%s}{#reset()}，弹跳距离{#color(255,255,140)}{radius:%s}{#reset()}，弹跳次数{#color(255,255,140)}{jumps:%s}{#reset()}（劈裂不影响次数）\n电棍：角度90°→115°，距离6.6→8.6米，弹跳2→4\n伤害倍率：防弹硬壳100%、无甲狂人90%、不屈感染80%、虚空50%\n电枪：角度122°→142°，距离4.8→5.8米，左键弹跳1→2，右键弹跳2→3\n伤害倍率：防弹虚空70%、无甲狂人60%、不屈感染50%、硬壳40%" end},
	{	id = "trait_bespoke_112_1_desc_ext_en", --Voltagheist Overload灵压过载
	loc_keys = {"loc_trait_bespoke_arc_has_killing_blow_chance",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "灵压过载" end},
	{	id = "trait_bespoke_112_desc_ext_en", --Voltagheist Overload灵压过载
	loc_keys = {"loc_trait_bespoke_arc_has_killing_blow_chance_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用特殊模式后产生的电弧命中人形体型敌人时，拥有{#color(255,255,140)}{proc_chance:%s}{#reset()}即死判定概率（特殊挡反不产生电弧无法即死）\n人形包括狗，但不包括欧格林和boss\n这类代码杀算环境不算玩家，无法触发玩家本身技能等击杀特效" end},
	{	id = "trait_bespoke_113_desc_ext_en", --Superiority优势
	loc_keys = {"loc_trait_bespoke_elite_kills_grants_stackable_melee_power_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "使用该武器时，以任意方式击杀精英或专家后（包括dot），增加{#color(255,255,140)}{power_level:%s}{#reset()}近战直击伤害，持续{#color(255,255,140)}{time:%s}{#reset()}秒，叠加上限{#color(255,255,140)}{stacks:%s}{#reset()}层\nBUG：命中敌人后衰减层数不生效" end},
	{	id = "trait_bespoke_114_desc_ext_en", --Machine Spirit Resurgent机魂复苏
	loc_keys = {"loc_trait_bespoke_refund_charge_on_weapon_special_weakspot_kill_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "武器特技弱点击杀可返还一次特技充能，每{#color(255,255,140)}{time:%s}{#reset()}秒只能触发一次" end},
	{	id = "trait_bespoke_114_desc_ext_en", --Deadly Frequencies致命频率
	loc_keys = {"loc_trait_bespoke_increased_melee_power_on_weapon_special_follow_up_hits_desc",},
	locales = {"zh-cn",},
	handle_func = function(locale, value)
	return "切换武器形态后，命中一次敌人，会让后续{#color(255,255,140)}3{#reset()}次近战直击伤害{#color(255,255,140)}{power:%s}{#reset()}。每次切换形态都可以重置{#color(255,255,140)}3{#reset()}次机会\n打空会消耗次数" end},
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
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
