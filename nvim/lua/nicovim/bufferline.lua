
local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    return
end

bufferline.setup {
    options = {
        mode = "buffers",
        style_preset = bufferline.style_preset.minimal,
        themable = true,
        numbers = "buffer_id",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
            -- icon = ICON
            style = "none",
        },
        buffer_close_icon = "󰅖",
        modified_icon = "",
        close_icon = "󰅖",
        left_trunc_marker = "󰳝 ",
        right_trunc_marker = "󰳟 ",
        name_name_length = 18,
        max_prefix_length = 15,
        truncate_names = true,
        tab_size = 18,
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = true,
        offsets = { {
            filetype = "NvimTree",
            text = "",
            padding = 1
        } },
        color_icons = true,
        show_buffer_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true,
        persist_buffer_sort = true,
        move_wraps_at_ends = false,
        separator_style = "slant",
        enforce_regular_tabs = true,
        always_show_bufferline = true,
    },
    highlights = {
        fill = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        background = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        close_button = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        close_button_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        close_button_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        buffer_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        buffer_selected = {
            fg = "#2e3440",
            bg = "#88c0d0",
            bold = false,
            italic = false,
        },
        numbers = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        numbers_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        numbers_selected = {
            fg = "#2e3440",
            bg = "#88c0d0",
            bold = false,
            italic = false,
        },
        diagnostic = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        diagnostic_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        diagnostic_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        hint = {
            fg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        hint_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        hint_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        hint_diagnostic = {
            fg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        hint_diagnostic_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        hint_diagnostic_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        info = {
            fg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        info_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        info_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        info_diagnostic = {
            fg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        info_diagnostic_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        info_diagnostic_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        warning = {
            fg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        warning_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        warning_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        warning_diagnostic = {
            fg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        warning_diagnostic_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        warning_diagnostic_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        error = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            sp = '<colour-value-here>',
        },
        error_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        error_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        error_diagnostic = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            sp = '<colour-value-here>',
        },
        error_diagnostic_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        error_diagnostic_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            sp = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        modified = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        modified_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        modified_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        duplicate_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            italic = true,
        },
        duplicate_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            italic = true,
        },
        duplicate = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            italic = true,
        },
        separator_selected = {
            fg = {
                attribute = "guifg",
                highlight = "BufferInactive"
            },
            bg = "#88c0d0",
        },
        separator_visible = {
            fg = "#5e81ac",
            bg = "#5e81ac",
        },
        separator = {
            fg = "#5381ac",
            bg = "#5e81ac",
        },
        indicator_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        indicator_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        pick_selected = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        pick_visible = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        pick = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
            bold = true,
            italic = true,
        },
        offset_separator = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        },
        trunc_marker = {
            fg = '<colour-value-here>',
            bg = '<colour-value-here>',
        }
    },
}
