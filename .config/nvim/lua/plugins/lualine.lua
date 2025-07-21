return{
  'nvim-lualine/lualine.nvim',
  config = function()
  require('lualine').setup({
  options ={
      theme = "moonfly"
  },
  sections = {
      lualine_c = {{
          'filename',
          path = 1,    -- optional: relative path
          symbols = {
              modified = ' *',
              readonly = '[RO]',
              unnamed  = '[No Name]',
          }
      }},
  }
  })
  end
}
