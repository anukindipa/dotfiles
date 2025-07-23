return{
    {
        -- manages lsp servers and similar
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        -- translates nvim-lspconfig server names to mason.nvim names
        -- automatically install and enable lsp servers
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim" },
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls",
                "clangd",
                "marksman", -- for markdown
            },
            }
            )
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            if vim.env.VSCODE_PID then
                -- skip setting up LSPs inside VSCode
                return
            end
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.marksman.setup({})
        end
    }

}
