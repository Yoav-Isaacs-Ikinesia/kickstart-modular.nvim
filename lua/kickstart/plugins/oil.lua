return {
  'stevearc/oil.nvim',
  opts = {
    view_options = {
      show_hidden = true,
    },
    float = {
      padding = 2,
      max_width = 60,
      max_height = 20,
      border = 'rounded',
      win_options = {
        winblend = 10,
      },
    },
    keymaps = {
      ['q'] = 'actions.close',
      ['l'] = 'actions.select',
      ['h'] = 'actions.parent',
      ['-'] = 'actions.parent',
    },
  },
  keys = {
    { '<leader>fm', '<CMD>Oil --float<CR>', desc = 'Open parent directory (Oil Float)' },
  },
}
