-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "tsserver", "rust_analyzer", "terraformls", "yamlls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- Azure DevOps Pipeline
-- lspconfig.azure_pipelines_ls.setup {
--  settings = {
--       yaml = {
--           schemas = {
--               ["https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json"] = {
--                   "/azure-pipeline*.y*l",
--                   "AzurePipeline.y*ml",
--                   "/*.azure*",
--                   "Azure-Pipelines/**/*.y*l",
--                   "Pipelines/*.y*l",
--               },
--           },
--       },
--   },
-- }
