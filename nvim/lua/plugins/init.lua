-- install lazy plugin manager and setup

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

-- Added this line to our initial lazy-config.lua file (Remove this comment if you want to)
require("lazy").setup({ { import = 'plugins/config' }, { import = "plugins/config/lsp"} }, {
})

-- load plugin config
require 'plugins/config'
