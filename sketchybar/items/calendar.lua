local settings = require("settings")
local colors = require("colors")

local cal = sbar.add("item", {
	icon = {
		color = colors.dirty_white,
		font = {
			style = settings.font.style_map["Bold"],
			size = 12.0,
		},
		y_offset = -1,
		padding_right = -2,
	},
	label = {
		color = colors.dirty_white,
		width = 96,
		align = "left",
		font = {
			style = settings.font.style_map["Black"],
			size = 14.0,
		},
	},
	position = "right",
	update_freq = 1,
	y_offset = 1,
	padding_left = -2,
})

-- german Date
cal:subscribe({ "forced", "routine", "system_woke" }, function(env)
	local weekdayNames = {
		"Sun ",
		"Mon ",
		"Tues ",
		"Wed ",
		"Thurs ",
		"Fr ",
		"Sat ",
	}
	local monthNames = {
		"Jan",
		"Feb",
		"Mar",
		"Apr",
		"May",
		"Jun",
		"Jul",
		"Aug",
		"Sep",
		"Oct",
		"Nov",
		"Dec",
	}

	cal:set({
		icon = weekdayNames[tonumber(os.date("%w")) + 1] .. os.date("%d") .. " " .. monthNames[tonumber(os.date("%m"))],
		label = "｜" .. os.date("%H:%M:%S"),
	})
end)

cal:subscribe("mouse.clicked", function(env)
	sbar.exec("open -a 'Dato'")
end)

-- english date
-- cal:subscribe({ "forced", "routine", "system_woke" }, function(env)
--   cal:set({ icon = os.date("%a. %d %b."), label = os.date("%H:%M") })
-- end)
