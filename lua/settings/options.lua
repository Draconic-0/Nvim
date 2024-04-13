vim.opt.tabstop = 8
vim.opt.shiftwidth = 8
vim.opt.softtabstop = 8
vim.opt.expandtab = true
vim.opt.cindent = true
vim.opt.wrap = false

-- file browser
vim.opt.browsedir = "buffer"

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- looks
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "auto"
vim.opt.cmdheight = 1
vim.opt.cmdwinheight = 10
vim.opt.scrolloff = 10
vim.opt.completeopt = "menuone,noinsert,noselect,menu"

-- behavior
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.autochdir = false
vim.opt.iskeyword = "a-z,A-Z,48-57,_,.,-,>"
vim.opt.encoding = "UTF-8"
vim.opt.imdisable = false

