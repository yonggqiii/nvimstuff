local M = {}
M.base_30 = {
  white = "#000000",
  darker_black = "#ffffff",
  black = "#ffffff", --  nvim bg
  black2 = "#f5f5f5",
  one_bg = "#eeeeee", -- real bg of onedark
  one_bg2 = "#e5e5e5",
  one_bg3 = "#dddddd",
  grey = "#bbbbbb",
  grey_fg = "#aaaaaa",
  grey_fg2 = "#999999",
  light_grey = "#777777",
  red = "#220000",
  baby_pink = "#221111",
  pink = "#222211",
  line = "#dddddd", -- for lines like vertsplit
  green = "#002200",
  vibrant_green = "#112211",
  nord_blue = "#111122",
  blue = "#000022",
  yellow = "#222200",
  sun = "#221100",
  purple = "#220022",
  dark_purple = "#110011",
  teal = "#002222",
  orange = "#221100",
  cyan = "#001122",
  statusline_bg = "#FFFFFF",
  lightbg = "#ffffff",
  pmenu_bg = "#002200",
  folder_bg = "#000022",
  lavender = "#221122",
}

M.base_16 = {
  base00 = "#ffffff",
  base01 = "#eeeeee",
  base02 = "#dddddd",
  base03 = "#cccccc",
  base04 = "#bbbbbb",
  base05 = "#444444",
  base06 = "#333333",
  base07 = "#222222",
  base08 = "#220000",
  base09 = "#221100",
  base0A = "#162200",
  base0B = "#002200",
  base0C = "#002222",
  base0D = "#000022",
  base0E = "#220022",
  base0F = "#220011",
}

M.polish_hl = {
  ["@variable"] = { fg = M.base_30.lavender },
  ["@property"] = { fg = M.base_30.teal },
  ["@variable.builtin"] = { fg = M.base_30.red },
  ["@operator"] = { fg = M.base_16.base0F },
  Operator = { fg = M.base_16.base0F },
}

M.type = "light"

M = require("base46").override_theme(M, "bow")

return M
