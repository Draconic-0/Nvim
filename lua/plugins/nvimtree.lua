return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  config = { sort_by = "case_sensitive",
    view = {
      width = 35,
      relativenumber = true,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
  },
  -- keys = {
  --  {'n', '<leader>e', vim.cmd.NvimTreeToggle}
  -- }
}
