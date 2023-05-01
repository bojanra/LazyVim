return {
  -- { "rebelot/kanagawa.nvim" },
  -- { "tiagovla/tokyodark.nvim", },
  { "catppuccin/nvim", lazy = true, name = "catppuccin", },
  -- { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin", }, },
  {
    "NTBBloodbath/sweetie.nvim",
    config = function()
      require("sweetie").setup()
    end,
  },
}
