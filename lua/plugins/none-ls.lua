return {
  'nvimtools/none-ls.nvim',

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
      if vim.fn.filereadable(params.root .. '/config.json') == 1 then
        table.insert(rv, '-c=' .. params.root .. '/config.json')
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
    args = { '-c$ROOT/config.json', '-f=$FILENAME', '-of=syntastic', '--fix' },
    cwd = nil,
    check_exit_code = { 0, 1 },
    ignore_stderr = true,
    to_temp_file = true,
    from_temp_file = true,
    to_stdin = false,
    multiple_files = false,
  },
}

null_ls.setup {
  diagnostics_format = '[#{c}] #{m} (#{s})',
  sources = { vsg_lint, vsg_format },
}

}
