return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    init = function()
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_filetypes = { "markdown" }
      -- vim.g.mkdp_markdown_css = "/home/ramsakb/03_work/02_cherry/01_vm/doc/markdown-alt.css"
      vim.g.mkdp_markdown_css = "/home/ramsakb/.config/nvim/lua/plugins/mytheme.css"
      -- vim.g.mkdp_theme = "dark"
    end,
  },
}
