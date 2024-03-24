local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font 'FiraCode Nerd Font Mono'
config.font_size = 16.0

config.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 8,
}

config.window_background_opacity = 0.8


config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  font = wezterm.font { family = 'FiraCode Mono', weight = 'Bold' },

  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
  font_size = 12.0,

  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#333333',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#333333',
}

config.hide_tab_bar_if_only_one_tab = true

return config
