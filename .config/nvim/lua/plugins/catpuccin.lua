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
                        base = "#19171a",
                        mantle = "#141414",
                        crust = "#131313",
                    },
                }
            }
        end
}
