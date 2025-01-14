return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = false,
        hide_hidden = true,
        hide_by_name = {
          "node_modules",
          "dist",
          "_dist",
          "_dev",
        },
      },
    },
  },
  -- config = function(_, opts)
  --   print("Neo-tree config loaded") -- Проверка загрузки
  --   require("neo-tree").setup(opts)
  -- end,
}
