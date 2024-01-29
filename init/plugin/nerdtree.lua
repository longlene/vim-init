-- lua_source {{{
local vimx = require("artemis")
vimx.g.NERDTreeDirArrowExpandable = '▸'
vimx.g.NERDTreeDirArrowCollapsible = '▾'
vimx.g.NERDTreeIndicatorMapCustom = {
  ["Modified"] = "✹",
  ["Staged"]   = "✚",
  ["Untracked"]= "✭",
  ["Renamed"]  = "➜",
  ["Unmerged"] = "═",
  ["Deleted"]  = "✖",
  ["Dirty"]    = "✗",
  ["Clean"]    = "✔︎",
  ["Unknown"]  = "?"
}
-- vim:set sw=2:
-- }}}
