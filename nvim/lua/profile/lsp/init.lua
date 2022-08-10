local ok, _ = pcall(require, "lspconfig")
if not ok then
  return
end

require 'profile.lsp.mason'
