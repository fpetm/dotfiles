local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins, opts)

require("lazy").setup({
  "folke/which-key.nvim",
--{ "folke/neoconf.nvim", cmd = "Neoconf" },
--"folke/neodev.nvim",
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    "nvim-treesitter/playground",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",

--Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

    "nvim-lualine/lualine.nvim",
    "ellisonleao/gruvbox.nvim",
    "kyazdani42/nvim-web-devicons",
    "preservim/nerdtree",
    "ryanoasis/vim-devicons",
    "tiagofumo/vim-nerdtree-syntax-highlight",
    "Xuyuanp/nerdtree-git-plugin",
    "kyazdani42/nvim-tree.lua",
    "tpope/vim-sensible",
    "tpope/vim-surround",
    "mhinz/vim-signify",

    "jiangmiao/auto-pairs",
    "alvan/vim-closetag",
    "tpope/vim-abolish",
    "junegunn/vim-easy-align",
    "scrooloose/nerdcommenter",
    "Yggdroot/indentLine",
    "chrisbra/Colorizer",
    "KabbAmine/vCoolor.vim",
    "dkarter/bullets.vim",
---Plug 'wellle/context.vim'
    "antoinemadec/FixCursorHold.nvim",
---Plug 'psf/black', { 'branch': 'stable' }
    "heavenshell/vim-pydocstring",
    "junegunn/rainbow_parentheses.vim",
    "junegunn/limelight.vim",
    "junegunn/vim-journal",
    "shaunsingh/nord.nvim",
})

--require("plugins.lspconfig-config")
--require("plugins.lualine-config")
--require("plugins.nvim-cmp-config")
--require("plugins.telescope-config")
--require("plugins.treesitter-config")
