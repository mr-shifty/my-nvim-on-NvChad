---@type ChadrcConfig

local M = {}


M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "penumbra_light" },
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    overriden_modules = nil,
  },
}

M.plugins = "custom.plugins"

return M


