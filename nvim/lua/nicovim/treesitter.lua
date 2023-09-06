local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = "all",
    sync_install = false,
    ignore_install = { "" },  -- list of parsers to ignore installing
    autopairs = {
        enable = true,
    },
    highlight = {
        enable = true,
        disable = { "" },  -- list of languages that will be disabled
        additional_vim_regex_highlighing = true,
    },
    indent = { enable = true, disable = { "yaml" } },
    rainbow = {
        enable = true,
        colors = { "#b48ead", "#ebcb8b", "#8fbcbb", "#d8dee9" },
    },
    context_commentstring = {
        enable = true,
        enable_automd = false,
    },
}
