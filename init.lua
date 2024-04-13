local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
})
end
vim.opt.rtp:prepend(lazypath)
require('lua.settings.globals')
require('lua.settings.options')
local opts = {
	defaults = {
		lazy = true,
	},
	install = {
                colorscheme = { "catppuccin" }
        },
        rtp = {
        disabled_plugins = {
                "gzip",
                "matchit",
                "matchparen",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
                }
        },
        change_detection = {
                notify = true,
        },
}
			
require('lazy').setup('plugins', opts)
require('lua.settings.keymaps')
