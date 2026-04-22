return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = { "lua", "cpp", "python", "json", "c", "markdown_inline", "latex", "markdown" },
        })
        -- Enable Treesitter folding globally
        vim.opt.foldmethod = "expr"
        vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        
        -- Start with all folds open (prevents files from opening collapsed)
        vim.opt.foldlevel = 99
    end,
}
