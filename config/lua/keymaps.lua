local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local builtin = require('telescope.builtin')


-- Show project tree
map('n', '<C-n>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)


-- Buffers maps
-- You can switch between buffers by <Leader> + buffer number
map('n', '<Leader>1', ':1b<CR>', default_opts)
map('n', '<Leader>2', ':2b<CR>', default_opts)
map('n', '<Leader>3', ':3b<CR>', default_opts)
map('n', '<Leader>4', ':4b<CR>', default_opts)
map('n', '<Leader>5', ':5b<CR>', default_opts)
map('n', '<Leader>6', ':6b<CR>', default_opts)
map('n', '<Leader>7', ':7b<CR>', default_opts)
map('n', '<Leader>8', ':8b<CR>', default_opts)
map('n', '<Leader>9', ':9b<CR>', default_opts)
map('n', '<Leader>0', ':10b<CR>', default_opts)

map('n', '<Leader>n', ':noh<CR>', default_opts)


---- I use telescope btw
---- FZF settings
-- map('n', '<Leader>b', ":Buffers<CR>", default_opts)
-- map('n', '<Leader>l', ":BLines<CR>", default_opts)
-- map('n', '<Leader>L', ":Lines<CR>", default_opts)
-- map('n', '<Leader>t', ":Tabs<CR>", default_opts)
-- map('n', '<Leader>F', ":Files<CR>", default_opts)

map('n', 'ff', ':Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>', default_opts)
vim.keymap.set('n', 'fg', builtin.live_grep, default_opts)
vim.keymap.set('n', 'fb', builtin.buffers, default_opts)
vim.keymap.set('n', 'fh', builtin.help_tags, default_opts)

-- Enable <Escape> in the terminal mode (:term)
map('t', '<Esc>', '<C-\\><C-n>', {noremap = true, silent = false})


-- Mappings to move between plited windows by WinMove function
map('n', '<C-h>', ':call MoveWindow(\'h\')<CR>', default_opts)
map('n', '<C-j>', ':call MoveWindow(\'j\')<CR>', default_opts)
map('n', '<C-k>', ':call MoveWindow(\'k\')<CR>', default_opts)
map('n', '<C-l>', ':call MoveWindow(\'l\')<CR>', default_opts)

-- Resize split windows
map('n', '<C-Right>', ':vertical resize +5<CR>', default_opts)
map('n', '<C-Left>', ':vertical resize -5<CR>', default_opts)
map('n', '<C-Up>', ':resize +5<CR>', default_opts)
map('n', '<C-Down>', ':resize -5<CR>', default_opts)

-- Move between windows or create new ones
-- Close your eyes when you read this code, cuz i'm not familiar with lua...
vim.g.MoveWindow = function(key)
    local command = string.format("exec \"wincmd %s\"", key)

    vim.t.curwin = vim.fn.winnr()
    vim.api.nvim_exec(command, true)

    if vim.t.curwin == vim.fn.winnr() then
        local res = vim.fn.match(key, '[jk]')

        if res == 0 then
            vim.api.nvim_exec("wincmd s", true)
        else
            vim.api.nvim_exec("wincmd v", true)
        end

        vim.api.nvim_exec(command, true)
    end
end



