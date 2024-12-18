-- Credits to original https://github.com/tiagovla/tokyonight.nvim
-- This is modified version of it

local M = {}
local colors = {
  fg = "#ffffff",
  bg = "#262335",
  alt_fg = "#ffffff",
  alt_bg = "#241B2F",
  line = "#241B2F",
  dark_gray = "#403D4E",
  gray = "#848bbd",
  context = "#848bbd",
  light_gray = "#c8ccd4",
  red = "#fe4450",
  blue = "#2EE2FA",
  green = "#72f1b8",
  cyan = "#abf3fd",
  orange = "#ff8b39",
  peach = "#f97e72",
  yellow = "#ffefae",
  purple = "#ff7edb",
  magenta = "#ff7edb",
  cursor_fg = "#241b2f",
  cursor_bg = "#f97e72",
  sign_add = "#587c0c",
  sign_change = "#0c7d9d",
  sign_delete = "#94151b",
  sign_add_alt = "#73C991",
  sign_change_alt = "#CCA700",
  error = "#db4b4b",
  warn = "#eeaf58",
  info = "#1cbc9b",
  hint = "#4bc1fe",
  error_bg = "#31262d",
  warn_bg = "#32302f",
  info_bg = "#1e3135",
  hint_bg = "#22323f",
  reference = "#322d44",
  success_green = "#14C50B",
  folder_blue = "#42A5F5",
  ui_blue = "#264F78",
  ui2_blue = "#042E48",
  ui3_blue = "#0195F7",
  ui4_blue = "#75BEFF",
  ui5_blue = "#083C5A",
  ui_orange = "#E8AB53",
  ui2_orange = "#613214",
  ui_purple = "#B180D7",
}
M.base_30 = {
  white = colors.fg,
  darker_black = colors.alt_bg,
  black = colors.bg, --  nvim bg #1a1b26
  black2 = "#1f2336",
  one_bg = "#24283b",
  one_bg2 = "#414868",
  one_bg3 = "#353b45",
  grey = "#bbbbbb", -- "#40486a",
  grey_fg = "#cccccc", --"#565f89",
  grey_fg2 = "#dddddd",-- "#4f5779",
  light_grey = "#eeeeee",--"#545c7e",
  red = colors.red,
  baby_pink = colors.peach,
  pink = colors.cursor_bg,
  line = "#AAAAAA", -- for lines like vertsplit
  green = colors.green,
  vibrant_green = colors.sign_add_alt,
  nord_blue = colors.hint,
  blue = colors.blue,
  yellow = colors.yellow,
  sun = colors.ui_orange,
  purple = colors.purple,
  dark_purple = colors.purple,
  teal = colors.info,
  orange = colors.orange,
  cyan = colors.cyan,
  statusline_bg = "#1d1e29",
  lightbg = "#32333e",
  pmenu_bg = colors.ui4_blue,
  folder_bg = colors.folder_blue,
}

M.base_16 = {
  base00 = colors.bg,
  base01 = "#16161e",
  base02 = "#2f3549",
  base03 = "#444b6a",
  base04 = "#787c99",
  base05 = "#dfefff", --"#a9b1d6",
  base06 = "#cbccd1",
  base07 = "#d5d6db",
  base08 = colors.red,
  base09 = colors.orange,
  base0A = colors.yellow,
  base0B = colors.green,
  base0C = colors.cyan,
  base0D = colors.blue,
  base0E = colors.purple,
  base0F = colors.peach,
}

M.polish_hl = {
  ["@variable"] = { fg = M.base_16.base05 },
  ["@punctuation.bracket"] = { fg = M.base_30.purple },
  ["@function.method.call"] = { fg = M.base_30.red },
  ["@function.call"] = { fg = M.base_30.blue },
  ["@constant"] = { fg = M.base_30.orange },
  ["@variable.parameter"] = { fg = M.base_30.orange },
  Operator = { fg = M.base_16.base0F },
  ["@operator"] = { fg = M.base_16.base0F }
}

M.type = "dark"

M = require("base46").override_theme(M, "tokyonight")

return M
