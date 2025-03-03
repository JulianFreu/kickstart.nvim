-- Set <space> as the leader key
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true
--
vim.opt.wrap = false

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Move half page up and center the cursor' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Move half page down and center the cursor' })

vim.keymap.set('n', '<Leader>g', ':Neogit<CR>', { desc = 'Open Neogit (status)' })

vim.keymap.set('n', '<Leader>ww', ':set wrap!<CR>', { desc = 'Toggle line wrapping' })
vim.keymap.set('n', '<Leader>q', ':tabclose<CR>', { desc = 'Close current tab' })
vim.keymap.set('n', '<Leader><Tab>', ':tabnext<CR>', { desc = 'Switch to next tab' })

vim.keymap.set('n', '<Leader>wd', ':%s/\\s\\+$//e<CR>', { desc = 'delete trailing whitespace' })

-- Shortcuts
vim.api.nvim_set_keymap('n', '<Leader>init', ':Oil ~/.config/nvim<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<Leader>src', ':source ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<Ctrl>u', '<Ctrl>uzz', { noremap = true, silent = true }) -- place cursor in middle of screen after scrolling
vim.keymap.set({ 'n', 'v' }, '<Ctrl>d', '<Ctrl>dzz', { noremap = true, silent = true }) -- place cursor in middle of screen after scrolling

vim.keymap.set({ 'n', 'v' }, '<Ctrl>d', '<Ctrl>dzz', { noremap = true, silent = true }) -- place cursor in middle of screen after scrolling

vim.keymap.set({ 'n', 'v' }, '<M-j>', ':cnext<CR>', { noremap = true, silent = true }) -- place cursor in middle of screen after scrolling
vim.keymap.set({ 'n', 'v' }, '<M-k>', ':cprev<CR>', { noremap = true, silent = true }) -- place cursor in middle of screen after scrolling

vim.api.nvim_set_keymap('n', '<TAB>', '<C-^>', { noremap = true, silent = true, desc = 'Alternate buffers' })

vim.api.nvim_set_keymap('n', '<C-f>', '/', { noremap = true, silent = true, desc = 'search' })

-- Note shortcuts
vim.keymap.set('n', '<Leader>nwp', '<Cmd>ObsidianWorkspace personal<CR>', { desc = 'Switch to obsidian workspace "personal"' })
vim.keymap.set('n', '<Leader>nww', '<Cmd>ObsidianWorkspace work<CR>', { desc = 'Switch to obsidian workspace "work"' })
vim.keymap.set('n', '<Leader>nd', '<Cmd>ObsidianToday<CR>', { desc = 'Open daily note' })
vim.keymap.set('n', '<Leader>ni', '<Cmd>edit ~/vaults/personal/Ideen.md<CR>', { desc = 'Open Ideen.md note' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

vim.opt.conceallevel = 2

-- NOTE: Here is where you install your plugins.
require('lazy').setup {
  spec = {
    { import = 'plugins' },
  },
  checker = { enabled = false },
  install = { missing = false },
}
vim.cmd.colorscheme 'kanagawa'

local null_ls = require 'null-ls'
local helpers = require 'null-ls.helpers'
local vsg_lint = {
  name = 'VSG',
  method = null_ls.methods.DIAGNOSTICS,
  filetypes = { 'vhdl' },
  generator = helpers.generator_factory {
    command = 'vsg',
    args = function(params)
      local rv = {}
      -- check if there is a config file in the root directory, if so
      -- insert the -c argument with it
      if vim.fn.filereadable(params.root .. '/vsg.json') == 1 then
        table.insert(rv, '-c=' .. params.root .. '/vsg.json')
      end
      table.insert(rv, '--stdin')
      table.insert(rv, '-of=syntastic')
      return rv
    end,
    cwd = nil,
    check_exit_code = { 0, 1 },
    from_stderr = false,
    ignore_stderr = true,
    to_stdin = true,
    format = 'line',
    multiple_files = false,
    on_output = helpers.diagnostics.from_patterns {
      {
        pattern = [[(%w+).*%((%d+)%)(.*)%s+%-%-%s+(.*)]],
        groups = { 'severity', 'row', 'code', 'message' },
        overrides = {
          severities = {
            -- 2 is for warnings, nvim showing as an error can be obnoxious. Change if desired
            ['ERROR'] = 2,
            ['WARNING'] = 3,
            ['INFORMATION'] = 3,
            ['HINT'] = 4,
          },
        },
      },
    },
  },
}

local vsg_format = {
  name = 'VSG Formatting',
  method = null_ls.methods.FORMATTING,
  filetypes = { 'vhdl' },
  generator = helpers.formatter_factory {
    command = 'vsg',
    args = { '-c$ROOT/vsg.json', '-f=$FILENAME', '-of=syntastic', '--fix' },
    cwd = nil,
    check_exit_code = function(code, stderr)
      local success = code <= 1
      if not success then
        -- can be noisy for things that run often (e.g. diagnostics), but can
        -- be useful for things that run on demand (e.g. formatting)
        print(stderr)
      end
      return success
    end,
    ignore_stderr = true,
    to_temp_file = true,
    from_temp_file = true,
    to_stdin = false,
    multiple_files = false,
  },
}

null_ls.setup {
  diagnostics_format = '[#{c}] #{m} (#{s})',
  --sources = { vsg_format, vsg_lint },
}
