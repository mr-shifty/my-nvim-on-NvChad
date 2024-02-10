local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
  Constant = {
    fg = "green"
  }
}

---@type HLTable
M.add = {
  NvimTreeExecFile = {
    -- link = 'Normal',
    italic = true,
  },
}

return M
