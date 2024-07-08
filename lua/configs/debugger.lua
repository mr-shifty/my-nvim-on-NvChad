

{
  "mfussenegger/nvim-dap",
  config = function()
    -- require "configs.debugger"
    -- vim.fn.sign_define("DapBreakpoint", { text = "🐞", texthl = "", linehl = "", numhl = "" })
    -- vim.fn.sign_define("DapStopped", { text = "▶️", texthl = "", linehl = "", numhl = "" })
    -- require("core.utils").load_mappings "dap"

    -- Настройка dap
    local dap = require "dap"
    dap.adapters.python = {
      type = "executable",
      command = "python",
      args = { "-m", "debugpy.adapter" },
    }
    dap.configurations.python = {
      {
        type = "python",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        pythonPath = function()
          return "/home/pavel/.pyenv/shims/python"
        end,
      },
    }
  end,
},
