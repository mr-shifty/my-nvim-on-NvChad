---@type ChadrcConfig

local highlights = require "custom.highlights"
local M = {}


M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "penumbra_light" },
  transparency = true,
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    overriden_modules = nil,
  },

  -- Переопределение цветов
  hl_override = highlights.override,
  hl_add = highlights.add,

}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"


return M

