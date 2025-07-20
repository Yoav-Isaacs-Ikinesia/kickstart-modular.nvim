return {
  'pwntester/octo.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    -- OR 'ibhagwan/fzf-lua',
    -- OR 'folke/snacks.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('octo').setup()

    -- Set up keymaps
    local map = vim.keymap.set

    -- GitHub Issues
    map('n', '<leader>gi', '<cmd>Octo issue list<cr>', { desc = 'List [G]itHub [I]ssues' })

    -- GitHub Pull Requests
    map('n', '<leader>gp', '<cmd>Octo pr list<cr>', { desc = 'List [G]itHub [P]Rs' })

    -- GitHub Reviews
    map('n', '<leader>grs', '<cmd>Octo review start<cr>', { desc = 'Start [G]itHub [R]eview [S]tart' })
    map('n', '<leader>grf', '<cmd>Octo review submit<cr>', { desc = '[G]itHub [R]eview [F]inished (submit)' })
    map('n', '<leader>grr', '<cmd>Octo review resume<cr>', { desc = '[G]itHub [R]eview [R]esume' })

    -- GitHub Comments
    map('n', '<leader>gca', '<cmd>Octo comment add<cr>', { desc = '[G]itHub [C]omment [A]dd' })
    map('n', '<leader>gcr', '<cmd>Octo comment reply<cr>', { desc = '[G]itHub [C]omment [R]eply' })
    map('n', '<leader>gcl', '<cmd>Octo reaction thumbs_up<cr>', { desc = '[G]itHub [C]omment [L]ike (👍)' })
    map('n', '<leader>gcd', '<cmd>Octo reaction thumbs_down<cr>', { desc = '[G]itHub [C]omment [D]islike (👎)' })
    map('n', '<leader>gch', '<cmd>Octo reaction heart<cr>', { desc = '[G]itHub [C]omment [H]eart (❤️)' })
    map('n', '<leader>gce', '<cmd>Octo reaction eyes<cr>', { desc = '[G]itHub [C]omment [E]yes (👀)' })

    -- GitHub Actions
    map('n', '<leader>gha', '<cmd>Octo actions<cr>', { desc = '[G]itHub [A]ctions' })

    -- Quick access to current PR/Issue
    map('n', '<leader>gho', '<cmd>Octo<cr>', { desc = '[G]itHub [O]cto menu' })
  end,
}
