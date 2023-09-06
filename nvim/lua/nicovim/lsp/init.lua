local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "nicovim.lsp.mason"
require("nicovim.lsp.handlers").setup()
require "nicovim.lsp.null-ls"
