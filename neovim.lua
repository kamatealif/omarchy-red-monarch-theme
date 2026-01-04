return {
  -- 1. Load your theme from your GitHub
  {
    "kamatealif/monarch.nvim", 
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme monarch]])
    end,
  },

  -- 2. Force Lualine to use your custom Monarch colors
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local monarch = require("monarch")
      opts.options.theme = monarch.lualine_theme
    end,
  },
}