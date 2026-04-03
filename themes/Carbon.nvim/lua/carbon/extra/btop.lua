local Util = require("carbon.util")
local M = {}

function M.generate(colors)
  return Util.template([[
# Theme: carbon_${style}
# Accent: ${blue}

theme[main_bg]="${bg}"
theme[main_fg]="${fg}"

theme[title]="${fg}"
theme[hi_fg]="${orange}"

theme[selected_bg]="${fg_gutter}"
theme[selected_fg]="${cyan}"
theme[proc_misc]="${cyan}"

theme[cpu_box]="${blue}"
theme[mem_box]="${blue}"
theme[net_box]="${blue}"
theme[proc_box]="${blue}"

theme[div_line]="${fg_gutter}"

theme[temp_start]="${green}"
theme[temp_mid]="${yellow}"
theme[temp_end]="${red}"

theme[cpu_start]="${green}"
theme[cpu_mid]="${yellow}"
theme[cpu_end]="${red}"

theme[free_start]="${green}"
theme[free_mid]="${yellow}"
theme[free_end]="${red}"

theme[cached_start]="${green}"
theme[cached_mid]="${yellow}"
theme[cached_end]="${red}"

theme[available_start]="${green}"
theme[available_mid]="${yellow}"
theme[available_end]="${red}"

theme[used_start]="${green}"
theme[used_mid]="${yellow}"
theme[used_end]="${red}"

theme[download_start]="${green}"
theme[download_mid]="${yellow}"
theme[download_end]="${red}"

theme[upload_start]="${green}"
theme[upload_mid]="${yellow}"
theme[upload_end]="${red}"
]], colors)
end

return M
