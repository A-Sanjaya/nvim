local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  -- file explorer
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',

  -- auto complete
  'neovim/nvim-lspconfig', -- Collection of configurations for built-in LSP client
  'hrsh7th/nvim-cmp', -- Autocompletion plugin
  'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
  'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
  'L3MON4D3/LuaSnip', -- Snippets plugin

  -- lsp installer
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',


  -- rust-tools
  'simrat39/rust-tools.nvim',
  'nvim-lua/plenary.nvim',
  'mfussenegger/nvim-dap',
  'saecki/crates.nvim',

  -- comment
  "terrortylor/nvim-comment",

  -- themee
  'nvim-lualine/lualine.nvim',
  "utilyre/barbecue.nvim",
  "SmiteshP/nvim-navic",


  'petertriho/nvim-scrollbar',

  -- colorscheme

  "folke/tokyonight.nvim",


  -- telescope
  'nvim-telescope/telescope.nvim',


  -- floaterm
  'voldikss/vim-floaterm',

  -- color picker
  'uga-rosa/ccc.nvim',


  'nvim-treesitter/nvim-treesitter',


  -- cmake tools
  'Civitasv/cmake-tools.nvim',
})


require('nvim_comment').setup()

require('lualine').setup()
require('barbecue').setup()
require('scrollbar').setup()

require('crates').setup()

require('plugins/configs/auto-complete')
require('plugins/configs/lsp')
require('plugins/configs/file-explorer')
require('plugins/configs/telescope')
require('plugins/configs/rust-tools')
require('plugins/configs/ccc')
require('plugins/configs/nvim-treesitter')
require('plugins/configs/cmake-tools')

-- theme
vim.cmd[[colorscheme tokyonight-night]]
