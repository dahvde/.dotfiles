vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.cmd([[highlight ColorColumn guibg=#212126]])
vim.opt.colorcolumn = "80"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.formatoptions:remove({ "c", "r", "o" })

-- Formatter.nvim
-- vim.cmd([[
-- augroup FormatAutogroup
--   autocmd!
--   autocmd BufWritePost * FormatWrite
-- augroup END
-- ]])

-- Neoformat
vim.cmd([[
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
]])

vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
