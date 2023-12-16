local wezterm = require 'wezterm'

return {
  --color_scheme = "Solarized Dark",
  enable_scroll_bar = true,
--  font = wezterm.font {
--    family = 'Noto Sans Mono',
--    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
--  },
  font_size = 11,
  hide_tab_bar_if_only_one_tab = true,
  window_padding = {
    left = 0,
    right = '1cell',
    top = 0,
    bottom = 0
  }
}
