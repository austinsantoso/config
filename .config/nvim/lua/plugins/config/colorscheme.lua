return {
	{
		-- Colorscheme
		'folke/tokyonight.nvim',
		lazy = false,
		opts = { style = "storm" },
		--priority = 1000,
		--config = function()
			--vim.cmd([[colorscheme tokyonight-storm]])
		--end,
	},
	{
		"bluz71/vim-nightfly-guicolors",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme catppuccin]])
		end,
	},
  {
    -- Colorscheme
    'catppuccin/nvim',
    name = "catppuccin",
    lazy = false,
  },
  {
    -- Colorscheme
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme kanagawa]])
    end,
  }
}
