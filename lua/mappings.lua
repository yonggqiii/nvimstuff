require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "kj", "<ESC>")

-- Flash
map({ "n", "x", "o" }, "<leader>fs", "<cmd>lua require('flash').jump()<cr>", { desc = "Flash Search" })
map({ "n", "x", "o" }, "<leader>fS", "<cmd>lua require('flash').treesitter()<cr>", { desc = "Flash Treesitter" })

-- Trouble
map("n", "<leader>tr", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Trouble Diagnostics" })
map("n", "<leader>tx", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Trouble Bugger Diagnostics" })
map("n", "<leader>tc", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Trouble Symbols" })
map(
  "n",
  "<leader>tl",
  "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
  { desc = "Trouble LSP Definitions / References / ..." }
)
map("n", "<leader>tL", "<cmd>Trouble loclist toggle<cr>", { desc = "Trouble Location List" })
map("n", "<leader>tq", "<cmd>Trouble qflist toggle<cr>", { desc = "Trouble Quickfix List" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Movement
map({ "n", "x" }, "<Up>", "gk")
map({ "n", "x" }, "<Down>", "gj")
map({ "n", "x" }, "k", "gk")
map({ "n", "x" }, "j", "gj")
map({ "i" }, "<Up>", "<C-O>gk")
map({ "i" }, "<Down>", "<C-O>gj")
map({ "n", "x" }, "$", "g$")
map({ "n", "x" }, "^", "g^")
map({ "n", "x" }, "0", "g0")

-- Typst Preview
map(
  "n",
  "<leader>typ",
  "<cmd>TypstPreviewToggle<cr><cmd>TypstPreviewSyncCursor<cr>",
  { desc = "Typst Toggle live preview" }
)

-- Latex Preview
map("n", "<leader>tex", "<cmd>VimtexCompile<cr>", { desc = "VimTeX Run LaTeX live preview" })
map("n", "<leader>tec", "<Plug>(vimtex-clean-full)", { desc = "VimTeX Clean fully" })
map("n", "<leader>tet", "<Plug>(vimtex-toc-toggle)", { desc = "VimTeX Table of Contents" })

-- Markdown Preview
map("n", "<leader>mm", "<cmd>MarkdownPreviewToggle<cr>", { desc = "MarkdownPreview Toggle live preview" })

-- CopilotChat
map("n", "<leader>ccc", "<cmd>CopilotChatToggle<cr>", { desc = "CopilotChat Toggle" })
map("n", "<leader>ccs", "<cmd>CopilotChatSave<cr>", { desc = "CopilotChat Save" })
map("n", "<leader>ccm", "<cmd>CopilotChatModels<cr>", { desc = "CopilotChat See models" })

-- Zen Mode
map("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "ZenMode Toggle" })
