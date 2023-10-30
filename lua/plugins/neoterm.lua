return {
  "nyngwang/NeoTerm.lua",
  config = function()
    require("neo-term").setup()
    vim.keymap.set('n', '<M-Tab>', "<cmd>NeoTermToggle<CR>")
    vim.keymap.set('t', '<M-Tab>', "<cmd>NeoTermEnterNormal<CR> <cmd>NeoTermToggle<CR>")
  end,
  lazy = false
}
