local Config = require("carbon.config")
local Util = require("carbon.util")

local M = {}

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h")

function M.get_group(name)
  return Util.mod("carbon.groups." .. name)
end

function M.get(name, colors, opts)
  local mod = M.get_group(name)
  return mod.get(colors, opts)
end

function M.setup(colors, opts)
  local groups = { base = true, treesitter = true, semantic_tokens = true }
  local ret = {}
  for group in pairs(groups) do
    for k, v in pairs(M.get(group, colors, opts)) do
      ret[k] = v
    end
  end
  opts.on_highlights(ret, colors)
  return ret, groups
end

return M
