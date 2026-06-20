return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        event = "VeryLazy",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        keys = {
            { "[b", "<cmd>BufferLineCyclePrev<CR>", desc = "Previous buffer" },
            { "]b", "<cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },

            { "<leader>bp", "<cmd>BufferLinePick<CR>", desc = "Pick buffer" },
            { "<leader>bd", "<cmd>bdelete<CR>", desc = "Delete buffer" },
            { "<leader>bD", "<cmd>BufferLinePickClose<CR>", desc = "Pick buffer to close" },
            { "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", desc = "Close other buffers" },
            { "<leader>bh", "<cmd>BufferLineCloseLeft<CR>", desc = "Close buffers to left" },
            { "<leader>bl", "<cmd>BufferLineCloseRight<CR>", desc = "Close buffers to right" },
        },

        config = function()
            require("bufferline").setup({
                options = {
                    mode = "buffers",

                    diagnostics = "nvim_lsp",

                    diagnostics_indicator = function(count, level)
                        local icon = level:match("error") and " " or " "
                        return " " .. icon .. count
                    end,

                    numbers = "ordinal",

                    separator_style = "thin",

                    show_buffer_close_icons = false,
                    show_close_icon = false,

                    always_show_bufferline = true,

                    offsets = {},
                },

                highlights = {
                    fill = {
                        bg = "#333333",
                    },

                    background = {
                        fg = "#565f89",
                        bg = "#333333",
                    },

                    buffer_selected = {
                        fg = "#c0caf5",
                        bg = "#333333",
                        bold = true,
                        italic = false,
                    },

                    separator = {
                        fg = "#2b2b2b",
                        bg = "#333333",
                    },

                    separator_selected = {
                        fg = "#2b2b2b",
                        bg = "#333333",
                    },

                    modified = {
                        fg = "#e0af68",
                        bg = "#333333",
                    },

                    modified_selected = {
                        fg = "#e0af68",
                        bg = "#333333",
                    },
                },
            })
        end,
    },
}
