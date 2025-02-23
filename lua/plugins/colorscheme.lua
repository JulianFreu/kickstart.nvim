return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  --'rebelot/kanagawa.nvim',
  --'EdenEast/nightfox.nvim',
  'HoNamDuong/hybrid.nvim',
  priority = 1000,
  lazy = false,
  opts = {},
  init = function()
    --vim.cmd.colorscheme 'nordfox'
    vim.cmd.colorscheme 'hybrid'
    vim.cmd.hi 'Comment gui=none'
  end,
}
