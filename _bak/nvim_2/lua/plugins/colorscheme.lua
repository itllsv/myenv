return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavor = "mocha",
    transparent_background = true,
    function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
