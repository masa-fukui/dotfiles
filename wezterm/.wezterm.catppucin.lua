local wezterm = require 'wezterm'
local config = {}

-- general
config.enable_tab_bar = false
config.enable_scroll_bar = false

-- appearance
config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font('JetBrainsMono Nerd Font', {weight='Regular', stretch='Normal'})
config.font_size = 12.5
config.window_decorations = 'RESIZE'

-- keys
local act = wezterm.action
config.keys = {
    {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}}, -- ALT + Left to move one word left
    {key="LeftArrow", mods="CMD", action=wezterm.action{SendString="\x1bOH"}}, -- CMD + Left to move to the beginning of the line
    {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}}, -- ALT + Right to move one word right
    {key="RightArrow", mods="CMD", action=wezterm.action{SendString="\x1bOF"}}, -- CMD + Right to move to the end of the line
}

return config
