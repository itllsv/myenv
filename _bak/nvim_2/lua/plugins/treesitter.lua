return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = true,
			ensure_installed = {
				"vue",
				"javascript",
				"typescript",
				"scss",
				"css",
				"lua",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
