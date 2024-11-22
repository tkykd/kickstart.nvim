return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Open or close the tree' }),
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
      update_focused_file = {
        enable = true,
      },
    }
  end,
}
