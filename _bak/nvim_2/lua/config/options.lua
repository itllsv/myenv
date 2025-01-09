vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.breakindent = true
vim.opt.signcolumn = "yes"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 10

vim.opt.undofile = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.g.have_nerd_font = true

vim.opt.mouse = "a"

vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
