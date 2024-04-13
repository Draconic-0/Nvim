return {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        config = function()
                
                vim.keymap.set('n', "<leader>et", vim.cmd.NvimTreeToggle, {desc="Toggle Nvimtree"})
                vim.keymap.set('n', "<leader>ef", vim.cmd.NvimTreeFocus, {desc="Focus Nvimtree"})
                require("nvim-tree").setup {
                        sort_by = "case_sensitive",
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
                }
        end
}
