return {
	"nvim-tree/nvim-tree.lua",
	requires = {
	    "nvim-tree/nvim-web-devicons", -- optional, for file icons
	},
	config = function()

		-- disable netrw at the very start of your init.lua (strongly advised)
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
		  sort_by = "case_sensitive",
		  view = {
		    adaptive_size = true,
		    mappings = {
		      list = {
			{ key = "u", action = "dir_up" },
		      },
		    },
		  },
		  renderer = {
		    group_empty = true,
		  },
		  filters = {
		    dotfiles = true,
		  },
		})


		-- Smart Toggle
		vim.api.nvim_set_keymap("n", "<F1>", "<cmd>lua require('_nvim-tree').smart_toggle()<cr>", {noremap=false, silent=true})
	end,
	smart_toggle = function ()
		local win_num = require("nvim-tree.view").get_winnr()
		local api = require("nvim-tree.api")

		if (win_num or 0) ~= vim.api.nvim_get_current_win() then
			api.tree.focus()
		else
			api.tree.close()
		end
	end
}

