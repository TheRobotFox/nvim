return  { "junegunn/fzf.vim",
	requires = {
		"junegunn/fzf",
	},
	run = ":call fzf#install()",
	config = function()

		vim.g.fzf_layout = { window = { width = 0.9, height = 0.6 } }

		-- Keybinds
		vim.api.nvim_set_keymap("n", "<F2>", ":FZF<CR>", {noremap=true, silent=true})
		vim.api.nvim_set_keymap("n", "<F3>", ":Tags<CR>", {noremap=true, silent=true})

	end
}
