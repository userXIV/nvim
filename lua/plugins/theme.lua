return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            require("ibl").setup()
        end,
    },
    --Themes
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000,
        config = function()
            require("everforest").setup({
                background = "hard",
                dim_inactive_windows = true,
            })
            -- vim.cmd.colorscheme "everforest"
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "storm",
                comments = {italic = true},
                dim_inactive = true,
            })
            -- vim.cmd.colorscheme "tokyonight"
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                dimInactive = true,
                commentStyle = {italic = true}
            })
            -- vim.cmd.colorscheme "kanagawa"
        end,
    },
    {
        "savq/melange-nvim",
        config = function()
            -- vim.cmd.colorscheme "melange"
        end,
    },
    {
        "ribru17/bamboo.nvim",
        lazy = false,
        priority = 1000,
        config = function ()
            require("bamboo").setup({
                style = "multiplex",
                dim_inactive = true,
                code_style = {
                    comments = {italic = true}
                },
                highlights = {
                    ['@comment'] = {fg = "$grey"},
                },
            })
            vim.cmd.colorscheme "bamboo"
        end
    },
    {
        "lunarvim/Onedarker.nvim",
        config = function()
            -- vim.cmd.colorscheme "onedarker"
        end,
    },
    {
        "comfysage/evergarden",
        config = function()
            require("evergarden").setup({
                contrast_dark = "medium",
                style = {
                    comment = {italic = true},
                },
            })
            -- vim.cmd.colorscheme "evergarden"
        end,
    },
    {
        "sho-87/kanagawa-paper.nvim",
        lazy = false,
        priority = 1000,
        config = function ()
            require("kanagawa-paper").setup({
                dimInactive = true,
                commentStyle = { italic = true},
            })
            -- vim.cmd.colorscheme "kanagawa-paper"
        end,
    },
}
