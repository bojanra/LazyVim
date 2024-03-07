-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Colorscheme izbereš tako, da daš pri modulu lazy na false in
-- ga izbereš s commando spodaj
-- vim.cmd("colorscheme catppuccin")
-- vim.cmd("colorscheme vscode")
-- vim.cmd("colorscheme tokyodark")

vim.filetype.add({
  pattern = {
    [".*%.html%.ep"] = "html",
    [".*%.tt"] = "html",
    [".*%.md"] = "markdown",
  },
})

vim.opt.title = true
vim.opt.titlestring = [[%f %h%m%r%w %{v:progname} (%{tabpagenr()} of %{tabpagenr('$')})]]

local neogit = require("neogit")
neogit.setup({})

require("lualine").setup({
  tabline = {
    lualine_a = {},
    lualine_b = { "branch" },
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  sections = { lualine_c = { "lsp_progress" }, lualine_x = { "tabnine" } },
})

local lspkind = require("lspkind")

local source_mapping = {
  buffer = "[Buffer]",
  nvim_lsp = "[LSP]",
  luasnip = "[Lua]",
  cmp_tabnine = "[TN]",
  path = "[Path]",
  vim_dadbod_completion = "[DB]",
}

require("cmp").setup({
  formatting = {
    format = function(entry, vim_item)
      -- if you have lspkind installed, you can use it like
      -- in the following line:
      vim_item.kind = lspkind.symbolic(vim_item.kind, { mode = "symbol" })
      vim_item.menu = source_mapping[entry.source.name]
      if entry.source.name == "cmp_tabnine" then
        local detail = (entry.completion_item.data or {}).detail
        vim_item.kind = ""
        if detail and detail:find(".*%%.*") then
          vim_item.kind = vim_item.kind .. " " .. detail
        end

        if (entry.completion_item.data or {}).multiline then
          vim_item.kind = vim_item.kind .. " " .. "[ML]"
        end
      end
      local maxwidth = 80
      vim_item.abbr = string.sub(vim_item.abbr, 1, maxwidth)
      return vim_item
    end,
  },
})
