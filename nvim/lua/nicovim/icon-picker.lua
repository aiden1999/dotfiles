local status_ok, icon_picker = pcall(require, "icon-picker")
if not status_ok then
    return
end

local opts = { noremap = true, silent = true}

icon_picker.setup = {
    vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts),
    vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts),--> Yank the selected icon into register
    vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts),
}
