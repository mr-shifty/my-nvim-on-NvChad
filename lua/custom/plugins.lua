local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python", "sql"},
    opts = function()
        return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "pyright",
        "pylint",
        -- "mypy",
        "isort",
        "ruff",
        "sqls",
        "flake8"
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
