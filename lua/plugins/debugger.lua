return {
    {
            "mfussenegger/nvim-dap-python",
        dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
        },
        config = function()

            local dap = require("dap")
            local dapui = require("dapui")

            require("dapui").setup()
            require("dap-python").setup()

            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end

            vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { silent = true })
            vim.keymap.set("n", "<Leader>dc", dap.continue, { silent = true })
        end,
    },
}
