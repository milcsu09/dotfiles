vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.clipboard:append("unnamedplus")

vim.keymap.set('v', 'p', '"_dP', { noremap = true, silent = true })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.wo.number = true
vim.wo.relativenumber = true

vim.api.nvim_create_autocmd("InsertEnter", {
  pattern = "*",
  callback = function()
    vim.wo.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    vim.wo.relativenumber = true
  end,
})

vim.opt.termguicolors = true
vim.opt.mouse = 'a'

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.list = true
vim.opt.listchars = { trail = '·', tab = '»·' }

vim.opt.scrolloff = 4
vim.opt.colorcolumn = "80"
vim.opt.updatetime = 50
