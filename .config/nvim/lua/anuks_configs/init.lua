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

