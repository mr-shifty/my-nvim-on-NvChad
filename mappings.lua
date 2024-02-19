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
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap').continue() -- работа с тестами - ('dap-python').test_method() 
      end
    }
  }
}


return M
