-- lua_source {{{
local vimx = require("artemis")
vimx.fn.wilder.setup({modes = {':', '/', '?'}})
local accent = vimx.fn.wilder.make_hl('WilderAccent', 'Pmenu', {vimx.dict(), vimx.dict(), {foreground = '#f03e3e'}})
local renderer = vimx.fn.wilder.popupmenu_renderer({
  highlighter = vimx.fn.wilder.basic_highlighter(),
  highlights = {
    reject_key = '<C-g>',
    accent = accent
  },
  right = {' ', vimx.fn.wilder.popupmenu_scrollbar()},
  pumblend = 20,
})
vimx.fn.wilder.set_option('renderer', renderer)
-- vim:set sw=2:
-- }}}
