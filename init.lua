print("Welcome Back, Piece of Shit!!!")

vim.opt.guicursor = ""

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.opt.termguicolors = true

vim.opt.scrolloff = 10

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch= false

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>v", vim.cmd.Ex)
vim.keymap.set('v', '<Leader>y', '"+y', { noremap = true, silent = true })

require("config.lazy")

vim.cmd([[hi! Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[hi! NormalNC guibg=NONE ctermbg=NONE]])
  -- Add more highlighting groups as needed

-- Enable persistent undo
vim.opt.undodir = vim.fn.expand('~/.config/nvim/undo')  -- Set undo directory
vim.opt.undofile = true  -- Enable undo file support

