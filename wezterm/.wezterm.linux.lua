local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)

local config = {}

-- general
config.enable_tab_bar = false
config.enable_scroll_bar = false

-- appearance
config.window_background_opacity = 1.0
config.font_size = 11.0
config.color_scheme = 'Dracula'
config.window_decorations = 'TITLE'
config.font = wezterm.font_with_fallback({
    {family="Hack Nerd Font", weight="Regular"},
    {family="Twemoji Mozilla", weight="Regular"},
})

-- keys
local act = wezterm.action
config.keys = {
    {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}}, -- ALT + Left to move one word left
    {key="LeftArrow", mods="CMD", action=wezterm.action{SendString="\x1bOH"}}, -- CMD + Left to move to the beginning of the line
    {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}}, -- ALT + Right to move one word right
    {key="RightArrow", mods="CMD", action=wezterm.action{SendString="\x1bOF"}}, -- CMD + Right to move to the end of the line
}

return config
