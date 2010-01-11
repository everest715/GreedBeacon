
local myname, ns = ...

ns.L = setmetatable(GetLocale() == "deDE" and {
	["(.*) won: (.+)"] = "(.*) gewinnt: (.+)",
	["%s|Hgreedbeacon:%d|h[%s roll]|h|r %s won %s "] = "%s|Hgreedbeacon:%d|h[%s roll]|h|r %s gewinnt: %s",
	["(.*) has?v?e? selected (.+) for: (.+)"] = "(.+) hab?t f\195\188r (.+) '(.+)' ausgew\195\164hlt",
	["(.+) Roll . (%d+) for (.+) by (.+)"] = "Wurf f\195\188r (.*): (%d+) f\195\188r (.*) von (.*)",
	[" passed on: "] = " w\195\188rfelt nicht f\195\188r: ",
	[" automatically passed on: "] = " passt automatisch bei ",
	["You passed on: "] = "Ihr habt gepasst bei: ",
	["Everyone passed on: "] = "Alle haben gepasst bei: ",
	["Greed"] = GREED,
	["Need"] = NEED,
} or GetLocale() == "ruRU" and {
	["(.*) won: (.+)"] = "(.*) \208\178\209\139\208\184\208\179\209\128\209\139\208\178\208\176\208\181\209\130: (.+)",
	["%s|Hgreedbeacon:%d|h[%s roll]|h|r %s won %s "] = "%s|Hgreedbeacon:%d|h[%s roll]|h|r %s \208\178\209\139\208\184\208\179\209\128\209\139\208\178\208\176\208\181\209\130: %s",
	["(.*) has?v?e? selected (.+) for: (.+)"] = "\208\160\208\176\208\183\209\139\208\179\209\128\209\139\208\178\208\176\208\181\209\130\209\129\209\143 \208\191\209\128\208\181\208\180\208\188\208\181\209\130: (.+). (.*) \208\179\208\190\208\178\208\190\209\128\208\184\209\130: (.+)",
	["(.+) Roll . (%d+) for (.+) by (.+)"] = "\208\160\208\181\208\183\209\131\208\187\209\140\209\130\208\176\209\130 \208\177\209\128\208\190\209\129\208\186\208\176 (.*) \208\183\208\176 \208\191\209\128\208\181\208\180\208\188\208\181\209\130 (.*): (%d+)",
	[" passed on: "] = " \208\190\209\130\208\186\208\176\208\183\209\139\208\178\208\176\208\181\209\130\209\129\209\143 \208\190\209\130 \208\191\209\128\208\181\208\180\208\188\208\181\209\130\208\176: ",
	[" automatically passed on: "] = " \208\191\208\190\209\129\208\186\208\190\208\187\209\140\208\186\209\131 \208\189\208\181 \208\188\208\190\208\182\208\181\209\130 \208\181\208\179\208\190 \208\183\208\176\208\177\209\128\208\176\209\130\209\140.",
	["You passed on: "] = "\208\146\209\139 \208\190\209\130\208\186\208\176\208\183\208\176\208\187\208\184\209\129\209\140 \208\190\209\130 \208\191\209\128\208\181\208\180\208\188\208\181\209\130\208\176: ",
	["Everyone passed on: "] = ": \208\191\209\128\208\181\208\180\208\188\208\181\209\130 \208\189\208\184\208\186\208\190\208\188\209\131 \208\189\208\181 \208\189\209\131\208\182\208\181\208\189.",
	["Greed"] = GREED,
	["Need"] = NEED,
} or {}, {__index = function(t,i) return i end})