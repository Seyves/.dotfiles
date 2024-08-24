return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        -- { "folke/neodev.nvim", opts = {} },
    },
    config = function()
        -- import lspconfig plugin
        local lspconfig = require("lspconfig")

        -- import mason_lspconfig plugin
        local mason_lspconfig = require("mason-lspconfig")

        -- import cmp-nvim-lsp plugin
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local function spread(template)
            local result = {}
            for key, value in pairs(template) do
                result[key] = value
            end

            return function(table)
                for key, value in pairs(table) do
                    result[key] = value
                end
                return result
            end
        end

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                -- Buffer local mappings.
                -- See `:help vim.lsp.*` for documentation on any of the below functions
                local opts = { buffer = ev.buf, silent = true }

                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end,
                    spread(opts) { desc = "Go to definition" })
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end,
                    spread(opts) { desc = "Hover documentation" })
                vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end,
                    spread(opts) { desc = "Next diagnostic" })
                vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end,
                    spread(opts) { desc = "Previous diagnostic" })
                vim.keymap.set("n", "<leader>a", function() vim.lsp.buf.code_action() end,
                    spread(opts) { desc = "Code actions" })
                vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end,
                    spread(opts) { desc = "Quicklist references" })
                vim.keymap.set("n", "cn", function() vim.lsp.buf.rename() end, spread(opts) { desc = "Rename" })
                vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            end,
        })

        -- used to enable autocompletion (assign to every lsp server config)
        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- Change the Diagnostic symbols in the sign column (gutter)
        -- (not in youtube nvim video)
        local signs = { Error = "E", Warn = "W", Hint = "H", Info = "I" }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        mason_lspconfig.setup_handlers({
            -- default handler for installed servers
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities,
                })
            end,
            ["emmet_language_server"] = function()
                -- configure emmet language server
                lspconfig["emmet_language_server"].setup({
                    capabilities = capabilities,
                    filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "vue" },
                })
            end,
            ["lua_ls"] = function()
                -- configure lua server (with special settings)
                lspconfig["lua_ls"].setup({
                    capabilities = capabilities,
                    settings = {
                        Lua = {
                            -- make the language server recognize "vim" global
                            diagnostics = {
                                globals = { "vim" },
                            },
                            completion = {
                                callSnippet = "Replace",
                            },
                        },
                    },
                })
            end,
        })

        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
            border = "rounded",
            silent = true,
        })

        vim.diagnostic.config({
            virtual_text = true,
            float = {
                header = "",
                border = "rounded",
                focusable = true,
            },
        })
    end,
}
