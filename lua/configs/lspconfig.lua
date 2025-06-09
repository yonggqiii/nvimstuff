require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "hls", "zls", "ts_ls" }
vim.lsp.enable(servers)
