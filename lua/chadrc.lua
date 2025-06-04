-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}
local highlights = require "highlights"

-- Переопределение цветов и тем

M.base46 = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "penumbra_light" },
  -- transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.ui = {
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    overriden_modules = nil,
  },
}

M.mason = {
  pkgs = {

    -- lua
    ------------------
    "lua-language-server",

    -- python
    ------------------
    "pyright",
    "black",
    "isort",
    "ruff",
    -- "flake8",
    -- "mypy",

    "debugpy",

    -- C++
    -------------------
    -- "clangd",
    -- "clang-format",
    -- "codelldb", -- Дебаггер

    --other
    -------------------
    -- "sqls",
  },
}

return M
