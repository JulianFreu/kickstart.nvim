return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- Change the background of lualine_c section for normal mode
    --require('lualine').setup {}
    local custom = require 'lualine.themes.auto'
    custom.normal.a.bg = '#7E9CD8'
    custom.normal.a.fg = '#121212'
    custom.normal.a.gui = 'bold'
    custom.normal.b.bg = '#121212'
    custom.normal.b.fg = '#7E9CD8'
    custom.normal.c.bg = '#323232'
    custom.insert.c.bg = '#323232'
    custom.visual.c.bg = '#323232'
    custom.replace.c.bg = '#323232'
    custom.command.c.bg = '#323232'
    custom.inactive.c.bg = '#323232'
    custom.normal.c.fg = '#DCD7BA'
    custom.insert.c.fg = '#DCD7BA'
    custom.visual.c.fg = '#DCD7BA'
    custom.replace.c.fg = '#DCD7BA'
    custom.command.c.fg = '#DCD7BA'
    custom.inactive.c.fg = '#DCD7BA'
    require('lualine').setup {
      options = { theme = custom },
    }
  end,
}
