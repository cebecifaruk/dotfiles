-- Vim options
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "

-- Install lazy.nvim package manager

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

-- Define required plugins

local plugins={
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "nvim-telescope/telescope.nvim", tag = '0.1.5', dependencies = {'nvim-lua/plenary.nvim'}},
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x", dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim", "3rd/image.nvim"}},
  { "romgrk/barbar.nvim", 
    dependencies = {'lewis6991/gitsigns.nvim', 'nvim-tree/nvim-web-devicons'},
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  { "github/copilot.vim", tag = "v1.25.0" },
}

local opts={}

-- Setup required plugins

require("lazy").setup(plugins, opts)

-- Telescope

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Neotree

vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal left<CR>', {})

-- Treesitter

require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "c", "cpp", "make",
    "dart",
    "gitattributes", "gitignore",
    "go", "gomod", "gowork", 
    "haskell",
    "html", "css", "javascript", "typescript", "jq", "json", "json5", "php", 
    "lua",
    "rust"
  },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },  
})

-- Setup plugins

require("catppuccin").setup()

vim.cmd.colorscheme "catppuccin"
