local mod = get_mod("ENLocalizationFIXBlessings")
local InputUtils = require("scripts/managers/input/input_utils")

local localizations = {
	mod_name = {
		en = "Enhanced Descriptions - Weapon Blessings",
		["zh-cn"] = "丁香描述优化——武器祝福",
	},
	mod_description = {
		en = "Enhanced Descriptions - fixes and additions to game descriptions. A module with descriptions of Weapon Blessings.\nIf you enable this module together with the main ENLocalizationFIX mod, then will work the edits of the mod that is in the list above. {#color(255, 54, 54)}It's better not to do this to avoid glitches and crashes!{#reset()}",
		["zh-cn"] = "遇到问题联系B站丁香与黑醋栗，评论留言或私信发图，也可以加朋友的群951871341，我经常在群里冒泡，你发错误报告到群问题艾特我，我看看怎么解决问题",
	},

	bleed_colour = {
		en = "流血",
	},
	brittleness_colour = {
		en = "脆弱",
	},
	burn_colour = {
		en = "燃烧",
	},
	cleave_colour = {
		en = "劈裂",
	},
	crit_colour = {
		en = "暴击",
	},
	damage_colour = {
		en = "伤害",
	},
	finesse_colour = {
		en = "娴熟",
	},
	hit_mass_colour = {
		en = "打击质量",
	},
	impact_colour = {
		en = "冲击力",
	},
	peril_colour = {
		en = "危机（热量）",
	},
	power_colour = {
		en = "能量",
	},
	rending_colour = {
		en = "撕碎",
	},
	soulblaze_colour = {
		en = "灵魂之火",
	},
	stagger_colour = {
		en = "踉跄",
	},
	stamina_colour = {
		en = "体力",
	},
	toughness_colour = {
		en = "韧性",
	},
	weakspot_colour = {
		en = "弱点",
	},
	note_colour = {
		en = "笔记",
	},
}

-- Thanks to Wobin!
local function addLocalisation(localisations, typeName)
	localisations[typeName .. "_text_colour"] = {
		en = "颜色",
	}
end

local function readable(text)
	local readable_string = ""
	local tokens = string.split(text, "_")
		for i, token in ipairs(tokens) do
	local first_letter = string.sub(token, 1, 1)
		token = string.format("%s%s", string.upper(first_letter), string.sub(token, 2))
		readable_string = string.trim(string.format("%s %s", readable_string, token))
end
	return readable_string
end

local color_names = Color.list
for i, color_name in ipairs(color_names) do
	local color_values = Color[color_name](255, true)
	local text = InputUtils.apply_color_to_input_text(readable(color_name), color_values)
		localizations[color_name] = {
			en = text
		}
end

addLocalisation(localizations, "bleed")
addLocalisation(localizations, "brittleness")
addLocalisation(localizations, "burn")
addLocalisation(localizations, "cleave")
addLocalisation(localizations, "crit")
addLocalisation(localizations, "damage")
addLocalisation(localizations, "finesse")
addLocalisation(localizations, "hit_mass")
addLocalisation(localizations, "impact")
addLocalisation(localizations, "peril")
addLocalisation(localizations, "power")
addLocalisation(localizations, "rending")
addLocalisation(localizations, "soulblaze")
addLocalisation(localizations, "stagger")
addLocalisation(localizations, "stamina")
addLocalisation(localizations, "toughness")
addLocalisation(localizations, "weakspot")
addLocalisation(localizations, "note")

return localizations