local config = function()

        require("nvim-treesitter.configs").setup({
        indent = {
        enable = true,
        },
        autotag = {
                enable = true,
        },
        ensure_installed = {
                "c",
                "lua",
                "rust",
        },
        auto_install = true,
        highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
        },
        })
end
return {
  lazy = false,
  config = config,
  "nvim-treesitter/nvim-treesitter"
}
