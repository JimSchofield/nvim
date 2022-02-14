"===== Theme ====
set termguicolors
colorscheme quarantine

source ~/.config/nvim/vim/vimrc.vim

lua require('plugins')
lua require('keys')
lua require('treesitter')
lua require('config')

