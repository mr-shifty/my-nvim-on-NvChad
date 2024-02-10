local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
-- local capabilities = config.capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"}
})

-- lspconfig.sqls.setup{}

-- lspconfig.sqls.setup{
--     on_attach = function(client, bufnr)
--         require('sqls').on_attach(client, bufnr)
--     end
-- }
