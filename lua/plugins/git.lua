return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { silent = true })
        end,
    },
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git, {silent = true})
            vim.keymap.set("n", "<leader>gf", "<cmd>diffget //2<CR>", {silent = true})
            vim.keymap.set("n", "<leader>gj", "<cmd>diffget //3<CR>", {silent = true})
            vim.keymap.set("n", "<leader>gP", ":Git push")
            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {silent = true})
        end,
    },
}
