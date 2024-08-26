local wezterm = require('wezterm')

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.color_scheme = 'Catppuccin Mocha'

config.font = wezterm.font('JetBrains Mono', { weight = 'Medium' })
config.font_size = 13.0
--[[ config.font = wezterm.font('CommitMono', { weight = 'Regular' })
config.font_size = 13.0
config.line_height = 1.2 ]]
config.front_end = 'WebGpu'
config.enable_tab_bar = false

return config
