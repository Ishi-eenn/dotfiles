local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()

wezterm.on("gui-startup", function(cmd)
	local _, _, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

config.automatically_reload_config = true
-- config.font = wezterm.font("DepartureMono Nerd Font Mono")
config.font_size = 15.0
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.use_ime = true
config.window_background_opacity = 0.70
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
-- タブバーを非表示
config.show_tabs_in_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.window_frame = {
	inactive_titlebar_bg = "none",
	active_titlebar_bg = "none",
}
config.window_background_gradient = {
	colors = { "#000000" },
}

config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false
config.colors = {
	foreground = "a0a9cb",
	background = "#000000",
	selection_bg = "#80EBDF",
	selection_fg = "#000000",
	cursor_bg = "#ae8b2d",
	cursor_border = "#ae8b2d",
	tab_bar = {
		inactive_tab_edge = "none",
	},
}
local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local background = "#5c6d74"
	local foreground = "#FFFFFF"
	local edge_background = "none"
	if tab.is_active then
		background = "#ae8b2d"
		foreground = "#FFFFFF"
	end
	local edge_foreground = background
	local title = "   " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "

	return {
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = SOLID_LEFT_ARROW },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = title },
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = SOLID_RIGHT_ARROW },
	}
end)

config.keys = require("keybinds").keys
config.key_tables = require("keybinds").key_tables
config.disable_default_key_bindings = true
config.leader = { key = "Space", mods = "ALT", timeout_milliseconds = 2000 }

return config
