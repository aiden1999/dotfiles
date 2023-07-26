vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false


local lazy = {}

function lazy.install(path)
	if not vim.loop.fs_stat(path) then
		print ('Installing lazy.nvim...')
		vim.fn.system({
			'git',
			'clone',
			'--filter=blob:none',
			'https://github.com/folke/lazy.nvim.git',
			'--branch=stable',
			path,
		})
	end
end

function lazy.setup(plugins)
	lazy.install(lazy.path)

	vim.opt.rtp:prepend(lazy.path)
	require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
	{'shaunsingh/nord.nvim'},
	{'nvim-lualine/lualine.nvim'},
	{'nvim-tree/nvim-web-devicons'},
	{'akinsho/bufferline.nvim'},
})

-- nord theme
vim.cmd.colorscheme('nord')
vim.g.nord_disable_background = true
require('nord').set()

-- lua line (status line)
require('lualine').setup()

-- web devicons
require'nvim-web-devicons'.setup {
	color_icons = true;
}

-- bufferline (tabs)
vim.opt.termguicolors = true
