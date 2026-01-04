require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "hls", "zls", "ts_ls", "dartls" }
vim.lsp.enable(servers)
