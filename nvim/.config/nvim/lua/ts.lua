local M = {}
function M.setup()
	require'nvim-treesitter.configs'.setup {
		highlight = {
			enable = true,
		},
		incremental_selection = {
			enable = true,
			keymaps = {                       
			  init_selection = "<c-m>",
			  node_incremental = "<c-n>",       
			  scope_incremental = "<c-j>",      
			  node_decremental = "<c-p>", 
			}
		}
	}

	require "nvim-treesitter.highlight"
	vim.treesitter.TSHighlighter.hl_map.error = nil
end

return M
