-- NOTE: `vim.pack` is an experimental feature.
-- see :help vim.pack
vim.pack.add({
    -- {src = "https://github.com/rose-pine/neovim"},
    -- {src = "https://github.com/scottmckendry/cyberdream.nvim"},
    { src = "https://github.com/folke/which-key.nvim" },
    { src = "https://github.com/VonHeikemen/ts-enable.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-mini/mini.nvim", version = "main" },
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        version = "main",
        data = {
            on_update = function()
                vim.cmd("TSUpdate")
            end,
        },
    },
    { src = "https://github.com/windwp/nvim-ts-autotag" },
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    -- { src = "https://github.com/saghen/blink.nvim" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
    { src = "https://github.com/stevearc/conform.nvim" },
    { src = "https://github.com/folke/trouble.nvim" },
    { src = "https://github.com/j-hui/fidget.nvim" },
    { src = "https://github.com/gelguy/wilder.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/romgrk/fzy-lua-native" },
    { src = "https://github.com/mbbill/undotree" },
    { src = "https://github.com/kdheepak/lazygit.nvim" },
    { src = "https://github.com/b0o/incline.nvim" },
    { src = "https://github.com/folke/todo-comments.nvim" },
    { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
    { src = "https://github.com/christoomey/vim-tmux-navigator" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
})

