return {
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },

        config = function()
            require("gitsigns").setup({
                on_attach = function(buffer)
                    local gitsigns = require("gitsigns")

                    local function map(mode, lhs, rhs, desc)
                        vim.keymap.set(mode, lhs, rhs, {
                            buffer = buffer,
                            desc = desc,
                        })
                    end

                    map("n", "]h", function()
                        gitsigns.nav_hunk("next")
                    end, "Next git hunk")

                    map("n", "[h", function()
                        gitsigns.nav_hunk("prev")
                    end, "Previous git hunk")

                    map("n", "<leader>hp", gitsigns.preview_hunk, "Preview git hunk")
                    map("n", "<leader>hs", gitsigns.stage_hunk, "Stage git hunk")
                    map("n", "<leader>hr", gitsigns.reset_hunk, "Reset git hunk")
                    map("n", "<leader>hu", gitsigns.undo_stage_hunk, "Undo stage hunk")
                    map("n", "<leader>hb", gitsigns.blame_line, "Git blame line")
                end,
            })
        end,
    },
}
