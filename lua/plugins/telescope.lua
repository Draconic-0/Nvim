
return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  tag = '0.1.3',
  config = {
    pickers = {
      find_files = {
        theme = "dropdown",
        previewer = true,
        hidden = true,
      },
      live_grep = {
        theme = "dropdown",
        previewer = true,
      },
      buffers = {
        theme = "dropdown",
        previewer = false,
      },
    },
  },
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = true,
  keys = {
    vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>'),
    vim.keymap.set('n', '<leader>fa', '<cmd>Telescope<CR>'),
    vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>'),
    vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>'),
  }
}
