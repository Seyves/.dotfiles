return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")

        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                'tsserver',
                'rust_analyzer',
                'gopls',
                'cssls',
                'lua_ls',
                'vuels',
                'tailwindcss',
                'emmet_language_server'
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier",
                "prettierd",
                "sql-formatter",
                "eslint_d",
            },
        })
    end
}
