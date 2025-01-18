-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.env.VSCODE_IPC_HOOK then
    require("config.vscode-cfg")
end
