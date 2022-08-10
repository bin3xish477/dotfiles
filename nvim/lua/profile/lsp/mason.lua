local ok, mason = pcall(require, "mason")
if not ok then
  return
end

mason.setup {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    }
  }
}

local ok, lspconfig = pcall(require, "mason-lspconfig")
if not ok then
  return
end

lspconfig.setup {
}
