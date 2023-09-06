require "nicovim.options"
require "nicovim.keymaps"
require "nicovim.plugins"
require "nicovim.colorscheme"
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end
require "nicovim.cmp"
require "nicovim.lsp"
require "nicovim.telescope"
require "nicovim.treesitter"
require "nicovim.autopairs"
require "nicovim.comment"
require "nicovim.gitsigns"
require "nicovim.bufferline"
require "nicovim.lualine"
require'nvim-tree'.setup {}
require "nicovim.toggleterm"
require "nicovim.deadcolumn"
