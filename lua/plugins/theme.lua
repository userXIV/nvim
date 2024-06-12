return{
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme "everforest"

            require("everforest").setup({
                background = "hard",
            })
        end
    },
}
