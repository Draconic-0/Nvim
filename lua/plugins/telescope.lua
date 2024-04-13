return {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        event = "VeryLazy",
        dependencies = { 'nvim-lua/plenary.nvim' },
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
        keys = {
        vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {desc="Telescope find files"}),
        vim.keymap.set('n', '<leader>fa', '<cmd>Telescope<CR>', {desc="Telescope"}),
        vim.keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>', {desc="Telescope live grep"}),
        vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', {desc="Telescope buffers"}),
        vim.keymap.set('n', '<leader>fm', '<cmd>Telescope man_pages<CR>', {desc="Telescope man pages"}),
        vim.keymap.set('n', '<leader>fg', '<cmd>Telescope git_bcommits<CR>', {desc="Telescope man pages"}),
        }
}
