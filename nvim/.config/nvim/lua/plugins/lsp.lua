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
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function(_, opts)
        require("mason-lspconfig").setup(opts)
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        for _, server in ipairs(servers) do
            vim.lsp.config(server, {
                capabilities = capabilities,
            })
        end

        vim.lsp.enable(servers)
    end
}
