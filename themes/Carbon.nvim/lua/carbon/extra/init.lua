local M = {}

function M.generate(colors, opts)
  local styles = { rice = "rice", mochi = "mochi", cottoncandy = "cottoncandy", blaze = "blaze" }
  local ret = {}
  for name, style in pairs(styles) do
    local colors = require("carbon.colors." .. style)
    local kitty = require("carbon.extra.kitty").generate(colors)
    local tmux = require("carbon.extra.tmux").generate(colors)
    local btop = require("carbon.extra.btop").generate(colors)
    ret["kitty/carbon_" .. style .. ".conf"] = kitty
    ret["tmux/carbon_" .. style .. ".tmux"] = tmux
    ret["btop/carbon_" .. style .. ".theme"] = btop
  end
  return ret
end

return M
