return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.filesystem = {
      follow_current_file = true,
      hijack_netrw_behavior = "open_default",
      use_libuv_file_watcher = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
          "node_modules",
          ".DS_Store",
        },
        always_show_by_pattern = { -- uses glob style patterns
          ".env*",
        },
      },
    }
  end,
}
