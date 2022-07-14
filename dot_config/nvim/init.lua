vim.cmd [[
syntax on

set termguicolors

call plug#begin('~/.vim/plugged')
Plug 'marko-cerovac/material.nvim'

Plug 'simeji/winresizer'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'folke/which-key.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-spectre'

Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-fugitive'
Plug 'TimUntersberger/neogit'

Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'nvim-lualine/lualine.nvim'

Plug 'neovim/nvim-lspconfig'

Plug 'akinsho/flutter-tools.nvim'
Plug 'tpope/vim-surround'
Plug 'bkad/CamelCaseMotion'

Plug 'dart-lang/dart-vim-plugin'
Plug 'monaqa/dial.nvim'

Plug 'lewis6991/impatient.nvim'
Plug 'folke/trouble.nvim'

Plug 'RRethy/vim-illuminate'

Plug 'weilbith/nvim-code-action-menu'

" Testing
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'nvim-neotest/neotest'
Plug 'nvim-neotest/neotest-vim-test'
Plug 'vim-test/vim-test'

Plug 'Neevash/awesome-flutter-snippets'
Plug 'mfussenegger/nvim-dap'

Plug 'gioele/vim-autoswap'
Plug 'rcarriga/nvim-notify'
Plug 'norcalli/nvim-colorizer.lua'

Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

Plug 'APZelos/blamer.nvim'

" Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

lua require('oliatienza')

nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<cr>
nnoremap <leader>F <cmd>lua vim.lsp.buf.formatting_sync()<cr>
nnoremap <leader>ca <cmd>lua vim.lsp.buf.code_action()<cr>
nnoremap <silent> <leader>dk <cmd>lua vim.diagnostic.goto_prev()<cr>
nnoremap <silent> <leader>dj <cmd>lua vim.diagnostic.goto_next()<cr>

nnoremap <leader>a <cmd>CodeActionMenu<cr>
vnoremap <C-.> <cmd>CodeActionMenu<cr>

nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>

" Fugitive git bindings
nnoremap <leader>gg :Neogit<CR>
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb <cmd>Telescope git_branches<CR>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

" spectre
nnoremap <leader>S <cmd>lua require('spectre').open()<CR>
"search current word
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <cmd>lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
" run command :Spectre


nnoremap <leader>td <cmd>lua require('neotest').run.run()<cr>
nnoremap <leader>tD <cmd>lua require('neotest').run.run({strategy = "dap"})<cr>
nnoremap <leader>tf <cmd>lua require('neotest').run.run(vim.fn.expand("%"))<cr>
nnoremap <leader>to <cmd>lua require('neotest').output.open({enter = true})<cr>
nnoremap <leader>ts <cmd>lua require('neotest').summary.toggle()<cr>
nnoremap <leader>tS <cmd>lua require('neotest').run.stop()<cr>
]]
