syntax on

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-treesitter/playground'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-signify'
"""Plug 'jiangmiao/auto-pairs'
"""Plug 'alvan/vim-closetag'
"""Plug 'tpope/vim-abolish'
"""Plug 'junegunn/vim-easy-align'
"""Plug 'scrooloose/nerdcommenter'
"""Plug 'Yggdroot/indentLine'
"""Plug 'chrisbra/Colorizer'
"""Plug 'KabbAmine/vCoolor.vim'
"""Plug 'dkarter/bullets.vim'
"""Plug 'wellle/context.vim'
"""Plug 'antoinemadec/FixCursorHold.nvim'
"""Plug 'psf/black', { 'branch': 'stable' }
"""Plug 'heavenshell/vim-pydocstring'
"""Plug 'junegunn/rainbow_parentheses.vim'
"""Plug 'junegunn/limelight.vim'
"""Plug 'junegunn/vim-journal'
Plug 'shaunsingh/nord.nvim'

call plug#end()

set nocompatible
set showmatch
set ignorecase
set mouse=v
set mouse=a
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list
set cc=0
filetype plugin indent on
set clipboard=unnamedplus
filetype plugin on
set ttyfast
set noswapfile
set backupdir=~/.cache/vim
colorscheme gruvbox

lua << EOF
servers = {
    'pyright',
    --'tsserver', -- uncomment for typescript. See https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md for other language servers
}
require("treesitter-config")
require("lualine-config")
require("lspconfig-config")
require("nvim-cmp-config")
require("telescope-config")
EOF
