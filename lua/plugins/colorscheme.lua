return {
  { "rebelot/kanagawa.nvim" },
  { "tiagovla/tokyodark.nvim" },
  { "catppuccin/nvim", lazy = true, name = "catppuccin" },
  {
    -- https://github.com/projekt0n/github-nvim-theme
    "projekt0n/github-nvim-theme",
    -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        options = {
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
          },
        },
      })
      -- vim.cmd("colorscheme github_dark")
    end,
  },
  {
    --
    "Mofiqul/vscode.nvim",
    -- lazy = false,
    config = function()
      require("vscode").setup({
        style = "light",

        -- Enable italic comment
        italic_comments = true,

        -- Disable nvim-tree background color
        disable_nvimtree_bg = true,
      })
      -- vim.cmd("colorscheme vscode")
    end,
  },
  {
    -- https://github.com/marko-cerovac/material.nvim
    "marko-cerovac/material.nvim",
    -- lazy = false,   -- uncomment
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("material").setup({
        high_visibility = {
          lighter = true, -- Enable higher contrast text for lighter style
          darker = true, -- Enable higher contrast text for darker style
        },
      })
      -- vim.cmd("colorscheme material-lighter")
    end,
  },
}
