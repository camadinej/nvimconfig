return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,

    opts = {
      style = "storm",

      on_colors = function(colors)
        colors.bg = "#333333"
        colors.bg_dark = "#2b2b2b"
        colors.bg_float = "#333333"
        colors.bg_popup = "#333333"
        colors.bg_sidebar = "#333333"
        colors.bg_statusline = "#2b2b2b"
        colors.bg_highlight = "#3a3a3a"
      end,

      on_highlights = function(hl, colors)
        hl.Normal = { bg = colors.bg }
        hl.NormalNC = { bg = colors.bg }
        hl.SignColumn = { bg = colors.bg }
        hl.LineNr = { bg = colors.bg }
        hl.CursorLineNr = { bg = colors.bg }
      end,
    },

    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight-storm")
    end,
  },
} 

