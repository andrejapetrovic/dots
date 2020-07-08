function setup()
	require'nvim-treesitter.configs'.setup {
		highlight = {
			enable = true,
		},
		incremental_selection = {
			enable = true,
			keymaps = {                       
			  init_selection = "<c-m>",
			  node_incremental = "<c-k>",       
			  scope_incremental = "<c-K>",      
			  node_decremental = "<c-j>", 
			}
		},
		refactor = {
			smart_rename = {
				enable = true,
				smart_rename = "grr"
			},
			highlight_definitions = {
				enable = true,
			},
			navigation = {
				enable = true,
				goto_definition = "gnd",
				list_definitions = "gnD"
			}
		}
	}

	require "nvim-treesitter.highlight"
	vim.treesitter.TSHighlighter.hl_map.error = nil

	local hlmap = vim.treesitter.TSHighlighter.hl_map
	hlmap["variable.builtin"] = "TSVariableBuiltin"
end

return setup()
