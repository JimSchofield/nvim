-- The function is confusingly named in plenary IMO
-- all it does is "unload" the module
local unload_module = require("plenary.reload").reload_module

function PRINT(lua_data)
  print(vim.inspect(lua_data))
  return lua_data
end

function UNLOAD(module_name)
  unload_module(module_name)
end

function RELOAD(module_name)
  -- I might want to make this smarter to attempt to resolve the filename automatically
  -- this would need to take into account the absolute path of the file
  -- i.e. under vim.fn.stdpath("config").."/lua/*" we just want the "*" parts
  UNLOAD(module_name)
  return require(module_name)
end

-- :lua RELOAD("plugins")
vim.keymap.set('n', '<leader>rr', ':lua RELOAD("plugins")<cr>', { silent = true })
