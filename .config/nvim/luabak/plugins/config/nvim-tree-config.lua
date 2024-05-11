-- nvim-tree-config.lua

return {
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

  config = function()

    local status_ok, nvim_tree = pcall(require, "nvim-tree")
    if not status_ok then
        print("nvim-tree status ok fail")
        return
    end

    local function my_on_attach(bufnr)
        local api = require "nvim-tree.api"

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        vim.keymap.set('n', '<tab>', '<cmd>tabnext<cr>', { buffer = bufnr, noremap = true, silent = true, nowait = true })-- disable tab, tab to switch tab
    end


    nvim_tree.setup {
      update_focused_file = {
        enable = true,
        update_cwd = false,
      },
      renderer = {
        root_folder_modifier = ":t",
     -- These icons are visible when you install web-devicons
        icons = {
          glyphs = {
            default = "",
            symlink = "",
            folder = {
              arrow_open = "",
              arrow_closed = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "",
              staged = "S",
              unmerged = "",
              renamed = "➜",
              untracked = "U",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      view = {
        width = 30,
        side = "left",
      },
      on_attach = my_on_attach,
    }

  end,
}
