require('telescope').setup{
	extensions = {
		fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
		}
	}
}

require('telescope').load_extension('flutter')
require('telescope').load_extension('fzf')

local map_ts = function(key, cmd)
  mapx('n', '<leader>f' .. key, 'Telescope ' .. cmd)
end

-- map_ts('a', 'lsp_code_actions')
map_ts('b', 'buffers')
-- map_ts('c', 'neoclip')
map_ts('d', 'diagnostics')
map_ts('f', 'find_files')
map_ts('F', 'flutter commands')
map_ts('gb', 'git_branches')
map_ts('gc', 'git_commits')
map_ts('gs', 'git_status')
map_ts('h', 'resume')
map_ts('H', 'help_tags')
map_ts('p', 'projects')
map_ts('r', 'grep_string')
map_ts('s', 'live_grep')
mapx('n', '<leader>ft', 'TodoTelescope')
