return {
    {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function ()
        local builtin = require('telescope.builtin')

        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = "move_selection_next",
                        ["<C-k>"] = "move_selection_previous",
                    },
                },
            },
        })

        vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>st', builtin.current_buffer_fuzzy_find, {})
    end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
        require("telescope").setup({
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {
                    }
                }
            }
        })

        require("telescope").load_extension("ui-select")
        end
    }
}
