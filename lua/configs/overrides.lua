local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "bash",
    "yaml",
    "python",
    "sql",
    "make",
    "vim",
    "vimdoc",
    "cpp",
  },
}

M.nvimtree = {

  renderer = {
    -- root_folder_label = "true",
    -- root_folder_label = function(path)
    --   return "" .. vim.fn.fnamemodify(path, ":pwd")
    -- end,
    root_folder_label = ":~:s?$?/?",
    highlight_git = "name",
    indent_markers = {
      enable = true,
    },
    icons = {
      show = {
        git = true,
      },
    },
  },

  view = {
    adaptive_size = true,
  },

  git = {
    enable = true,
    ignore = false,
  },
}

-- M.cmp = {
--
--   completion = {
--     autocomplete = false,
--   },
-- }

return M
