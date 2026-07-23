local M = {}
M.base_30 = {
  white = "#ffffff",
  darker_black = "#000000",
  black = "#000000", --  nvim bg
  black2 = "#080808",
  one_bg = "#111111", -- real bg of onedark
  one_bg2 = "#181818",
  one_bg3 = "#222222",
  grey = "#aaaaaa",
  grey_fg = "#777777",
  grey_fg2 = "#999999",
  light_grey = "#aaaaaa",
  red = "#fff8f8",
  baby_pink = "#fffafa",
  pink = "#fff7f7",
  line = "#222222", -- for lines like vertsplit
  green = "#f8fff8",
  vibrant_green = "#f3fff3",
  nord_blue = "#f8f8ff",
  blue = "#f8f8ff",
  yellow = "#fffff8",
  sun = "#fffaf8",
  purple = "#fff8ff",
  dark_purple = "#fff8ff",
  teal = "#f8ffff",
  orange = "#fffaf8",
  cyan = "#f8ffff",
  statusline_bg = "#333333",
  lightbg = "#000000",
  pmenu_bg = "#f8fff8",
  folder_bg = "#f8f8ff",
  lavender = "#fff8ff",
}

M.base_16 = {
  base00 = "#000000",
  base01 = "#222222",
  base02 = "#333333",
  base03 = "#444444",
  base04 = "#555555",
  base05 = "#eeeeee",
  base06 = "#eeeeee",
  base07 = "#eeeeee",
  base08 = "#fff8f8",
  base09 = "#fffaf8",
  base0A = "#f8fff8",
  base0B = "#f8fff8",
  base0C = "#f8ffff",
  base0D = "#f8f8ff",
  base0E = "#fff8ff",
  base0F = "#fffcf8",
}

-- M.polish_hl = {
--   ["@variable"] = { fg = M.base_30.lavender },
--   ["@property"] = { fg = M.base_30.teal },
--   ["@variable.builtin"] = { fg = M.base_30.red },
--   ["@operator"] = { fg = M.base_16.base0F },
--   Operator = { fg = M.base_16.base0F },
-- }

M.type = "dark"

M = require("base46").override_theme(M, "bow")

return M
