vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#7f849c" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#89b4fa", bold = true })
    vim.api.nvim_set_hl(0, "CursorLine", { bold = true })

    -- vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
    -- vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
    -- vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NONE", ctermbg = "NONE" })
    -- vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { bg = "NONE", ctermbg = "NONE" })

    vim.cmd([[highlight NeoTreeCursorLine gui=bold]])
  end,
})
