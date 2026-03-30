vim.g.mapleader = " "
vim.keymap.set('n',"<leader>mp",vim.cmd.Ex)


require("config.lazy")
require("config.configSettings")

vim.wo.number=true
vim.keymap.set('n',"<leader>H",function()
	vim.wo.relativenumber=vim.wo.relativenumber==false
end)
vim.cmd.colorscheme "melange"
