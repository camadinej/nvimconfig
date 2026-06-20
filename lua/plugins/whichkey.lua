return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",

        opts = {
            preset = "modern",
            delay = 500,

            icons = {
                mappings = false,
            },

            spec = {
                { "<leader>f", group = "Find" },
                { "<leader>h", group = "Git hunks" },
                { "<leader>l", group = "LSP" },
                { "<leader>n", group = "No highlight" },
                { "<leader>b", group = "Buffers" },
            },
        },

        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer local keymaps",
            },
        },
    },
}
