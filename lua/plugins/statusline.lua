return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        config = function()
            local colors = {
                bg = "#333333",
                bg_dark = "#2b2b2b",
                fg = "#c0caf5",
                gray = "#565f89",
                blue = "#7aa2f7",
                green = "#9ece6a",
                yellow = "#e0af68",
                red = "#f7768e",
                purple = "#bb9af7",
            }

            local theme = {
                normal = {
                    a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
                    b = { fg = colors.fg, bg = colors.bg_dark },
                    c = { fg = colors.fg, bg = colors.bg },
                },
                insert = {
                    a = { fg = colors.bg, bg = colors.green, gui = "bold" },
                    b = { fg = colors.fg, bg = colors.bg_dark },
                    c = { fg = colors.fg, bg = colors.bg },
                },
                visual = {
                    a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
                    b = { fg = colors.fg, bg = colors.bg_dark },
                    c = { fg = colors.fg, bg = colors.bg },
                },
                replace = {
                    a = { fg = colors.bg, bg = colors.red, gui = "bold" },
                    b = { fg = colors.fg, bg = colors.bg_dark },
                    c = { fg = colors.fg, bg = colors.bg },
                },
                command = {
                    a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
                    b = { fg = colors.fg, bg = colors.bg_dark },
                    c = { fg = colors.fg, bg = colors.bg },
                },
                inactive = {
                    a = { fg = colors.gray, bg = colors.bg },
                    b = { fg = colors.gray, bg = colors.bg },
                    c = { fg = colors.gray, bg = colors.bg },
                },
            }

            require("lualine").setup({
                options = {
                    theme = theme,
                    globalstatus = true,
                    component_separators = "",
                    section_separators = "",
                },

                sections = {
                    lualine_a = { "mode" },

                    lualine_b = {
                        "branch",
                        "diff",
                        {
                            "diagnostics",
                            sources = { "nvim_diagnostic" },
                        },
                    },

                    lualine_c = {
                        {
                            "filename",
                            path = 1,
                            symbols = {
                                modified = " [+]",
                                readonly = " [RO]",
                                unnamed = "[No Name]",
                            },
                        },
                    },

                    lualine_x = {
                        "encoding",
                        "fileformat",
                        "filetype",
                    },

                    lualine_y = { "progress" },
                    lualine_z = { "location" },
                },
            })
        end,
    },
}
