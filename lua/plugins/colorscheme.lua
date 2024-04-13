return { 
        {
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
        {
        "catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
        opts = {
                term_colors = true,
                transparent_background = false,
                styles = {
                        comments = {},
                        conditionals = {},
                        loops = {},
                        functions = {},
                        keywords = {},
                        strings = {},
                        variables = {},
                        numbers = {},
                        booleans = {},
                        properties = {},
                        types = {},
                },
                color_overrides = {
                        mocha = {
                                base = "#030203",
                                mantle = "#070607",
                                crust = "#060506",
                        },
                },
                integrations = {
                        telescope = {
                                enabled = true,
                                style = "nvchad",
                        },
                        dropbar = {
                                enabled = true,
                                color_mode = true,
                        },
                },
	},
        },
}
