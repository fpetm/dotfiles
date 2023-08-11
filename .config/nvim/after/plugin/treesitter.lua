require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "c", "lua", "vim", "vimdoc", "query" },
  auto_install = true,
  highlight = {
    enable = true,
  }
}
