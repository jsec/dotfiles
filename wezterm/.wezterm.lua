local wezterm = require('wezterm')

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.color_scheme = 'Catppuccin Mocha'

config.font = wezterm.font('JetBrains Mono', { weight = 'Medium' })
config.font_size = 13.0
-- config.font = wezterm.font('CommitMono-js1', { weight = 'Regular' })
config.front_end = 'WebGpu'
config.enable_tab_bar = false
config.native_macos_fullscreen_mode = true
config.scrollback_lines = 5000

return config
