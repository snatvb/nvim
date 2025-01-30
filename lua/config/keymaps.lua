-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<leader>j", ":HopWord<CR>", { noremap = true, silent = true })

vim.opt.clipboard = "unnamedplus"

-- vim.api.nvim_set_keymap("n", "<leader>R", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  "n",
  "<leader>de",
  "<cmd>lua vim.diagnostic.open_float()<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>p",
  "<cmd>Telescope find_files<CR>",
  { noremap = true, silent = true, desc = "Поиск файлов" }
)

vim.keymap.set("v", "<leader>r", '"_dP<Ecs>', { desc = "Replace selection with clipboard" })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.api.nvim_set_keymap(
  "n",
  "<leader>t",
  ":Floaterminal<CR>",
  { desc = "Toggle floating terminal", noremap = true, silent = true }
)
