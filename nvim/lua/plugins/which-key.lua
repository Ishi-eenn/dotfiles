return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    opts.win = opts.win or {}
    opts.win.wo = opts.win.wo or {}
    opts.win.wo.winblend = 0
    opts.win.wo.winhighlight = "Normal:WhichKeyNormal,NormalFloat:WhichKeyNormal,FloatBorder:WhichKeyBorder"
  end,
}
