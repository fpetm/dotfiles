local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { 'nvim-telescope/telescope.nvim', tag = '0.1.2', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'sainnhe/gruvbox-material', priority = 1000, config = function() vim.cmd [[colorscheme gruvbox-material]]; end, },
  { 'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
  { 'nvim-treesitter/playground' },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  },
  { 'nvim-lualine/lualine.nvim' , dependencies = { 'nvim-tree/nvim-web-devicons' } },
  { 'ThePrimeagen/harpoon' },
  { 'nvim-tree/nvim-tree.lua' },
  { 'folke/zen-mode.nvim' },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  },
  { 'tpope/vim-fugitive' },
})
