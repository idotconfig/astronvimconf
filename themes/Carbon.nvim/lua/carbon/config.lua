local M = {}
M.version = "1.0.0"

---@class carbon.Config
M.defaults = {
  style = "mochi", -- rice, mochi, cottoncandy, blaze, darkmatter, caffeine
  light_style = "rice",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark",
    floats = "dark",
  },
  dim_inactive = false,
  lualine_bold = false,
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
  cache = true,
  plugins = {
    all = true,
    auto = true,
  },
}

M.options = nil

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

function M.extend(opts)
  return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then return M.defaults end
  end,
})

return M
