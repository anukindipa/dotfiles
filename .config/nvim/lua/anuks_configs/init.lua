require("anuks_configs.remap")
require("anuks_configs.lazy_init")

-- if no file is specified for nvim open neotree
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      vim.cmd("Neotree filesystem reveal left")
    end
  end,
})

vim.opt.background = "dark" -- or "light" for light mode
vim.cmd.colorscheme("oxocarbon")

vim.opt.nu = true                 -- set line numbers
vim.opt.relativenumber = true     -- use relative line numbers

-- Set indentation
vim.opt.tabstop = 4       -- Number of visual spaces per TAB
vim.opt.shiftwidth = 4    -- Number of spaces per indent (>> <<)
vim.opt.expandtab = true  -- Use spaces instead of tabs