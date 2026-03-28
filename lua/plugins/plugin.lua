return
{
	{
		"hrsh7th/nvim-cmp"
	},
	{
		"hrsh7th/cmp-nvim-lsp-document-symbol"
	},
	{
		"hrsh7th/cmp-calc"
	},
	{
		"crazyhulk/cmp-sign"
	},
	{
		"hrsh7th/cmp-nvim-lsp"
	},
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
