return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = { transparent_mode = true },
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd.colorscheme("gruvbox")
    end,
  },

  {
    "nvim-mini/mini.icons",
    opts = {},
    config = function(_, opts)
      local icons = require("mini.icons")
      icons.setup(opts)
      icons.mock_nvim_web_devicons()
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-mini/mini.icons" },
    init = function() vim.o.showmode = false end,
    opts = {},
  },

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
    },
    keys = {
      { "<leader>n", function() Snacks.notifier.show_history() end, desc = "Notification history" },
    },
  },
}
