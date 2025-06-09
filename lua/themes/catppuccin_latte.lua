local M = {}
local stuff = {
  rosewater = "#dc8a78",
  flamingo = "#dd7878",
  pink = "#ea76cb",
  mauve = "#8839ef",
  red = "#d20f39",
  maroon = "#e64553",
  peach = "#fe640b",
  yellow = "#df8e1d",
  green = "#40a02b",
  teal = "#179299",
  sky = "#04a5e5",
  sapphire = "#209fb5",
  blue = "#1e66f5",
  lavender = "#7287fd",
  text = "#4c4f69",
  subtext1 = "#5c5f77",
  subtext0 = "#6c6f85",
  overlay2 = "#7c7f93",
  overlay1 = "#8c8fa1",
  overlay0 = "#9ca0b0",
  surface2 = "#acb0be",
  surface1 = "#bcc0cc",
  surface0 = "#ccd0da",
  base = "#eff1f5",
  mantle = "#e6e9ef",
  crust = "#dce0e8",
}
M.base_30 = {
  white = "#4c4f69",
  darker_black = "#eff1f5",
  black = "#eff1f5", --  nvim bg
  black2 = "#dce0e8",
  one_bg = "#ccd0da", -- real bg of onedark
  one_bg2 = "#bcc0cc",
  one_bg3 = "#acb0be",
  grey = "#9ca0b0",
  grey_fg = "#8c8fa1",
  grey_fg2 = "#7c7f93",
  light_grey = "#6c6f85",
  red = "#d20f39",
  baby_pink = "#e64553",
  pink = "#ea76cb",
  line = "#dce0e8", -- for lines like vertsplit
  green = "#40a02b",
  vibrant_green = "#309025",
  nord_blue = "#04a5e5",
  blue = "#1e66f5",
  yellow = "#df8e1d",
  sun = "#fe640b",
  purple = "#8839ef",
  dark_purple = "#dc8a78",
  teal = "#179299",
  orange = "#dd7878",
  cyan = "#209fb5",
  statusline_bg = "#FFFFFF",
  lightbg = "#dce0e8",
  pmenu_bg = "#40a02b",
  folder_bg = "#1e66f5",
  lavender = "#7287fd",
}

M.base_16 = {
  base00 = "#eff1f5",
  base01 = "#e6e9ef",
  base02 = "#dce0e8",
  base03 = "#ccd0da",
  base04 = "#bcc0cc",
  base05 = "#6c6f85",
  base06 = "#5c5f77",
  base07 = "#4c4f69",
  base08 = "#d20f39",
  base09 = "#fe640b",
  base0A = "#df8e1d",
  base0B = "#40a02b",
  base0C = "#179299",
  base0D = "#1e66f5",
  base0E = "#8839ef",
  base0F = "#e64553",
}

M.polish_hl = {
  ["@variable"] = { fg = M.base_30.lavender },
  ["@property"] = { fg = M.base_30.teal },
  ["@variable.builtin"] = { fg = M.base_30.red },
  ["@operator"] = { fg = M.base_16.base0F },
  Operator = { fg = M.base_16.base0F },
}

M.type = "light"

M = require("base46").override_theme(M, "catppuccin_latte")

return M
