-- ~/.config/nvim/lua/plugins/neo-tree.lua
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden items by default
        hide_dotfiles = false, -- Do NOT hide dotfiles
        hide_gitignored = false, -- Optional: show .gitignored files too
      },
    },
  },
}
