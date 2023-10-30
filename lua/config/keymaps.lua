
 -- Directory nav
vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeToggle, {noremap = true, silent = true, desc = "open Nvim-Tree"})
vim.keymap.set('n', '<leader>r', vim.cmd.NvimTreeFocus, {noremap = true, silent = true, desc = "focus Nvim-Tree"})
 -- Panes n stuff
  
vim.keymap.set('n', '<leader>sv', vim.cmd.vsplit, {noremap = true, silent = true, desc = "split window vertically"})
vim.keymap.set('n', '<leader>sm', vim.cmd.MaximizerToggle, {noremap = true, silent = true, desc = "maximize split pane"})

 -- debugging
