return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = true, replace_netrw = false },
      picker = { enabled = true },
      words = { enabled = true },
    },
    keys = {
      { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart find files" },
      { "<leader>ff", function() Snacks.picker.files() end, desc = "Find files" },
      { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep" },
      { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
      { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent files" },
      { "<leader>fh", function() Snacks.picker.help() end, desc = "Help pages" },
      { "<leader>fd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
      { "<leader>e", function() Snacks.explorer() end, desc = "File explorer" },

      { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Go to definition" },
      { "grr", function() Snacks.picker.lsp_references() end, desc = "References" },
      { "gri", function() Snacks.picker.lsp_implementations() end, desc = "Go to implementation" },
      { "grt", function() Snacks.picker.lsp_type_definitions() end, desc = "Go to type definition" },
      { "gO", function() Snacks.picker.lsp_symbols() end, desc = "Document symbols" },
      { "]]", function() Snacks.words.jump(vim.v.count1) end, desc = "Next reference" },
      { "[[", function() Snacks.words.jump(-vim.v.count1) end, desc = "Previous reference" },
    },
  },

  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {},
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    },
  },

  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },
}
