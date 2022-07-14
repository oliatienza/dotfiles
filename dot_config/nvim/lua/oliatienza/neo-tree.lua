require('neo-tree').setup{
	enable_git_status = true,
	enable_diagnostics = true,
	window={
		width =30
	}
}

-- nnoremap <leader>n :NeoTreeFloat<CR>
mapx('n', '<leader>n', 'NeoTreeFloat')
