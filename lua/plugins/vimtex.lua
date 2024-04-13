return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_view_method = "zathura" 
    vim.g.vimtex_compiler_latexmk = {
      options = {"-pdf"},
    }
  end,
}
