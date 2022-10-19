local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local s = vim.s

local tab_width = 4


-- colorscheme option:
-- Available themes: nord, dracula, onedark, doobox
-- Sainnhe themes : edge, forest-night, sonokai
--
-- buigb, ctermbg options:
-- Make transparent background
-- Also, if you want to make you terminal background
-- transparent you need to set it in you terminal configuration
-- If you use konsole: 
-- Right click -> Edit Current Profile -> Appearance -> Edit -> 
-- -> Background Transparency
cmd [[
    syntax on
    highlight Normal ctermbg=None
    filetype plugin on
    colorscheme doobox
    hi statusline guibg=#FFFFFFFF guifg=#D8DEE9
    hi Normal guibg=NONE ctermbg=NONE

    set t_Co=256
    set nobackup
    set noswapfile
]]

opt.termguicolors = true
opt.guifont = 'JetBrainsMono Nerd Font:h7'
opt.laststatus = 2
opt.autoindent = true
opt.clipboard = opt.clipboard + 'unnamedplus'

opt.softtabstop = tab_width
opt.linespace = tab_width
opt.tabstop = tab_width
opt.shiftwidth = tab_width

opt.number = true
opt.relativenumber = true
opt.expandtab = true
opt.hlsearch = true
opt.incsearch = true
opt.ruler = true
opt.encoding = 'utf-8'
opt.fileencodings = 'utf-8,cp1251'


-- Edge color scheme settings
g.edge_style = 'neon'
g.edge_enable_italic = 1

-- Maps
g.mapleader=',' -- Too useful (if you dont want to get carpal tunnel)
g.jsx_ext_required = 1
g.jsx_pragma_required = 1
g.user_emmet_leader_key = '<c-o>'

