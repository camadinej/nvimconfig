return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        event = {"BufReadPost", "BufNewFile"},
        config = function()
            require("nvim-treesitter.install").compilers = {"zig", "clang"}
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "lua",
                    "vim",
                    "vimdoc",
                    "query",
                    "python",
                    "rust",
                    "c_sharp",
                    "json",
                    "markdown",
                    "markdown_inline",
                    "bash",
                    "html",
                    "css",
                },

                highlight = {
                    enable = true,
                },
                indent = {
                    enable = true,
                },
            })
        end,
    },
}
