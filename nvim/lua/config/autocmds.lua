local function transparent_normal_buffers()
  local groups = {
    "Normal",
    "NormalNC",
    "SignColumn",
    "EndOfBuffer",
    "WinSeparator",
    "NormalFloat",
    "FloatBorder",

    -- ★ 追加：行番号まわり
    "LineNr",
    "CursorLineNr",
    "LineNrAbove",
    "LineNrBelow",
    "FoldColumn",
    "CursorLineFold",
    "CursorLineSign",
    -- ★ 追加：行番号とコードの間（statuscolumn）
    "StatusColumn",
    "StatusColumnNC",
    -- 念のため：縦区切り系（環境によってはこっちが使われる）
    "VertSplit",
  }

  for _, g in ipairs(groups) do
    pcall(vim.api.nvim_set_hl, 0, g, { bg = "none" })
  end
end

vim.api.nvim_create_autocmd({ "VimEnter", "UIEnter", "ColorScheme" }, {
  callback = function()
    vim.schedule(transparent_normal_buffers)
  end,
})
