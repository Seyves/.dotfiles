-- Loading lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    { "catppuccin/nvim",  as = "catppuccin" },
    'kvrohit/mellow.nvim',
    { 'rose-pine/neovim', as = 'rose-pine' },
    'Yazeed1s/oh-lucy.nvim',
    'nyoom-engineering/oxocarbon.nvim',
    'norcalli/nvim-colorizer.lua',
    'xiyaowong/transparent.nvim',
    'Wansmer/treesj',
    'aktersnurra/no-clown-fiesta.nvim',
    'mountain-theme/vim',
    'ggandor/leap.nvim',

    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    --'nvim-treesitter/nvim-treesitter-context',

    'tpope/vim-fugitive',
    'ThePrimeagen/vim-be-good',
    'nvim-lua/plenary.nvim',
    'ThePrimeagen/harpoon',
    'mattn/emmet-vim',
    {
        'goolord/alpha-nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'nvim-lua/plenary.nvim'
        },
    },
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
    'mbbill/undotree',
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
})
