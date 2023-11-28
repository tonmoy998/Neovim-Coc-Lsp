local telescope = require('telescope')
local action = require('telescope.actions')

telescope.setup({
  defaults = {
    prompt_prefix = '   ',
    selection_caret = '  ',
    entry_prefix = '   ',
    path_display = { 'truncate' },
    file_ignore_patterns = {
      'dist',
      'target',
      'node_modules',
      'pack/plugins',
    },
  },
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  },
  extensions = {
    recent_files = {
      only_cwd = true,
    },
  },
})

-- telescope.load_extension('ui-select')
