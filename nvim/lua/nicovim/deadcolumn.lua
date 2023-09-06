local status_ok, deadcolumn = pcall(require, "deadcolumn")
if not status_ok then
    return
end

deadcolumn.setup({
    scope = 'line',
    modes = { 'i', 'ic', 'ix', 'R', 'Rc', 'Rx', 'Rv', 'Rvc', 'Rvx' },
    blending = {
        threshold = 80,
        colorcode = '#bf616a',
        hlgroup = {
            'NonText',
            'background',
        },
    },
    warning = {
        alpha = 0.0,
        offset = 0,
        colorcode = '#bf616a',
        hlgroup = {
            'Error',
            'background',
        },
    },
    extra = {
        follow_tw = nil,
    },
})
