-- Plugins will be added here
local nvim_cmp = require 'plugins/config/nvim-cmp-config'
local mason = require 'plugins/config/mason-config'
local nvim_lsp = require 'plugins/config/lspconfig'

local plugins = {
  {
    -- Colorscheme
    'folke/tokyonight.nvim',
    lazy = false,
  },
  {
    -- NvimTree (file Tree)
    'nvim-tree/nvim-tree.lua',
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    --opts = function()
    --return require "plugins/config/nvim-tree-config"
    --end,
  },
  -- Telescope (Fuzzy Find)
  --
  {
    'nvim-telescope/telescope.nvim',
    lazy = true,
    dependencies = {
      {'nvim-lua/plenary.nvim'},
    }
  },
  -- Tree sitter
  {
    "nvim-treesitter/nvim-treesitter",
  },
  -- Status line 
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  -- nvim-cmp
  -- Code completion and snippets
  nvim_cmp,
  -- LSP manager
  mason,
  nvim_lsp,
  {
    -- Which-keyy Extension
    'folke/which-key.nvim',
    lazy = true,
  },
  -- better tmux and neovim config
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },
}

return plugins
