local ok, lspconfig = pcall(require, "lspconfig")
if not ok then
  return
end

require 'profile.lsp.mason'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local servers = {
  'gopls', 'rust_analyzer', 'pyright', 'marksman',
  'taplo', 'bashls', 'sumneko_lua',
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
  }
end
