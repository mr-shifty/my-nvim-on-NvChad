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
  }
return plugins
