return require('packer').startup(function(use)
  -- Packer/LSP stuffs
  use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'mfussenegger/nvim-dap'
  use "nvim-lua/plenary.nvim"
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
  use "hrsh7th/cmp-nvim-lua" --:Lua completion engine
  use "onsails/lspkind-nvim"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp-document-symbol"
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }
  use "stevearc/aerial.nvim"

  -- Simple plugins can be specified as strings
  use 'itchyny/lightline.vim'
  use 'junegunn/fzf'
  use { 'junegunn/fzf.vim', run = function() vim.fn['fzf#install']() end }
  use 'jiangmiao/auto-pairs'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'tpope/vim-commentary'
  use {
    "mattn/emmet-vim",
    config = function ()
      vim.g["user_emmet_leader_key"] = "<C-e>"
    end
  }
  use 'tpope/vim-fugitive'
  use 'Yggdroot/indentLine'
  use 'mhinz/vim-signify'
  use 'psliwka/vim-smoothie'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'wellle/targets.vim'
  use 'gerw/vim-HiLinkTrace'
  use 'nvim-treesitter/playground'
  use { 'prettier/vim-prettier',  run = "yarn install --frozen-lockfile --production", branch = "release/0.x"}

  -- Nerdtree
  use 'preservim/nerdtree'
end)
