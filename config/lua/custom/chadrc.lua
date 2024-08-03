---@type ChadrcConfig
local M = {}

M.ui = { theme = 'decay',
  hl_override =
    {
      Type = { italic = true },
      ["@type.builtin"] = { italic = true },
      Include = { italic = true },
      ["@constructor"] = { italic = true },
      ["@keyword"] = { italic = true },
      ["@keyword.function"] = { italic = true },
      ["@variable.parameter"] = { italic = true },
      Conditional = { italic = true },
      ["@keyword.return"] = { italic = true }
    }
 }

return M
