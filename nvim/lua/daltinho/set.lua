vim.opt.nu = true

-- relative linanumebers
-- vim.opt.relativenumber = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4 
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Grava os undos de muuuito tempo
vim.opt.undodir = os.getenv("HOME") .."/vim/undodir"
vim.opt.undofile = true

-- Ao inves de colorir as buscas que deram match
-- colore ao colocar as letras, ate * funciona
vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.termguicolors = true


vim.opt.updatetime = 50

-- Pinta uma coluna de comprimento 80 ou dist 80 sla, lixo
--vim.opt.colorcolumn = "80"

-- LEADER KEY --> espaco
vim.g.mapleader = " "

-- n-v-i-c - it defines all modes in which the block cursor will be used.
-- n-> normal, v-> visual, i-> insert, c-> command
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"


