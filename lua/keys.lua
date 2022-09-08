local map = function(key)
  -- get the extra options
  local opts = {noremap = true}
  for i, v in pairs(key) do
    if type(i) == 'string' then opts[i] = v end
  end

  -- basic support for buffer-scoped keybindings
  local buffer = opts.buffer
  opts.buffer = nil

  if buffer then
    vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
  else
    vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
  end
end

map({ 'n', '<leader>q', ':q<CR>'})
map({ 'n', '<Leader>w', ':w<CR>'})
map({ 'n', '<Leader>s', ':source ~/.config/nvim/init.vim<CR>'})
map({'n', '<leader>vim', ':tabe ~/.config/nvim/<CR>' })
map({'n', '<leader>x', ':x<CR>' })
map({'n', '<leader>b', ':Buffers<CR>' })
map({'n', '<leader>f', ':Files<CR>' })
map({'n', '<leader>rg', ':Rg<CR>' })
map({'n', '<leader>h', ':History<CR>' })
map({'n', '<leader>p', ':Prettier<CR>' })
map({'n', '<leader>e', ':Explore<CR>' })
map({'n', '<leader>t', ':Telescope<CR>' })

-- opening file drawers
map({'n', '<leader>n', ':NERDTreeFind<CR>' })

-- show buffer path
map({'n', '<leader>path', ':echo expand("%:p")<CR>' })

-- Fugitive
map({ 'n', '<leader>gs', ':Git<CR>' })
map({ 'n', '<leader>gc', ':Git commit<CR>' })
map({ 'n', '<leader>gca', ':Git commit --amend<CR>' })
map({ 'n', '<leader>gb', ':Git blame<CR>' })

-- Clear search
map({ 'n', '<leader>cs', ':noh<CR>' })

-- Color highlighting and debugging
map({ 'n', '<leader>ch', ' :ColorToggle<CR>' })
-- nnoremap <leader>testc :so $VIMRUNTIME/syntax/hitest.vim<CR>
