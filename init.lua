vim.g.mapleader = " "
vim.keymap.set('n',"<leader>mp",vim.cmd.Ex)
vim.keymap.set('n',"<leader>ce",vim.diagnostic.open_float)

vim.keymap.set('n',"<leader>bd","<cmd>w | bp | sp | bn | bd<CR>")
vim.keymap.set('n',"<leader>bD","<cmd> bp | sp | bn | bd!<CR>")
vim.keymap.set('n',"<A-h>",vim.cmd.bp)
vim.keymap.set('n',"<A-l>",vim.cmd.bn)
vim.keymap.set('n',"<A-,>","vi>o<ESC>viwyvi><ESC>la</<ESC>pa><ESC>vi<o<ESC>hi")
vim.keymap.set('i',"<A-\'>","\"\"<Left>")
vim.keymap.set('n',"<A-\'>","i\"\"<Left>")
local dblFunc = function (bChar,eChar)
  vim.keymap.set('n',"<leader>"..bChar,"i"..bChar..eChar.."<Left>")
end
dblFunc("[","]")
dblFunc("{","}")
dblFunc("<",">")
dblFunc("\"","\"")
dblFunc("\'","\'")
dblFunc("(",")")
require("config.lazy")
require("config.configSettings")
require("config.lspSettings")

vim.go.number=true
vim.o.wrap = false
vim.wo.relativenumber=true
vim.keymap.set('n',"<leader>H",function()
	vim.wo.relativenumber=vim.wo.relativenumber==false
end)
vim.opt.tabstop = 2
vim.opt.shiftwidth=2
vim.o.expandtab = true
vim.keymap.set('i',"<A-CR>","<Left><CR><CR><Up><Tab>")
vim.keymap.set('i',"<C-CR>","<CR><CR><Up><Tab>")
vim.keymap.set('n',"<A-j>","jzz")
vim.keymap.set('n',"<A-k>","kzz")

vim.cmd.colorscheme "melange"

