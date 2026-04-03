local config = require("carbon.config")
local M = {}

M.styles = {}

function M.load(opts)
  opts = require("carbon.config").extend(opts)
  local bg = vim.o.background
  local style_bg = opts.style == "rice" and "light" or "dark"

  if bg ~= style_bg then
    if vim.g.colors_name == "carbon-" .. opts.style then
      opts.style = bg == "light" and (M.styles.light or "rice") or (M.styles.dark or "mochi")
    else
      vim.o.background = style_bg
    end
  end

  M.styles[vim.o.background] = opts.style
  return require("carbon.theme").setup(opts)
end

M.setup = config.setup
return M
