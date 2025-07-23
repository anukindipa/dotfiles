return{
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup {
                color_overrides = {
                    latte = {},
                    frappe = {},
                    macchiato = {},
                    mocha = {
                        base = "#201e21",
                        mantle = "#19171a",
                        crust = "#141414",
                    },
                }
            }
        end
}
