local M = {}

---@type Base46HLGroupsList
M.override = {
  ["@comment"] = {
    italic = true,
    fg = '#9DC2B9'
  },
  Constant = {
    fg = "green"
  },
}

---@type HLTable
M.add = {
  NvimTreeExecFile = {
    -- link = 'Normal',
    italic = true,
  },
}

return M
