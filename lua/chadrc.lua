-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}
local highlights = require "highlights"

M.ui = {
  theme = "ashes",

  theme_toggle = { "ashes", "penumbra_light" },
  transparency = true,
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    overriden_modules = nil,
  },
  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },

  -- Переопределение цветов

  hl_override = highlights.override,
  hl_add = highlights.add,
}

return M
