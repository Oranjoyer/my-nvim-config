vim.g.mapleader = " "
vim.keymap.set('n',"<leader>mp",vim.cmd.Ex)



require("config.lazy")
require("config.configSettings")

vim.cmd.colorscheme "melange"
