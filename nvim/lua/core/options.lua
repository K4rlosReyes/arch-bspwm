local opt = vim.opt

opt.guicursor = ""

opt.swapfile = false
opt.showmode = false

opt.clipboard = "unnamedplus"
opt.cursorline = false

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-- opt.fillchars = {eob = " "}
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.ruler = false

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

opt.updatetime = 250

opt.whichwrap:append "<>[]hl"

vim.g.python3_host_prog = "~/Apps/miniconda3/envs/torch/bin/python"
vim.g.python3 = "~/Apps/miniconda3/envs/torch/bin/python"

vim.g.mapleader = " "
