require('packer').startup(function() 
  use 'wbthomason/packer.nvim'

  -- file explorer
  use {
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons'
  }

  -- auto complete
  use {
    'neovim/nvim-lspconfig', -- Collection of configurations for built-in LSP client
    'hrsh7th/nvim-cmp', -- Autocompletion plugin
    'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
    'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
    'L3MON4D3/LuaSnip' -- Snippets plugin
  }

  -- lsp installer
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim'
  }

  -- rust-tools

  use {
  'simrat39/rust-tools.nvim',
  'nvim-lua/plenary.nvim',
  'mfussenegger/nvim-dap',
  }

  -- comment
  use "terrortylor/nvim-comment"

  -- themee
  use {
    'nvim-lualine/lualine.nvim',
    "utilyre/barbecue.nvim",
    "SmiteshP/nvim-navic",
  }

  -- colorscheme
  use {
    "folke/tokyonight.nvim",
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
  }

  -- floaterm
  use 'voldikss/vim-floaterm'

  use 'uga-rosa/ccc.nvim'

  use 'nvim-treesitter/nvim-treesitter'

  use 'saecki/crates.nvim'

  use 'Civitasv/cmake-tools.nvim'
end)


require('nvim_comment').setup()

require('lualine').setup()
require('barbecue').setup()

require('crates').setup()

require('plugins/configs/auto-complete')
require('plugins/configs/lsp')
require('plugins/configs/file-explorer')
require('plugins/configs/telescope')
require('plugins/configs/rust-tools')
require('plugins/configs/ccc')
require('plugins/configs/nvim-treesitter')
require('plugins/configs/cmake-tools')
