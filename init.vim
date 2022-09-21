"===== Theme ====
set termguicolors
colorscheme quarantine

source ~/.config/nvim/vim/vimrc.vim

lua require('globals')
lua require('plugins')
lua require('lsp')
lua require('completion')
lua require('keys')
lua require('crowdstrike')
lua require('treesitter')
lua require('config')
