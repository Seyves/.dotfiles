local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'rust_analyzer',
    'gopls',
    'cssls',
    'lua_ls',
    'vuels'
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

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

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, spread(opts) { desc = "Format" })
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, spread(opts) { desc = "Go to definition" })
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, spread(opts) { desc = "Hover documentation"})
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, spread(opts) { desc = "Next diagnostic" })
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, spread(opts) { desc = "Previous diagnostic" })
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, spread(opts) { desc = "Code actions" })
    vim.keymap.set("n", "<leader>qr", function() vim.lsp.buf.references() end, spread(opts) { desc = "Quicklist references" })
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, spread(opts) { desc = "Rename"})
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
