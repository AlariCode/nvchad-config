-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
  DiffChange = {
    bg = "#464414",
    fg = "none",
  },
  DiffAdd = {
    bg = "#103507",
    fg = "none",
  },
  DiffRemoved = {
    bg = "#461414",
    fg = "none",
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
