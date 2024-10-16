return {
  {
    "sainnhe/everforest",
    config = function()
      vim.g.everforest_transparent_background = 1
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
