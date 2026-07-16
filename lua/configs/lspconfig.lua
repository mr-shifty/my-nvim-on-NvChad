local base = require "nvchad.configs.lspconfig"
local on_init = base.on_init
local on_attach = base.on_attach
local capabilities = base.capabilities

-- BASH
vim.lsp.config("bashls", {
  capabilities = capabilities,
  on_init = on_init,
  on_attach = on_attach,
  filetypes = { "sh", "bash" },
})

-- PYRIGHT
vim.lsp.config("pyright", {
  capabilities = capabilities,
  on_init = on_init,
  filetypes = { "python" },
})

-- YAML
vim.lsp.config("yaml-language-server", {
  capabilities = capabilities,
  on_init = on_init,
  filetypes = { "yaml", "yml" },
})

local lsp_servers = { "bashls", "pyright", "yaml-language-server" }

for _, value in ipairs(lsp_servers) do
  vim.lsp.enable(value)
end
