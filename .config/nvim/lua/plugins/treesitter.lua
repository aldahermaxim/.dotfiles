return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash",
      "javascript",
      "json",
      "kdl",
      "lua",
      "markdown",
      "markdown_inline",
      "query",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
    },
  },
  config = function(_, opts) require("nvim-treesitter").install(opts.ensure_installed) end,
}
