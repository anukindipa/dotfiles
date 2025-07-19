return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = { "lua", "cpp", "python", "json", "c", "markdown_inline" },
        })
    end,
}