local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap  -- shorten function name

-- map leader key to space
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- normal mode
keymap("n", "<C-h>", "<C-w>h", opts)  -- navigate window left 
keymap("n", "<C-j>", "<C-w>j", opts)  -- navigate window down
keymap("n", "<C-k>", "<C-w>k", opts)  -- navigate window up
keymap("n", "<C-l>", "<C-w>l", opts)  -- navigate window right
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)  -- open/close explorer
keymap("n", "<C-Up>", ":resize +2<CR>", opts)  -- increase window vertical size
keymap("n", "<C-Down>", ":resize -2<CR>", opts)  -- decrease window vertical size
keymap("n", "<C-Left>", ":resize -2<CR>", opts)  -- decrease window horizontal size
keymap("n", "<C-Right>", ":resize +2<CR>", opts)  -- increase window horizontal size
keymap("n", "<S-l>", ":bnext<CR>", opts)  -- go to next buffer
keymap("n", "<S-h>", ":bprevious<CR>", opts)  -- go to previous buffer
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)  -- move text down
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)  -- move text up
keymap("n", "<leader>f", "<cmd>Telescope find_files<CR>", opts)  -- search by file name
keymap("n", "<C-t>", "<cmd>Telescope live_grep<CR>", opts)  -- seach file contents and file name

-- visual mode
keymap("v", "<", "<gv", opts)  -- decrease indent
keymap("v", ">", ">gv", opts)  -- increase indent
keymap("v", "<A-j>", ":m .+1<CR>==", opts)  -- move text down
keymap("v", "<A-k>", ":m .-2<CR>==", opts)  -- move text up

-- visual block
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)  -- move text down
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)  -- move text up
keymap("x", "<A-k>", ":move <-2<CR>gv-gv", opts)

-- terminal 
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)  -- navigate terminal left
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)  -- navigate terminal down
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)  -- navigate terminal up
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)  -- navigate terminal right
