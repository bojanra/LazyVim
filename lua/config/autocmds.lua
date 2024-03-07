vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- stop hidding source
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "markdown" },
  callback = function()
    --  vim.wo.conceallevel = 0
  end,
})
