require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'onedarkpro',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
