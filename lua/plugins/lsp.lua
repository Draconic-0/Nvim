return {
        "neovim/nvim-lspconfig",
        event = "BufReadPre",
        dependencies = { "hrsh7th/cmp-nvim-lsp" },
        config = function()
                require("mason").setup({ensure_installed = {"clangd", "clang-format"}})
                require("mason-lspconfig").setup()
                require("lspconfig").clangd.setup{}
        end
}
