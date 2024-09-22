return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    view = {
        adaptive_size = true,
    },
    config = function()
      require("nvim-tree").setup {
	view = {
	  adaptive_size = true,
	},
      }
    end,
  }
