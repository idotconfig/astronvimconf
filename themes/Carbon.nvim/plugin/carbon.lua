if vim.g.loaded_carbon then return end
vim.g.loaded_carbon = true

vim.api.nvim_create_user_command("CarbonStyle", function(opts)
  require("carbon").load({ style = opts.args })
end, {
  nargs = 1,
  complete = function() return { "rice", "mochi", "cottoncandy", "blaze", "darkmatter", "caffeine" } end,
})
