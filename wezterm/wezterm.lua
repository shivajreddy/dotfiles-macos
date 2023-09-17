---@type wezterm
local wezterm = require("wezterm")
local c = wezterm.config_builder()

require("keys").apply(c)

c.font = wezterm.font_with_fallback({
  "MesloLGS NF",
  "JetBrainsMono Nerd Font",
  "Berkeley Mono",
  "JetBrains Mono",
  "Symbols Nerd Font",
})
c.font_size=16
-- window
c.window_decorations = "RESIZE"
c.window_padding = { left = 10, right = 10, top = 10, bottom = 10 }
-- dim unfocused panes
c.inactive_pane_hsb = {
  saturation = 1.0,
  brightness = 0.8,
}
-- etc.
c.adjust_window_size_when_changing_font_size = false
c.audible_bell = "Disabled"
c.clean_exit_codes = { 130 }
c.default_cursor_style = "BlinkingBar"
--c.launch_menu = {
--  { label = "Music player", args = { "ncmpcpp" } },
--}
--c.command_palette_font_size = 16.0
--c.window_frame = { font_size = 16.0 }
c.window_background_opacity = 0.95

wezterm.plugin
  .require("https://github.com/catppuccin/wezterm")
  .apply_to_config(c, {
    sync = true,
    sync_flavors = { light = "latte", dark = "mocha" },
  })
wezterm.plugin
  .require("https://github.com/nekowinston/wezterm-bar")
  .apply_to_config(c)

return c
