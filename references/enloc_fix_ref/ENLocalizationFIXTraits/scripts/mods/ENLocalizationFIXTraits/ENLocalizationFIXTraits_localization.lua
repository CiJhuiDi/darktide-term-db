local mod = get_mod("ENLocalizationFIXTraits")
local InputUtils = require("scripts/managers/input/input_utils")

local localizations = {
	mod_name = {
		en = "Enhanced Descriptions - Perks",
		["zh-cn"] = "丁香描述优化——武器专长",
	},
	mod_description = {
		en = "Enhanced Descriptions - fixes and additions to game descriptions. A module with Weapon Perks.\nIf you enable this module together with the main ENLocalizationFIX mod, then will work the edits of the mod that is in the list above. {#color(255, 54, 54)}It's better not to do this to avoid glitches and crashes!{#reset()}",
		["zh-cn"] = "遇到问题联系B站丁香与黑醋栗，评论留言或私信发图，也可以加朋友的群951871341，我经常在群里冒泡，你发错误报告到群问题艾特我，我看看怎么解决问题",
	},

	crit_colour = {
		en = "Crit",
		["zh-cn"] = "暴击",
	},
	damage_colour = {
		en = "Damage",
		["zh-cn"] = "伤害",
	},
	stamina_colour = {
		en = "Stamina",
		["zh-cn"] = "体力",
	},
	weakspot_colour = {
		en = "Weak Spot",
		["zh-cn"] = "弱点",
	},
}

-- Thanks to Wobin!
local function addLocalisation(localisations, typeName)
	localisations[typeName .. "_text_colour"] = {
		en = "Color",
		["zh-cn"] = "颜色",
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

addLocalisation(localizations, "crit")
addLocalisation(localizations, "damage")
addLocalisation(localizations, "stamina")
addLocalisation(localizations, "weakspot")

return localizations
