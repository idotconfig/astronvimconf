---@type LazySpec

return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    dir = vim.fn.stdpath("config") .. "/themes/Carbon.nvim",
    lazy = false,
    priority = 1000,
    opts = { style = "blaze" },
  },

  {
    "Civitasv/cmake-tools.nvim",
    ft = { "c", "cpp", "cmake" }, -- Optional: load only for these filetypes
    config = function()
      require("cmake-tools").setup {
        -- Optional: your custom config here, or leave empty for defaults
      }
    end,
  },

  -- tailwind-tools.lua
  {
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    build = ":UpdateRemotePlugins",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- optional
      "neovim/nvim-lspconfig", -- optional
    },
    opts = {}, -- your configuration
  },

  --[[  {
    "github/copilot.vim",
    lazy = false, -- load immediately on startup
    config = function()
      -- disable default Tab mapping if you remap it yourself
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      -- Example acceptance mapping
      vim.api.nvim_set_keymap("i", "<C-l>", "copilot#Accept()", { expr = true, silent = true })
    end,
  }, ]]
  --

  -- Gemini.nvim (Google Gemini API bindings)
  --[[ {
    "kiddos/gemini.nvim",
    ft = { "lua", "python", "javascript", "cpp", "cmake" }, -- load for code files
    build = { "pip install -r requirements.txt", ":UpdateRemotePlugins" },
    config = function()
      require("gemini").setup {
        -- optional: custom settings here
      }
    end,
  },
  ]]
  --
  "ray-x/lsp_signature.nvim",
  event = "BufRead",
  config = function() require("lsp_signature").setup() end,

  {
    "Shatur/neovim-ayu",
    lazy = false, -- Load immediately
    priority = 1000, -- High priority to ensure it loads first
    config = function()
      require("ayu").setup {
        mirage = false, -- Set to true for a darker variant
        overrides = {}, -- Add any custom overrides here
      }
      --   vim.cmd("colorscheme ayu")  -- Set the colorscheme to ayu
    end,
  },

  -- == Examples of Overriding Plugins ==

  -- customize dashboard options
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            "███    ██ ██    ██ ██ ███    ███",
            "████   ██ ██    ██ ██ ████  ████",
            "██ ██  ██ ██    ██ ██ ██ ████ ██",
            "██  ██ ██  ██  ██  ██ ██  ██  ██",
            "██   ████   ████   ██ ██      ██",
          }, "\n"),
        },
      },
    },
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
}
