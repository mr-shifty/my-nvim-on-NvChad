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

    "debugpy",

    --other stuff
    -------------------
    -- "sqls",

  },
}

M.treesitter = {
  ensure_installed = { "lua", 'python', "sql", 'make', },
}

M.nvimtree = {

  renderer = {
    root_folder_label = function(path)
      return "" .. vim.fn.fnamemodify(path, ":pwd")
    end,
    -- root_folder_label = ":~:s?$?/..?",
    highlight_git = true,
    indent_markers = {
      enable = true,
    },
    icons = {
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
