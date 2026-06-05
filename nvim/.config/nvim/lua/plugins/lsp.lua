package.path = package.path .. ";../?.lua"
local servers = require("config.lsp-list")

return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = servers,
        automatic_installation = true,
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        {
            "neovim/nvim-lspconfig",
        },
    },
}
