-- Indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- Search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Appearance
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.termguicolors = true

-- Behavior
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true
vim.opt.backspace = "indent,eol,start"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.autochdir = false
vim.opt.modifiable = true
vim.opt.mouse:append("a")
vim.opt.clipboard:append("unnamedplus")
