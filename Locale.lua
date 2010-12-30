
local myname, ns = ...

ns.L = setmetatable(GetLocale() == "deDE" and {
	["(.*) won: (.+)"]                               = "(.*) gewinnt: (.+)",
	["%s|Hgreedbeacon:%d|h[%s roll]|h|r %s won %s "] = "%s|Hgreedbeacon:%d|h[%s roll]|h|r %s gewinnt: %s",
	["(.*) has?v?e? selected (.+) for: (.+)"]        = "(.+) hab?t für (.+) '(.+)' ausgewählt",
	["(.+) Roll . (%d+) for (.+) by (.+)"]           = "Wurf für (.*): (%d+) für (.*) von (.*)",
	[" passed on: "]                                 = " würfelt nicht für: ",
	[" automatically passed on: "]                   = " passt automatisch bei ",
	["You passed on: "]                              = "Ihr habt gepasst bei: ",
	["Everyone passed on: "]                         = "Alle haben gepasst bei: ",
	["Greed"]                                        = GREED,
	["Need"]                                         = NEED,
} or GetLocale() == "ruRU" and {
	["(.*) won: (.+)"]                               = "(.*) выигрывает: (.+)",
	["%s|Hgreedbeacon:%d|h[%s roll]|h|r %s won %s "] = "%s|Hgreedbeacon:%d|h[%s roll]|h|r %s выигрывает: %s",
	["(.*) has?v?e? selected (.+) for: (.+)"]        = "Разыгрывается предмет: (.+). (.*) говорит: (.+)",
	["(.+) Roll . (%d+) for (.+) by (.+)"]           = "Результат броска (.*) за предмет (.*): (%d+)",
	[" passed on: "]                                 = " отказывается от предмета: ",
	[" automatically passed on: "]                   = " поскольку не может его забрать.",
	["You passed on: "]                              = "Вы отказались от предмета: ",
	["Everyone passed on: "]                         = ": предмет никому не нужен.",
	["Greed"]                                        = GREED,
	["Need"]                                         = NEED,
} or GetLocale() == "esES" and {
	["(.*) won: (.+)"]                               = "(.*) ha ganado: (.+)",
	["%s|Hgreedbeacon:%d|h[%s roll]|h|r %s won %s "] = "%s|Hgreedbeacon:%d|h[%s roll]|h|r %s ha ganado: %s",
	["(.*) has?v?e? selected (.+) for: (.+)"]        = "(.*) ha seleccionado (.+) para: (.+)",
	["(.+) Roll . (%d+) for (.+) by (.+)"]           = "Tiro por (.+): (%d+) para (.+) por (.+)",
	[" passed on: "]                                 = " ha pasado de: ",
	[" automatically passed on: "]                   = " ha pasado automáticamente de: ",
	["You passed on: "]                              = "Has pasado de: ",
	["Everyone passed on: "]                         = "Todos han pasado de: ",
	["Greed"]                                        = GREED,
	["Need"]                                         = NEED,
} or GetLocale() == "zhCN" and {
	["(.*) won: (.+)"]                               = "(.*)赢得了：(.+)",
	["%s|Hgreedbeacon:%d|h[%s roll]|h|r %s won %s "] = "%s|Hgreedbeacon:%d|h[%s]|h|r %s 赢得了 %s ",
	["(.*) has?v?e? selected (.+) for: (.+)"]        = "(.+)选择了(.+)取向：(.+)",
	["(.+) Roll . (%d+) for (.+) by (.+)"]           = "（(.+)）(%d+)点：(.+)（(.+)）",
	[" passed on: "]                                 = "放弃了：",
	[" automatically passed on: "]                   = "自动放弃了",
	["You passed on: "]                              = "你放弃了：",
	["Everyone passed on: "]                         = "所有人都放弃了：",
	["Greed"]                                        = GREED,
	["Need"]                                         = NEED,
	["Disenchant"]                                   = ROLL_DISENCHANT,
} or GetLocale() == "zhTW" and {
	["(.*) won: (.+)"]                               = "(.*)贏得了:(.+)",
	["%s|Hgreedbeacon:%d|h[%s roll]|h|r %s won %s "] = "%s|Hgreedbeacon:%d|h[%s]|h|r %s 贏得了 %s ",
	["(.*) has?v?e? selected (.+) for: (.+)"]        = "(.+)選擇\228?\186?\134?(.+):(.+)",
	["(.+) Roll . (%d+) for (.+) by (.+)"]           = "(.+) %- (.+)由(.+)擲出(%d+)",
	[" passed on: "]                                 = "放棄了:",
	[" automatically passed on: "]                   = "自動放棄:",
	["You passed on: "]                              = "你放棄了:",
	["Everyone passed on: "]                         = "所有人都放棄了:",
	["Greed"]                                        = GREED,
	["Need"]                                         = NEED,
	["Disenchant"]                                   = ROLL_DISENCHANT,
} or {}, {__index = function(t,i) return i end})
