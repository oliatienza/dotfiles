require('neo-tree').setup{
	close_if_last_window = false,
	enable_git_status = true,
	enable_diagnostics = true,
	window={
		width =30
	},
	filesystem = {
		hijack_netrw_behavior = "disabled"
	}
}

mapx('n', '<leader>n', 'NeoTreeFloat')
