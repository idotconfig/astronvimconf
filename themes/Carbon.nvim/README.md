# 🥤 Carbon.nvim

A dark Neovim theme with 4 accent variants, inspired by TokyoNight.

## 🎨 Variants

| Variant          | Accent | Hex       | Command                           |
| ---------------- | ------ | --------- | --------------------------------- |
| **Rice**         | White  | `#ffffff` | `:colorscheme carbon-rice`        |
| **Mochi**        | Pink   | `#ff669e` | `:colorscheme carbon-mochi`       |
| **Cotton Candy** | Indigo | `#758aff` | `:colorscheme carbon-cottoncandy` |
| **Blaze**        | Red    | `#f85044` | `:colorscheme carbon-blaze`       |

## ⚡ Installation

```lua
-- lazy.nvim
{
  "/Codes/Others/Carbon.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "mochi",
    transparent = false,
  },
}
```

## 🚀 Usage

```lua
require("carbon").setup({
  style = "mochi",       -- rice, mochi, cottoncandy, blaze
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    sidebars = "dark",
    floats = "dark",
  },
})

vim.cmd("colorscheme carbon")
```

## 🎯 Switch Styles

```vim
:CarbonStyle rice
:CarbonStyle mochi
:CarbonStyle cottoncandy
:CarbonStyle blaze
```

## 🍭 Extras

Copy extras to your terminal/tmux/btop config:

- `extras/kitty/carbon_*.conf` → Kitty
- `extras/tmux/carbon_*.tmux` → Tmux
- `extras/btop/carbon_*.theme` → Btop
