return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      hide_statusline = false,
      config = {
        header = {
          '',
          '',
          '██   ██ ███████ ██      ██       ██████  ██',
          '██   ██ ██      ██      ██      ██    ██ ██',
          '███████ █████   ██      ██      ██    ██ ██',
          '██   ██ ██      ██      ██      ██    ██   ',
          '██   ██ ███████ ███████ ███████  ██████  ██',
          '',
          '',
        },
        center = {
          {
            icon = '  ',
            desc = 'Find File                               ',
            key = 'f',
            key_format = ' %s ',
            action = 'Telescope find_files',
          },
          {
            icon = '  ',
            desc = 'Recent Files                            ',
            key = 'r',
            key_format = ' %s ',
            action = 'Telescope oldfiles',
          },
          {
            icon = '  ',
            desc = 'Find Text                               ',
            key = 't',
            key_format = ' %s ',
            action = 'Telescope live_grep',
          },
          {
            icon = '  ',
            desc = 'New File                                ',
            key = 'n',
            key_format = ' %s ',
            action = 'enew',
          },
          {
            icon = '  ',
            desc = 'Configuration                           ',
            key = 'c',
            key_format = ' %s ',
            action = 'edit ~/.config/nvim/init.lua',
          },
          {
            icon = '  ',
            desc = 'Quit                                    ',
            key = 'q',
            key_format = ' %s ',
            action = 'quit',
          },
        },
        footer = {
          '',
          'Welcome to Neovim!',
        },
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
