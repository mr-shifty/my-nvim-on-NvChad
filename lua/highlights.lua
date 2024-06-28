local M = {}

---@type Base46HLGroupsList
M.override = {
  ["@comment"] = {
    italic = true,
    fg = '#9DC2B9'
  },
}

---@type HLTable
M.add = {
  NvimTreeExecFile = {
    -- link = 'Normal',
    italic = true,
  },
  NvimTreeGitStagedIcon = {
    fg = "green"
  },
  NvimTreeGitMergeIcon = {
    fg = "#9C02A7",
  },
}

return M
