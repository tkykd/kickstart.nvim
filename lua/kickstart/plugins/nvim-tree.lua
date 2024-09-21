return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    view = {
        width = 40,
        side = 'right',
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  }