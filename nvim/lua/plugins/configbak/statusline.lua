-- Lualine Configuration 
-- This configuration is mainly implemented from their github repository.

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            'NvimTree',
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {
        lualine_a = {
            {
                'tabs',
                tab_max_length=40,
                mode = 2,
                path = 0,
                use_mode_colors = true,
                tabs_color = {
                    active = 'ayu',
                },


                show_modified_status = true,  -- Shows a symbol next to the tab name if the file has been modified.
                symbols = {
                    modified = '[+]',  -- Text to show when the file is modified.
                },
            }
        }
    },
    winbar = {
    },
    inactive_winbar = {
    },
    extensions = {}
}

