-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.css", "*.scss", "*.sass" },
  callback = function()
    local filepath = vim.fn.expand("%:p")
    if vim.fn.executable("stylelint") == 1 or vim.fn.filereadable("./node_modules/.bin/stylelint") == 1 then
      local cmd = "npx stylelint --fix " .. filepath
      vim.fn.system(cmd)
      vim.api.nvim_command("edit!")
    else
      vim.notify("stylelint is not installed!", vim.log.levels.WARN)
    end
  end,
})
