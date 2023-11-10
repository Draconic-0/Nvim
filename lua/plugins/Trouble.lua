return {
  "folke/trouble.nvim",
  event = "VeryLazy",
  config = function()
    vim.keymap.set('n', '<leader>T', '<cmd>Trouble<CR>')
  end,
}
