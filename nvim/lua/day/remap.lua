local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("v", "K", ":m '<-2<CR>gv-gv")
keymap("v", "J", ":m '>+1<CR>gv=gv")

keymap("n", "J", "mzJ`z")

keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

keymap("x", "<leader>p", '"_DP')

keymap("n", "<leader>y", '"+y')
keymap("v", "<leader>y", '"+y')
keymap("n", "<leader>Y", '"+Y')

-- Disable arrow keys for movement
keymap("n", "<Up>", "<Nop>", { noremap = true, silent = true })
keymap("n", "<Down>", "<Nop>", { noremap = true, silent = true })
keymap("n", "<Left>", "<Nop>", { noremap = true, silent = true })
keymap("n", "<Right>", "<Nop>", { noremap = true, silent = true })

-- Formatter

-- Nvim Tree
keymap("n", "<leader>e", ":NvimTreeOpen<cr>", opts)
keymap("n", "C", ":NvimTreeRefresh<cr>", opts)
keymap("n", "<leader>rf", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- keymap('n', '<C-f>', ':NvimTreeFocus<cr>', opts)
