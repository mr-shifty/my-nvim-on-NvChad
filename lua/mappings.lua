require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local M = {}

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

M.replace = {

  map(
    "n",
    "gR",
    "*:%s/<C-R>///gc<left><left><left>",
    { noremap = true, desc = "Замена во всём тексте" }
  ), -- Зависит от определения переменной
  map(
    "n",
    "gr",
    "gD:%s/<C-R>///gc<left><left><left>",
    { desc = "Замена с учетом определения", noremap = true }
  ),
}

-- Маппинг дебагера

M.dap = function()
  local dap = require "dap"
  map("n", "<F5>", function()
    dap.continue()
  end)
  map("n", "<F17>", function()
    dap.restart()
  end) -- Shift+F5
  map("n", "<F29>", function()
    dap.terminate()
  end) -- Ctrl+F5
  map("n", "<F9>", function()
    dap.toggle_breakpoint()
  end)
  map("n", "<F21>", function()
    dap.clear_breakpoints()
  end) -- Shift+F9
  map("n", "<F10>", function()
    dap.step_over()
  end)
  map("n", "<F22>", function()
    dap.goto_() -- Shift+F10
  end)
  map("n", "<F11>", function()
    dap.step_into()
  end)
  map("n", "<F12>", function()
    dap.step_out()
  end)
end

M.dap_python = function()
  local dap = require "dap-python"
  map("n", "<leader>dpr", function()
    dap.test_method() -- работа с тестами
  end, { desc = "Запуск тестов" })
end

return M
