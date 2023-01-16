return {
	"nvim-treesitter/nvim-treesitter-refactor",
	requires = { "nvim-treesitter/nvim-treesitter"},
	config = function ()
		require'nvim-treesitter.configs'.setup {
			refactor = {
				highlight_definitions = {
					enable = true,
					-- Set to false if you have an `updatetime` of ~100.
					clear_on_cursor_move = true,
				},
				highlight_current_scope = { enable = true },
				smart_rename = {
					enable = true,
					keymaps = {
						smart_rename = "grr",
					}
				}
			}
		}
	end
}

