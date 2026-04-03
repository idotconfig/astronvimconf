local Util = require("carbon.util")
local M = {}

function M.generate(colors)
  return Util.template([[
# vim:ft=kitty
## name: Carbon ${style}
## license: MIT
## author: Carbon Theme

background ${bg}
foreground ${fg}
selection_background ${bg_highlight}
selection_foreground ${fg}
url_color ${cyan}
cursor ${fg}
cursor_text_color ${bg}

# Tabs
active_tab_background ${blue}
active_tab_foreground ${bg}
inactive_tab_background ${fg_gutter}
inactive_tab_foreground ${dark3}

# Windows
active_border_color ${blue}
inactive_border_color ${fg_gutter}

# normal
color0 ${terminal.black}
color1 ${terminal.red}
color2 ${terminal.green}
color3 ${terminal.yellow}
color4 ${terminal.blue}
color5 ${terminal.magenta}
color6 ${terminal.cyan}
color7 ${terminal.white}

# bright
color8 ${terminal.black_bright}
color9 ${terminal.red_bright}
color10 ${terminal.green_bright}
color11 ${terminal.yellow_bright}
color12 ${terminal.blue_bright}
color13 ${terminal.magenta_bright}
color14 ${terminal.cyan_bright}
color15 ${terminal.white_bright}

# extended colors
color16 ${orange}
color17 ${red}
]], colors)
end

return M
