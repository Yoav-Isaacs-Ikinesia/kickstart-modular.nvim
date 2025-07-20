return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    indent = {
      char = '│',
      tab_char = '│',
    },
    scope = {
      enabled = true,
      show_start = true,
      show_end = true,
      show_exact_scope = true,
      char = '│', -- Thin line for scope (same as indent)
      include = {
        node_type = {
          ['*'] = {
            'array',
            'arguments',
            'block',
            'body',
            'case',
            'catch_clause',
            'class',
            'compound_statement',
            'dictionary',
            'do_statement',
            'else_clause',
            'field_list',
            'finally_clause',
            'for_statement',
            'function',
            'function_declaration',
            'function_definition',
            'if_statement',
            'import_statement',
            'list',
            'list_literal',
            'method',
            'object',
            'operation_type',
            'parenthesized_expression',
            'selector',
            'statement_block',
            'struct_literal',
            'switch_body',
            'switch_statement',
            'table',
            'table_constructor',
            'try_statement',
            'tuple',
            'while_statement',
            'with_statement',
            '^if',
            '^while',
            '^for',
            '^function',
            '^class',
            '^method',
            '^block',
            '^object',
            '^table',
            '^array',
            '^list',
            'jsx_element',
            'jsx_self_closing_element',
            'jsx_fragment',
          },
        },
      },
    },
    exclude = {
      filetypes = {
        'help',
        'alpha',
        'dashboard',
        'neo-tree',
        'Trouble',
        'trouble',
        'lazy',
        'mason',
        'notify',
        'toggleterm',
        'lazyterm',
      },
    },
  },
  config = function(_, opts)
    local hooks = require 'ibl.hooks'

    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      -- Nice thin blue line for current scope
      vim.api.nvim_set_hl(0, 'IblScope', { fg = '#61AFEF', bold = false })
    end)

    -- No rainbow colors for indent lines - use default
    opts.scope.highlight = 'IblScope'

    require('ibl').setup(opts)
  end,
}
