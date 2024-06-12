vim.g.mapleader = " "

vim.opt.signcolumn = "yes"

--move selected txt
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--movement
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "nzzzv")
vim.keymap.set("n", "m", "%")

--pane nav
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-k>", "<C-w>k")

--splits
vim.keymap.set("n", "<leader>ss", "<C-w>s", {silent = true})
vim.keymap.set("n", "<leader>sv", "<C-w>v", {silent = true})
vim.keymap.set("n", "<leader>sc", "<C-w>c", {silent = true})
vim.keymap.set("n", "<leader>so", "<C-w>o", {silent = true})

vim.keymap.set("n", "<leader>sl", "<C-w>L", {silent = true})
vim.keymap.set("n", "<leader>sh", "<C-w>H", {silent = true})
vim.keymap.set("n", "<leader>sk", "<C-w>K", {silent = true})
vim.keymap.set("n", "<leader>sj", "<C-w>J", {silent = true})

vim.keymap.set("n", "<leader>sx", "<C-w>x", {silent = true})
vim.keymap.set("n", "<leader>sr", "<C-w>r", {silent = true})
vim.keymap.set("n", "<leader>sw", "<C-w>w", {silent = true})

--copypaste
vim.keymap.set("v", "<leader>p", [["_dP"]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d"]])
vim.keymap.set({"n", "v"}, "<leader>D", [["_D"]])
vim.keymap.set({"n", "v"}, "<leader>dd", [["_dd"]])
