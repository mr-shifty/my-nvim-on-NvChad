local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "python" },
    opts = function()
        return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "black",
        "pyright",
        "pylint",
        "isort",
        "ruff",
        "flake8"
        -- "sqls",
        -- "mypy",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
    },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      require "custom.configs.nvimtree"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
    local cmp = require "cmp"

    cmp.setup {
        completion = {
          autocomplete = false
        },
      }
    end
  }
}
return plugins
