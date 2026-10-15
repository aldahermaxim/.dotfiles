local servers = {
  lua_ls = "lua-language-server",
  ts_ls = "typescript-language-server",
}

return {
  {
    "mason-org/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonLog", "MasonUninstall", "MasonUninstallAll", "MasonUpdate" },
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = vim.tbl_values(servers),
    },
    config = function(_, opts)
      require("mason").setup(opts)

      local registry = require("mason-registry")
      local missing = vim
        .iter(opts.ensure_installed)
        :filter(function(name) return not registry.is_installed(name) end)
        :totable()
      if #missing == 0 then
        return
      end

      registry.refresh(function()
        for _, name in ipairs(missing) do
          local pkg = registry.get_package(name)
          if not pkg:is_installing() then
            pkg:install()
          end
        end
      end)
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason-org/mason.nvim", "saghen/blink.cmp" },
    config = function() vim.lsp.enable(vim.tbl_keys(servers)) end,
  },

  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        { path = "snacks.nvim", words = { "Snacks" } },
      },
    },
  },
}
