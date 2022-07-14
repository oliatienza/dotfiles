require('neotest').setup({
	adapters={
		require('neotest-vim-test')(
		{ignore_file_types = {'vim'},
	}
		)
	}
})

-- nnoremap <leader>td <cmd>lua require('neotest').run.run()<cr>
-- nnoremap <leader>tD <cmd>lua require('neotest').run.run({strategy = "dap"})<cr>
-- nnoremap <leader>tf <cmd>lua require('neotest').run.run(vim.fn.expand("%"))<cr>
-- nnoremap <leader>to <cmd>lua require('neotest').output.open({enter = true})<cr>
-- nnoremap <leader>ts <cmd>lua require('neotest').summary.toggle()<cr>
-- nnoremap <leader>tS <cmd>lua require('neotest').run.stop()<cr>

-- local map_ts = function(key, cmd)
--   mapx('n', '<leader>t' .. key, 'require(\'neotest\').' .. cmd)
-- end

-- -- map_ts('a', 'lsp_code_actions')
-- -- map_ts('c', 'neoclip')
-- map_ts('d', 'run.run')
-- -- map_ts('D', 'find_files')
-- -- map_ts('f', 'flutter commands')
-- -- map_ts('o', 'git_branches')
-- map_ts('s', 'summary.toggle')
-- map_ts('S', 'run.stop')
