local g = vim.g	

g.mapleader = ' '
g.maplocalleader = ','

map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

map('n', '<leader>1', '1gt')
map('n', '<leader>2', '2gt')
map('n', '<leader>3', '3gt')
map('n', '<leader>4', '4gt')
map('n', '<leader>5', '5gt')

map('n', '<leader>h', ':wincmd h<cr>')
map('n', '<leader>j', ':wincmd j<cr>')
map('n', '<leader>k', ':wincmd k<cr>')
map('n', '<leader>l', ':wincmd l<cr>')

-- Better movements
remap('n', 'H', '^')
remap('v', 'H', '^')
remap('n', 'L', '$')
remap('v', 'L', '$')
remap('n', 'Q', '@q')
remap('n', 'Y', 'y$')
