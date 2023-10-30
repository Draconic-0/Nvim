return {
  "glepnir/lspsaga.nvim",
  lazy = false,
  config = function()
    require("lspsaga").setup({
      finder_action_keys = {
        open = "<CR>",
      },
      definition_action_keys = {
        edit = "<CR>",
      },
    })
  end,
}
