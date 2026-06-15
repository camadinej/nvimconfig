return {
    {
        "nvim-telescope/telescope.nvim",
        version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",        
        },
        keys = {
            {"<leader>ff", "<cmd>Telescope find_files<CR>", desc = "find files"},
            {"<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "live grep"},
            {"<leader>fb", "<cmd>Telescope buffers<CR>", desc = "find buffers"},
            {"<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "help tags"},
        },
        
        config = function()
                require("telescope").setup({})
        end,
    },

}
