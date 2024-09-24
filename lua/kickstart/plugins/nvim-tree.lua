return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        adaptive_size = true,
      },
      filters = {
        custom = {
          '.git',
          '.cache',
          '__pycache__',
        },
      },
    }
  end,
}
