local map = vim.keymap.set
local opts = { noremap = true }

-- Split windows
map("n", "sv", ":split<Return>", opts)
map("n", "ss", ":vsplit<Return>", opts)

-- Resize window using <ctrl> arrow keys
map("n", "<A-k>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<A-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<A-h>", "<cmd>vertical resize +2<cr>", { desc = "Decrease Window Width" })
map("n", "<A-l>", "<cmd>vertical resize -2<cr>", { desc = "Increase Window Width" })

-- Save File
map("n", "<leader>w", ":w<CR>", opts)
