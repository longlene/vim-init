-- lua_add {{{
local vimx = require("artemis")
vimx.g.vimwiki_list = {
  {
    path = '~/Documents/vimwiki',
    ext = '.wiki',
    syntax = 'markdown'
  }
}
vimx.g.vimwiki_use_mouse = 1
vimx.g.vimwiki_camel_case = 0
vimx.g.vimwiki_hl_cb_checked = 1
vimx.g.vimwiki_CJK_length = 1
-- vim:set sw=2:
-- }}}
