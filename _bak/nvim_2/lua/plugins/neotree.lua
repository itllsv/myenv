return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    close_if_last_window = true,
    popup_border_style = "rounded",
    window = {
      position = "left",
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
      },
      fuzzy_finder_mappings = {
        ["<C-j>"] = "move_cursor_down",
        ["<C-k>"] = "move_cursor_up",
      },
    },
  },
  keys = {
    { "<leader>e", "<cmd>Neotree reveal<cr>", mode = "n", desc = "Neotree reveal" },
  },
}
