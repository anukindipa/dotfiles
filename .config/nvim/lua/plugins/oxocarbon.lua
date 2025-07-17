return {
    {
        "nyoom-engineering/oxocarbon.nvim",
        name = "oxocarbon",
	lazy = false,
        priority = 1000,
        config = function()
            vim.opt.background = "dark" -- or "light" for light mode
            vim.cmd.colorscheme("oxocarbon")
        end,
    },
}
