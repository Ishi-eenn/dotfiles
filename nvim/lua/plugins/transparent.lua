return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup({
        extra_groups = {
          -- タブ(標準)
          "TabLine",
          "TabLineSel",
          "TabLineFill",

          -- bufferline系
          "BufferLineFill",
          "BufferLineBackground",
          "BufferLineGroupLabel",
          "BufferLineOffsetSeparator",

          -- nvim-tree
          "NvimTreeNormal",
          "NvimTreeNormalNC",
          "NvimTreeWinSeparator",
          "NvimTreeOpenedFile",

          -- which-key
          "NormalFloat",
          "FloatBorder",
          "FloatTitle",
          "WhichKey",
          "WhichKeyNormal",
          "WhichKeyBorder",
          "WhichKeyTitle",
        },
      })

      vim.cmd("TransparentEnable")
    end,
  },
}
