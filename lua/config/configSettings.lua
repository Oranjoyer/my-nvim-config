-- ColorHint
require('nvim-highlight-colors').setup({})
-- Telescope Binds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fr', builtin.git_files, { desc = 'Telescope git files'})
vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, { desc = 'Telescope workspace symbols'})
-- Other
require('nvim-treesitter').setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  ensure_installed = {

	  "python",
	  "lua",
	  "c",
	  "cpp",
	  "java",
	  "javascript"
  },
  install_dir = vim.fn.stdpath('data') .. '/site'
}
-- Neo Tree
vim.keymap.set('n','<leader>tf',"<cmd>Neotree focus<CR>")
vim.keymap.set('n','<leader>th',"<cmd>Neotree toggle<CR>")
-- Hydra Window
local headFunc = function(char)
	return {
	char,
	"<cmd>wincmd " .. char .. '<CR>'
	}
end
local Hydra = require('hydra')
-- Hydra(
-- 	{
-- 	name="Window Utils",
--
-- 	mode = "n",
--
-- 	body = "<c-w>",
--
-- 	hint = [["Window Control Mode"]],
--
-- 	exit = false,
--
-- 	color = "yellow",
--
-- 	foreign_keys = 'warn',
--
-- 	buffer = nil,
--
-- 	invoke_on_body = true,
--
-- 	heads = {
-- 		headFunc("j"),
-- 		headFunc('k'),
-- 		headFunc('h'),
-- 		headFunc('l'),
-- 		headFunc('p'),
-- 		headFunc('w'),
-- 		headFunc('q'),
-- 		headFunc('v'),
-- 		{",","<cmd>wincmd <<CR>"},
-- 		{".","<cmd>wincmd ><CR>"},
-- 		{"=","<cmd>wincmd +<CR>"},
-- 		headFunc('-'),
-- 	}
--
-- 	}
-- )
-- Extra Binds
vim.keymap.set('t','<ESC><ESC>',"<C-\\><C-N>")
vim.keymap.set('n',"<leader>tt","<cmd>split | wincmd J | term<CR>")
vim.keymap.set('n',"<leader>S","<cmd>split | Ex<CR>")
vim.opt.completeopt = {'menuone','noselect','popup'}
vim.lsp.completion.enable()
vim.keymap.set('i','<C-l>',vim.lsp.completion.get)

--lualine
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16, -- ~60fps
      events = {
        'WinEnter',
        'BufEnter',
        'BufWritePost',
        'SessionLoadPost',
        'FileChangedShellPost',
        'VimResized',
        'Filetype',
        'CursorMoved',
        'CursorMovedI',
        'ModeChanged',
      },
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
-- lsp
