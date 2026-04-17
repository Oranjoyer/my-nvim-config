return
{
	{
		"s1n7ax/nvim-window-picker"
	},
	{
		"akinsho/bufferline.nvim"
	},
	{
		"nvim-lualine/lualine.nvim",
		    dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{ 'neovim/nvim-lspconfig'},
	{ 'hrsh7th/cmp-nvim-lsp'},
	{ 'hrsh7th/cmp-buffer'},
	{ 'hrsh7th/cmp-path'},
	{ 'hrsh7th/cmp-cmdline'},
	{ 'hrsh7th/nvim-cmp'},
	{ 'hrsh7th/cmp-vsnip'},
	{ 'hrsh7th/vim-vsnip'},

	{
		'brenoprata10/nvim-highlight-colors'
	},
	{
		'nvim-telescope/telescope.nvim', version = '*',
    		dependencies = {
        	'nvim-lua/plenary.nvim',
        	-- optional but recommended
        	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    		}
	},
	{
		'stevearc/overseer.nvim'
	},
	{
		'kylechui/nvim-surround'
	},
	{
	  'nvim-treesitter/nvim-treesitter',
	  lazy = false,
	  build = ':TSUpdate'
	},
	{
		"savq/melange-nvim"
	},
	{
		"mason-org/mason.nvim",
		opts = {}
	},
	{
		"neovim/nvim-lspconfig"
	},
	
	{
	    "mason-org/mason-lspconfig.nvim",
	    opts = {},
	    dependencies = {
	        { "mason-org/mason.nvim", opts = {} },
	        "neovim/nvim-lspconfig",
	    },
	},
	{
		'mfussenegger/nvim-dap'	
	},
	{ "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },
	  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
  },
  {
	    "nvimtools/hydra.nvim",
  },
}
