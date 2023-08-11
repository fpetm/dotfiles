require('lualine').setup {
  options = {
    theme = 'auto',
    icons_enabled = 'true',
    component_separators = { left = '╲', right = '╱' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { 'NERDTree' },
    always_divide_middle = true,
    globalstatus = false,
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
	statusline = 1000,
	tabline = 1000,
	winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat'},
    lualine_y = {'filetype'},
    lualine_z = {{'os.date("%-I:%M %p")', color = {gui='NONE'}}}
  },
  tabline = {},
  winbar = {},
  inctive_winbar = {},
  extensions = {},
}
