-- This file can be loaded by calling `lua require("plugins")` from your init.vim

pcall(require, "impatient")

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Autocompile settings on Startup
vim.cmd([[
augroup packer_user_config
	autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]])

return require("packer").startup(function(use)
	-- Load Plugins
		-- Startup
		use "wbthomason/packer.nvim"
		use "lewis6991/impatient.nvim"
		-- use(require "_alpha-nvim")

		-- Themes
		use "drewtempelmeyer/palenight.vim"
		use "vim-airline/vim-airline-themes"
		use "morhetz/gruvbox"
		-- Style
		use(require "_lualine_nvim")
		use(require "_vim-rainbow")
		use(require "_tabline_nvim")
		-- use(require "_barbar_nvim")



		-- Syntax
		use "ntpeters/vim-better-whitespace"
		use(require "_nvim-treesitter")
		use(require "_nvim-treesitter-refactor")

		-- Workflow
		use "preservim/tagbar"
		use "universal-ctags/ctags"
		use "tommcdo/vim-lion"
		use "tpope/vim-sleuth"
		use "jinh0/eyeliner.nvim"
		use "tpope/vim-surround"
		use "Shatur/neovim-session-manager"
		use(require "_hover_nvim")
		use(require "_fzf")
		use(require "_coc_nvim")
		use(require "_nvim-tree")

		-- Dependencies
		use "nvim-tree/nvim-web-devicons"
		use "nvim-lua/plenary.nvim"

		if packer_bootstrap then
			require("packer").sync()
		end
end)

