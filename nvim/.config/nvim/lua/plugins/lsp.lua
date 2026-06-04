package.path = package.path .. ";../?.lua"

return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = require("config.lsp-list") 
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
