local M = {}


M.mason = {
  ensure_installed = {

    -- lua stuff
    ------------------
    "lua-language-server",

    -- python stuff
    ------------------
    "pyright",
    "black",
    "isort",
    "ruff",
    -- "flake8",
    -- "mypy",

    --other stuff
    -------------------
    -- "sqls",

  },
}

M.treesitter = {
  ensure_installed = { "lua", 'python', },
}

M.nvimtree = {

  renderer = {
    root_folder_label = true,
    highlight_git = true,
    indent_markers = {
      enable = true,
    },
    icons= {
      show = {
        git = true,
      }
    }
  },

  view = {
    adaptive_size = true,
  },

  git = {
    enable = true,
    ignore = false,
  }
}

M.cmp = {

  completion = {
    autocomplete = false
  },
}

return M

