return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = { "lua", "cpp", "python", "json", "c", "markdown_inline" },
            install_dir = vim.fn.stdpath('data') .. '/site',
            vim.api.nvim_create_autocmd('FileType', {
                pattern = { '<filetype>' },
                callback = function() vim.treesitter.start() end,
            })
        })
    end,
}
