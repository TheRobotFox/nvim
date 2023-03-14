return {
  'kdheepak/tabline.nvim',
  config = function()
    require'tabline'.setup {
      -- Defaults configuration options
      enable = true,
      options = {
	-- If lualine is installed tabline will use separators configured in lualine by default.
	-- These options can be used to override those settings.
	section_separators = {'', ''},
	component_separators = {'', ''},
	max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
	show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
	show_devicons = true, -- this shows devicons in buffer section
	show_bufnr = false, -- this appends [bufnr] to buffer section,
	show_filename_only = false, -- shows base filename only instead of relative path in filename
	modified_icon = "+ ", -- change the default modified icon
	modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
	show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
      }
    }
    vim.cmd[[
    set guioptions-=e " Use showtabline in gui vim
    set sessionoptions+=tabpages,globals " store tabpages and globals in session
    ]]

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = false, silent = true }
    map('n', '<A-h>', '<Cmd>TablineBufferPrevious<CR>', opts)
    map('n', '<A-l>', '<Cmd>TablineBufferNext<CR>', opts)
    map('n', '<A-k>', '<Cmd>tabnext<CR>', opts)
    map('n', '<A-j>', '<Cmd>tabprevious<CR>', opts)

    map('n', '<A-:>', '<Cmd>TablineBufferNext<CR>', opts)
    map('n', '<A-;>', '<Cmd>TablineBufferPrevious<CR>', opts)
    map('n', '<A-.>', '<Cmd>tabnext<CR>', opts)
    map('n', '<A-,>', '<Cmd>tabprevious<CR>', opts)

    map('n', '<A->>', '<Cmd>tabmove +<CR>', opts)
    map('n', '<A-<>', '<Cmd>tabmove -<CR>', opts)


    map('n', '<A-n>', '<Cmd>TablineTabNew<CR>', opts)
    map('n', '<A-c>', '<Cmd>tabclose<CR>', opts)

    map('n', '<A-r>', "<cmd>lua require('_tabline_nvim').rename_prompt()<cr>", {silent=false})

  end,
  rename_prompt = function ()
    vim.ui.input({ prompt = 'Enter Name: ' }, function(input)
    vim.cmd("TablineTabRename " .. input)
    end)
  end,
  requires = { { 'hoob3rt/lualine.nvim', opt=true }, "nvim-tree/nvim-web-devicons", opt = true}
}
