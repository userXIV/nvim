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
            vim.keymap.set("n", "<Leader>gs", vim.cmd.Git)
            vim.keymap.set("n", "gf", "<cmd>diffget //2<CR>")
            vim.keymap.set("n", "gj", "<cmd>diffget //3<CR>")
        end,
    },
}
