local g = vim.g

require('lualine').setup {
    options = {
        theme = 'gruvbox'
    },
    tabline = {
        lualine_a = {'buffers'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'tabs'}
    }
}


require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--hidden',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        }
    }
}

require('nvim-tree').setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = true,
  hijack_cursor       = false,
  update_cwd          = false,
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 40,
    hide_root_folder = false,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}

-- Ultisnips mapping
g.UltiSnipsExpandTrigger='<c-.>'
g.UltiSnipsJumpForwardTrigger='<c-b>'
g.UltiSnipsJumpBackwardTrigger='<c-z>'


-- Blamer settings
g.blamer_enabled = 1


-- NerdCommenter settings
g.NERDSpaceDelims = 1 -- Add spaces after comment delimiters by default
g.NERDCompactSexyComs = 1 -- Use compact syntax for prettified multi-line comments
-- Align line-wise comment delimiters flush left instead of following code indentation
g.NERDDefaultAlign = 'left'
g.NERDAltDelims_java = 1 -- Set a language to use its alternate delimiters by default
-- Allow commenting and inverting empty lines (useful when commenting a region)
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1 -- Enable trimming of trailing whitespace when uncommenting
-- Enable NERDCommenterToggle to check all selected lines is commented or not 
g.NERDToggleCheckAllLines = 1

