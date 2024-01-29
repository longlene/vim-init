-- lua_add {{{
local vimx = require("artemis")

vimx.g.lightline = {
  colorscheme = "default",
  active = {
    left = {
      {"mode", "paste", "recording"},
      {"coc_status", "current_function", "readonly", "filename"},
    },
  },
  component_function = {
    coc_status = "coc#status",
    current_function = "init#current_function",
  },
}
-- vim:set sw=2:
-- }}}
