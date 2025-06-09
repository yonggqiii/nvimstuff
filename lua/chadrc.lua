-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

local catppuccin_theme = {
  base_30 = {
    black = "#1E1E2E",
  },
  base_16 = {
    base00 = "#1E1E2E",
  },
  polish_hl = {
    treesitter = {
      ["@variable"] = { fg = "#c7d1ff" },
      ["@property"] = { fg = "#FAE3B0" },
      ["@variable.builtin"] = { fg = "#F38BA8" },
      ["@operator"] = { fg = "#F38BA8" },
      Operator = { fg = "#F38BA8" },
      Comment = { fg = "#B5E8E0" },
      ["@comment"] = { fg = "#B5E8E0" },
    },
  },
}

local rosepine_theme = {
  base_30 = {
    line = "#42343c",
  },
  base_16 = {
    base0B = "#6aadc8",
    base0F = "#ebbcba",
  },

  polish_hl = {
    treesitter = {
      ["@operator"] = { fg = "#c4a7e7" },
      Operator = { fg = "#c4a7e7" },
      Comment = { fg = "#a37190" },
      ["@comment"] = { fg = "#a37190" },
    },
  },
}

local monochrome_theme = {
  base_30 = {
    black = "#262626", --  nvim bg
    black2 = "#323232",
    one_bg = "#3A3A3A",
    one_bg2 = "#404040",
    one_bg3 = "#454545",
    grey = "#4A4A4A",
    grey_fg = "#4F4F4F",
  },
  base_16 = {
    base00 = "#262626",
    base01 = "#2d2D2D",
    base02 = "#323232",
    base03 = "#4A4A4A",
    base04 = "#505050",
  },
  polish_hl = {
    treesitter = {
      Operator = { fg = "#efb6a0" },
      ["@operator"] = { fg = "#efb6a0" },
      Comment = { fg = "#859ba2" },
      ["@comment"] = { fg = "#859ba2" },
    },
  },
}

local decay_theme = {
  base_30 = {
    black = "#0d0f18", --  nvim bg
  },
  base_16 = {
    base00 = "#0d0f18",
  },
  polish_hl = {
    treesitter = {
      Comment = { fg = "#859ba2" },
      ["@comment"] = { fg = "#859ba2" },
    },
  },
}

local gruvbox = {
  base_30 = {
    black = "#272727", --  nvim bg
  },
  base_16 = {
    base00 = "#272727",
  },
  polish_hl = {
    treesitter = {
      Comment = { fg = "#859ba2" },
      ["@comment"] = { fg = "#859ba2" },
    },
  },
}

local oceanic_theme = {
  base_30 = {
    black = "#ffffff", --  nvim bg
  },
  base_16 = {
    base00 = "#ffffff",
  },
}

local eldritch_theme = {
  base_30 = {
    black = "#000000", --  nvim bg
  },
  base_16 = {
    base00 = "#000000",
  },
}

local ayu_theme = {
  base_30 = {
    black = "#faf4ed", --  nvim bg
  },
  base_16 = {
    base00 = "#faf4ed",
  },
}

local tokyonight = {
  base_30 = {
    black = "#24283b", --  nvim bg
  },
  base_16 = {
    base00 = "#24283b",
  },
}
local themes = {
  catppuccin = catppuccin_theme,
  rosepine = rosepine_theme,
  monochrome = monochrome_theme,
  decay = decay_theme,
  gruvbox = gruvbox,
  eldritch = eldritch_theme,
  ayu_light = ayu_theme,
  tokyonight = tokyonight,
}
themes["oceanic-next-light"] = oceanic_theme

M.base46 = {
  theme = "catppuccin",

  changed_themes = themes,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.nvdash = { load_on_startup = true }
-- M.ui = {
--   tabufline = {
--     lazyload = false,
--   },
-- }

return M
