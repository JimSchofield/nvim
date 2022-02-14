return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'itchyny/lightline.vim'
  use 'junegunn/fzf'
  use { 'junegunn/fzf.vim', run = function() vim.fn['fzf#install']() end }
  use 'jiangmiao/auto-pairs'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'tpope/vim-commentary'
  use 'mattn/emmet-vim'
  use 'tpope/vim-fugitive'
  use 'Yggdroot/indentLine'
  use 'mhinz/vim-signify'
  use 'psliwka/vim-smoothie'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'wellle/targets.vim'
  use 'gerw/vim-HiLinkTrace'
  use 'nvim-treesitter/playground'

  -- Make fern pretty
  use 'lambdalisue/fern.vim'
  use 'lambdalisue/nerdfont.vim'
  use 'lambdalisue/fern-renderer-nerdfont.vim'
  use 'lambdalisue/fern-hijack.vim'
end)
