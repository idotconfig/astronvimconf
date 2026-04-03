local Util = require("carbon.util")
local M = {}

M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("carbon.colors." .. style))
  end,
})

function M.setup(opts)
  opts = require("carbon.config").extend(opts)
  local palette = M.styles[opts.style]
  if type(palette) == "function" then palette = palette(opts) end

  local colors = palette
  Util.bg = colors.bg
  Util.fg = colors.fg
  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.green2, 0.25),
    delete = Util.blend_bg(colors.red1, 0.25),
    change = Util.blend_bg(colors.blue7, 0.15),
    text = colors.blue7,
  }

  colors.border_highlight = Util.blend_bg(colors.blue, 0.8)
  colors.border = Util.blend_bg(colors.bg, 0.8, "#000000")
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none or opts.styles.sidebars == "dark" and colors.bg_dark or colors.bg
  colors.bg_float = opts.styles.floats == "transparent" and colors.none or opts.styles.floats == "dark" and colors.bg_dark or colors.bg
  colors.bg_visual = Util.blend_bg(colors.blue0, 0.4)
  colors.bg_search = colors.blue0
  colors.fg_sidebar = colors.fg_dark
  colors.fg_float = colors.fg
  colors.error = colors.red1
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal

  colors.rainbow = { colors.blue, colors.yellow, colors.green, colors.teal, colors.magenta, colors.purple, colors.orange, colors.red }

  colors.terminal = {
    black = colors.bg,
    black_bright = colors.terminal_black,
    red = colors.red,
    red_bright = Util.lighten(colors.red),
    green = colors.green,
    green_bright = Util.lighten(colors.green),
    yellow = colors.yellow,
    yellow_bright = Util.lighten(colors.yellow),
    blue = colors.blue,
    blue_bright = Util.lighten(colors.blue),
    magenta = colors.magenta,
    magenta_bright = Util.lighten(colors.magenta),
    cyan = colors.cyan,
    cyan_bright = Util.lighten(colors.cyan),
    white = colors.fg_dark,
    white_bright = colors.fg,
  }

  opts.on_colors(colors)
  return colors, opts
end

return M
