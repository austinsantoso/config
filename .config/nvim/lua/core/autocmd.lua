-----------------------------------------------------------
-- Autocommand functions
-----------------------------------------------------------

-- Define autocommands with Lua APIs
-- See: h:api-autocmd, h:augroup

local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Remove whitespace on save
--[[
autocmd('BufWritePre', {
  pattern = '',
  command = ":%s/\\s\\+$//e"
})
]]
--

-- clear jump list on start
--[[
autocmd('VimEnter', {
	command = "clearjumps"
})
]]
--
