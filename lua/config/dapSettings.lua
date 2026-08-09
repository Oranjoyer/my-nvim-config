local dap = require("nvim-dap")
dap.adapters.debugpy = 
{
	type = 'executable',
	command = 'pyexec',
	args = {'-m','debugpy.adapter'}
}

