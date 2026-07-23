return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- { import "nvchad.blink.lazyspec" },

  -- test new blink
  {
    "hrsh7th/nvim-cmp",
    enabled = false,
  },

  {
    "saghen/blink.cmp",
    version = "1.*",
    event = { "InsertEnter", "CmdLineEnter" },

    dependencies = {
      'Kaiser-Yang/blink-cmp-avante',
      "rafamadriz/friendly-snippets",
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
          require("luasnip").config.set_config(opts)
          require "nvchad.configs.luasnip"
        end,
      },

      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
      },
    },

    opts_extend = { "sources.default" },

    opts = {
      snippets = { preset = "luasnip" },
      cmdline = { enabled = true },
      appearance = { nerd_font_variant = "normal" },
      fuzzy = { implementation = "prefer_rust" },
      sources = { default = { 'avante', "lsp", "snippets", "buffer", "path" },
      providers = {
        avante = {
          module = 'blink-cmp-avante',
          name = 'Avante',
          opts = { }

        }
      }

    },

    keymap = {
      preset = "default",
      ["<CR>"] = { "accept", "fallback" },
      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
      ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    },

    completion = {
      ghost_text = { enabled = true },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
        window = { border = "single" },
      },

      -- from nvchad/ui plugin
      -- exporting the ui config of nvchad blink menu
      -- helps non nvchad users
      menu = require("nvchad.blink").menu,
      list = {
        selection = { preselect = false },
      },
    },
  },
},

{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate"
  -- opts = {
  --   ensure_installed = {
  --     "vim",
  --     "lua",
  --     "vimdoc",
  --     "html",
  --     "css",
  --     "haskell",
  --     "python",
  --     "java",
  --     "zig",
  --     "javascript",
  --     "yaml"
  --   },
  -- },
},

{
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
},

{
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
},

{
  "chomosuke/typst-preview.nvim",
  lazy = false, -- or ft = 'typst'
  version = "1.*",
  opts = {}, -- lazy.nvim will implicitly calls `setup {}`
},

{
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
},

  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end,
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "codecompanion" }
  },

  {
    "folke/zen-mode.nvim",
    cmd = {
      "ZenMode",
    },
    opts = {
      window = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        backdrop = 1,
        width = 85,
        options = {
          number = false,
        },
      },
      plugins = {
        kitty = {
          enabled = true,
          font = "+4",
        },
      },
    },
  },

  {
    "Julian/lean.nvim",
    event = { "BufReadPre *.lean", "BufNewFile *.lean" },

    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
    },

    ---@type lean.Config
    opts = { -- see below for full configuration options
      mappings = true,
    },
  },
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
  },
}
