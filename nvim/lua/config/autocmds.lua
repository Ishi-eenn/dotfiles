-- 行番号の色を固定（colorscheme/TransparentEnable後に毎回当てる）
vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
  callback = function()
    -- 背景は透明のまま、文字色だけ変える
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#a0a9cb", bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#e0af68", bg = "NONE", bold = true })
  end,
})
