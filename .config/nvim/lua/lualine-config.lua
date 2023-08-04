require('lualine').setup {
  options = {
    theme = 'gruvbox',
    icons_enabled = 'true',
    --component_separators = { left = '', right = ''},
    component_separators = { left = '╲', right = '╱' },
    --section_separators = { left = '', right = ''},
    section_separators = { left = '', right = '' },
    disabled_filetypes = { 'NvimTree' },
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat'},
    lualine_y = {'filetype'},
    lualine_z = {{'os.date("%-I:%M %p")', color = {gui='NONE'}}}
  },
}
