return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local builtin = require("telescope.builtin")
      local themes = require("telescope.themes")

      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

      telescope.setup({
        extensions = {
          ["ui-select"] = {
            themes.get_dropdown({}),
          },
        },
        defaults = {
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
            },
          },
        },
      })

      telescope.load_extension("ui-select")
    end,
  },
}
