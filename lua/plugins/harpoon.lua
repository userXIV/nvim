return{
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
        local harpoon = require("harpoon")
        harpoon:setup({
            settings = {
                save_on_toggle = true
            }
        })

        vim.keymap.set("n", "<leader><leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader><leader>s", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader><leader>j", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader><leader>k", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader><leader>l", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader><leader>;", function() harpoon:list():select(4) end)

    end
}
