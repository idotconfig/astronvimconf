---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      update_in_insert = true,
      underline = true,
      signs = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = true, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- close buffer from tabline
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- find files (Telescope)
        ["<C-p>"] = { "<cmd>Telescope find_files<CR>", desc = "Find files" },

        -- toggle Gemini Chat
        ["<C-i>"] = { "<cmd>GeminiChatToggle<CR>", desc = "Toggle Gemini Chat" },

        -- toggle Copilot Chat
        ["<C-M-i>"] = { "<cmd>CopilotChatToggle<CR>", desc = "Copilot Chat" },

        -- select all
        ["<C-a>"] = { "ggVG", desc = "Select all" },
      },
      v = {
        -- copy to system clipboard
        ["<C-c>"] = { '"+y', desc = "Copy to clipboard" },

        -- select all in visual mode
        ["<C-a>"] = { "ggVG", desc = "Select all" },
      },
      i = {
        -- go to beginning of line
        ["<C-a>"] = { "<C-o>^", desc = "Beginning of line" },
      },
    },
  },
}
