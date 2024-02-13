local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
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
