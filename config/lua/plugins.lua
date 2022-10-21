local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')


-- Awesome files viewer for vim ==>
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

-- Awesome asynchronous linter
Plug 'dense-analysis/ale'

-- Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

-- Languages support
Plug 'sheerun/vim-polyglot'

-- Status bar plugins ==>
Plug 'nvim-lualine/lualine.nvim'

-- Very useful things ==>
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround' -- include word/line in '[{< and other stuff like those
Plug 'preservim/nerdcommenter' -- <Leader>-c-l to comment; <Leader>-c-u to uncomment
Plug 'junegunn/fzf.vim'
Plug 'APZelos/blamer.nvim' -- A plugin like the 'git-lense' for vscode
Plug 'ap/vim-css-color'
Plug 'airblade/vim-gitgutter'
Plug 'iamcco/markdown-preview.nvim'

-- CSharp and FSharp support
-- Plug 'OmniSharp/omnisharp-vim'
-- Plug ('ionide/Ionide-vim', { ['do'] = 'make fsautocomplete' })

-- Haskell and Cabal support
-- Plug 'neovimhaskell/haskell-vim'

-- Appearance plugins ==>
-- Color schemes
Plug 'arcticicestudio/nord-vim'
Plug 'doopath/doobox'
Plug ('dracula/vim', { as = 'dracula' })
Plug 'ulwlu/elly.vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

-- These themes are created by this awesome guy https://github.com/sainnhe ==>
Plug 'sainnhe/forest-night'
Plug 'sainnhe/edge'
Plug 'sainnhe/sonokai'

-- Transparent vim
Plug 'kjwon15/vim-transparent'

-- Icons for bars (and nerdtree)
Plug 'ryanoasis/vim-devicons'

-- IDE Feautures ==>
Plug('github/copilot.vim')
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug 'SirVer/ultisnips' -- Powerful snippets
Plug 'honza/vim-snippets' -- Also, improves your expirience
-- Live server inside the code-editor like VSCode live-server
Plug 'turbio/bracey.vim'

-- LSP for neovim. I prefer to use coc.nvim
-- Plug 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
-- Plug 'hrsh7th/nvim-cmp' -- Autocompletion plugin
-- Plug 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
-- Plug 'hrsh7th/cmp-buffer'
-- Plug 'hrsh7th/cmp-path'
-- Plug 'hrsh7th/cmp-cmdline'
-- Plug 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
-- Plug 'L3MON4D3/LuaSnip' -- Snippets plugin



vim.call('plug#end')
