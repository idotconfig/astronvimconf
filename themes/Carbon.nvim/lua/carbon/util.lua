local M = {}
M.bg = "#0a0a0a"
M.fg = "#d9d9d9"

local function rgb(c)
  c = string.lower(c)
  return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h:h")

function M.mod(modname)
  if package.loaded[modname] then return package.loaded[modname] end
  local ret = loadfile(me .. "/" .. modname:gsub("%.", "/") .. ".lua")()
  package.loaded[modname] = ret
  return ret
end

function M.blend(foreground, alpha, background)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = rgb(background)
  local fg = rgb(foreground)
  local blend = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end
  return string.format("#%02x%02x%02x", blend(1), blend(2), blend(3))
end

function M.blend_bg(hex, amount, bg) return M.blend(hex, amount, bg or M.bg) end
function M.blend_fg(hex, amount, fg) return M.blend(hex, amount, fg or M.fg) end
M.darken = M.blend_bg
M.lighten = M.blend_fg

function M.resolve(groups)
  for _, hl in pairs(groups) do
    if type(hl.style) == "table" then
      for k, v in pairs(hl.style) do hl[k] = v end
      hl.style = nil
    end
  end
  return groups
end

function M.template(str, table)
  return (str:gsub("($%b{})", function(w)
    return vim.tbl_get(table, unpack(vim.split(w:sub(3, -2), ".", { plain = true }))) or w
  end))
end

return M
