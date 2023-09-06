local fn = vim.fn

-- Automatic packer install
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer, close and reopen Nicovim...")
    vim.cmd([[pacadd packer.nvim]])
end

-- Reload nvim when plugins.lua is saved
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

-- use protected call
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- packer uses popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

-- install plugins here
return packer.startup(function(use)
    -- plugins
    use "wbthomason/packer.nvim"  -- packer manages itself
    use "nvim-lua/popup.nvim"  -- popup api
    use "nvim-lua/plenary.nvim"  -- used for other plugins
    use "windwp/nvim-autopairs"  -- auto pair brackets etc
    use "numToStr/Comment.nvim"  -- commenting
    use "nvim-tree/nvim-web-devicons"  -- icons
    use "nvim-tree/nvim-tree.lua"  -- file explorer
    use "akinsho/bufferline.nvim"  -- bufferline
    use "moll/vim-bbye"
    use "nvim-lualine/lualine.nvim"
    use "akinsho/toggleterm.nvim"  -- terminal
    use "shaunsingh/nord.nvim"  -- colourscheme
    use "hrsh7th/nvim-cmp"  -- completion plugin
    use "hrsh7th/cmp-buffer"  -- buffer completions
    use "hrsh7th/cmp-path"  -- path completions
    use "hrsh7th/cmp-cmdline"  -- commmand line completions
    use "saadparwaiz1/cmp_luasnip"  -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "L3MON4D3/LuaSnip"  -- snippet engine
    use "rafamadriz/friendly-snippets"  -- snippet collection
    use "neovim/nvim-lspconfig"  -- enable LSP
    use "lewis6991/gitsigns.nvim"  -- git
    use "hrsh7th/cmp-nvim-lua"
    use "williamboman/mason.nvim"  -- language server installer
    use "williamboman/mason-lspconfig.nvim"
    use "nvimtools/none-ls.nvim"  -- LSP diagnostics and code actions
    use "tamago324/nlsp-settings.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    -- treesitter (cool syntax highlighting)
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "p00f/nvim-ts-rainbow"
    use "nvim-treesitter/playground"
    use "JoosepAlviste/nvim-ts-context-commentstring"
    use "Bekaboo/deadcolumn.nvim"
    -- THIS GOES AT THE END
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
