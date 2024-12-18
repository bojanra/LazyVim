-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Colorscheme izbereš tako, da daš pri modulu lazy na false in
-- ga izbereš s commando spodaj
-- vim.cmd("colorscheme catppuccin")
-- vim.cmd("colorscheme vscode")
-- vim.cmd("colorscheme tokyodark")
vim.cmd("colorscheme onedark")
-- vim.cmd("colorscheme github_dark_dimmed")
--
--  git fetch --tags
--  git checkout nightly

-- vim.g.lazygit_theme = false

vim.filetype.add({
  pattern = {
    [".*%.html%.ep"] = "html",
    [".*%.tt"] = "html",
    [".*%.md"] = "markdown",
  },
})

vim.opt.title = true
vim.opt.titlestring = [[%f %h%m%r%w %{v:progname} (%{tabpagenr()} of %{tabpagenr('$')})]]
