return {
	black = 0xff1a1b26, -- Background color
	white = 0xffc0caf5, -- Foreground color
	red = 0xfff7768e,
	green = 0xff9ece6a,
	blue = 0xff7aa2f7,
	yellow = 0xffe0af68,
	orange = 0xffff9e64,
	pink = 0xffc678dd,
	purple = 0xff9d7cd8,
	other_purple = 0xff98c379,
	cyan = 0xff7dcfff,
	grey = 0xff757984,
	text_blue = 0xffD7EDF7,
	dirty_white = 0xffa9b1d6,
	dark_grey = 0xff282a36,
	transparent = 0x00000000,
	bar = {
		bg = 0x1DCB0, -- semi-transparent bar bg
		border = 0xff1e1f2f,
	},
	popup = {
		bg = 0x1DCB0,
		border = 0x1DCB0,
	},
	bg1 = 0x1DCB0,
	bg2 = 0x1DCB0,

	with_alpha = function(color, alpha)
		if alpha > 1.0 or alpha < 0.0 then
			return color
		end
		return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
	end,
}
