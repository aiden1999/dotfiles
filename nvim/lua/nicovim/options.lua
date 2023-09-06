local options = {
	backup = false,
	clipboard = "unnamedplus",  -- access system clipboard
	cmdheight = 1,  -- command line height
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,  -- `` is visible in markdown files
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,  -- for search patterns
	mouse = "a", 
	pumheight = 10, -- popup menu height
	showmode = true,
	showtabline = 2,  -- always show tabs
	smartcase = true,
	smartindent = true,
	splitbelow = true,  -- horizontal splits go below current window
	splitright = true,  -- vertical splits go right of current window
	swapfile = false,
	timeoutlen = 1000,
	termguicolors = true,
	undofile = true,  -- persistent undo
	updatetime = 300,  -- completion time
	writebackup = false,
	expandtab = true,  -- convert tabs to spaces
	shiftwidth = 4,
	tabstop = 4,
	cursorline = true,
	number = true,  -- numbered lines
	relativenumber = true,
	signcolumn = "yes",
	wrap = true,
	linebreak = true,
	scrolloff = 8,
	sidescroll = 8,
	guifont = "JetBrainsMono Nerd Font:14",
    colorcolumn = "79",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
