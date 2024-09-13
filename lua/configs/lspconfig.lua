local base = require "nvchad.configs.lspconfig"
local on_init = base.on_init
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require "lspconfig"
-- local servers = { "html", "cssls" }

lspconfig.pyright.setup {
  -- on_attach = on_attach, -- вылазит бесячее окно с подсказками
  capabilities = capabilities,
  on_init = on_init,
  filetypes = { "python" },
}

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = true
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

-- EXAMPLE

-- lsps with default config
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = on_attach,
--     on_init = on_init,
--     capabilities = capabilities,
--   }
-- end

-- -- typescript
-- lspconfig.tsserver.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
-- }
