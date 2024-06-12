return{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            enable_git_status = true,
            enable_diagnostics = true,
            open_files_do_not_replace_types = {"terminal", "trouble", "qf"},
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_hidden = false,
                },
            },
        })
        vim.keymap.set('n', '<C-t>', ':Neotree filesystem reveal toggle left<CR><C-w>=', {silent = true})
    end
}
