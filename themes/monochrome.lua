-- credit to original theme for existing : https://github.com/kdheepak/monochrome.nvim
-- NOTE: This is a modified version of it

local M = {}

M.base_30 = {
  white = "#D8DEE9",
  darker_black = "#1a1a1a",
  black = "#262626", --  nvim bg
  black2 = "#323232",
  one_bg = "#3A3A3A",
  one_bg2 = "#404040",
  one_bg3 = "#454545",
  grey = "#4A4A4A",
  grey_fg = "#4F4F4F",
  grey_fg2 = "#606060",
  light_grey = "#677777",
  red = "#ec8989",
  baby_pink = "#eca8a8",
  pink = "#da838b",
  line = "#2e2e2e", -- for lines like vertsplit
  green = "#c9d36a",
  vibrant_green = "#eff6ab",
  blue = "#8abae1",
  nord_blue = "#a5c6e1",
  yellow = "#ffe6b5",
  sun = "#eff6ab",
  purple = "#e1bee9",
  dark_purple = "#db9fe9",
  teal = "#6484a4",
  orange = "#efb6a0",
  cyan = "#9aafe6",
  statusline_bg = "#1e1e1e",
  lightbg = "#2e2e2e",
  pmenu_bg = "#859ba2",
  folder_bg = "#7797b7",
}

M.base_16 = {
  base00 = "#262626",
  base01 = "#2d2D2D",
  base02 = "#323232",
  base03 = "#4A4A4A",
  base04 = "#505050",
  base05 = "#bfc5d0",
  base06 = "#c7cdd8",
  base07 = "#ced4df",
  base08 = "#eee8d5",
  base09 = "#B8B7B1",
  base0A = "#859ba2",
  base0B = "#7b9198",
  base0C = "#DFDFDA",
  base0D = "#ced4df",
  base0E = "#DAD4C3",
  base0F = "#ced4df",
}

M.polish_hl = {
  ["@punctuation.bracket"] = { fg = M.base_30.red },
  Operator = { fg = M.base_16.base0B },
  ["@operator"] = { fg = M.base_16.base0B }
}

M.type = "dark"

M = require("base46").override_theme(M, "monochrome")

return M
