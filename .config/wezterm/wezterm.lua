local wezterm = require 'wezterm'

return {
  font = wezterm.font_with_fallback({
    "Fira Code Nerd Font",
    "Hack Nerd Font Mono",
  }),
  color_scheme = 'ayu',
  font_antialias = 'Subpixel',
  font_dirs = {'fonts'},
  font_size = 10.0,
  check_for_updates = false,
  warn_about_missing_glyphs = false
}
