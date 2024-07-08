local M = {}

M.replace = {
  -- Переименование переменных gr и gR

  -- For local replace (Пока не работает для python!)

  -- vim.api.nvim_set_keymap('n', 'gr', 'gd[{V%::s/<C-R>///gc<left><left><left>',
  -- { noremap = true }),

  -- For global replace

  --Замена любого текста
  vim.api.nvim_set_keymap('n', 'gR', '*:%s/<C-R>///gc<left><left><left>',
  { noremap = true }),

  -- Зависит от определения переменной
  vim.api.nvim_set_keymap('n', 'gr', 'gD:%s/<C-R>///gc<left><left><left>',
  { noremap = true }),
}

-- Маппинг дебагера

M.dap = {
  plugin = true,
  n = {
    ["<F5>"] = {"<cmd> DapContinue <CR>"},
    ["<F17>"] = {
      function()
        require("dap").restart()
      end
    }, -- Shift+F5
    ["<F29>"] = {"<cmd> DapTerminate <CR>"}, -- Ctrl+F5
    ["<F9>"] = {"<cmd> DapToggleBreakpoint <CR>"},
    ["<F21>"] = {
      function()
        require("dap").clear_breakpoints()
      end
    }, -- Shift+F9
    ["<F10>"] = {"<cmd> DapStepOver <CR>"},
    ["<F22>"] = {
      function()
        require("dap").goto_()
      end -- Shift+F10
    },
    ["<F11>"] = {"<cmd> DapStepInto <CR>"},
    ["<F12>"] = {"<cmd> DapStepOut <CR>"},
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method() -- работа с тестами 
      end
    }
  }
}


return M
