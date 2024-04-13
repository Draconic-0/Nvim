return {
        { "folke/lazy.nvim" },
        { "folke/which-key.nvim",
                event = "VeryLazy",
                config = function()
                        require("which-key").setup {}
                end
        },
        { "nvim-tree/nvim-web-devicons" }
}
