vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
  callback = function()
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#a0a9cb", bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#e0af68", bg = "NONE", bold = true })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "WhichKeyFloat",  { bg = "NONE" })
    vim.api.nvim_set_hl(0, "WhichKeyBorder", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "WhichKeyTitle",  { bg = "NONE" })
  end,
})
