vim.g.mapleader = " "
vim.keymap.set('n',"<leader>mp",vim.cmd.Ex)

require("config.lazy")
require("config.configSettings")
require("config.lspSettings")
vim.go.number=true
vim.wo.relativenumber=true
vim.keymap.set('n',"<leader>H",function()
	vim.wo.relativenumber=vim.wo.relativenumber==false
end)

vim.keymap.set('i',"<C-CR>","<CR><CR><Up><Tab>")
vim.keymap.set('i',"<A-CR>","<Left><CR><CR><Up><Tab>")
vim.keymap.set('n',"<A-j>","jzz")
vim.keymap.set('n',"<A-k>","kzz")

vim.cmd.colorscheme "melange"

