-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.background = "dark"
vim.opt.termguicolors = true
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.backupcopy = "yes"

if vim.fn.has("macunix") == 1 then
  vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
  vim.opt.undofile = true
end
