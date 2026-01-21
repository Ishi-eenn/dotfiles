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

          -- bufferline系（入れてるなら）
          "BufferLineFill",
          "BufferLineBackground",
          "BufferLineGroupLabel",
          "BufferLineOffsetSeparator",
          -- nvim-tree（塗りが残るやつ）
          "NvimTreeNormal",
          "NvimTreeNormalNC",
          "NvimTreeWinSeparator",
          "NvimTreeOpenedFile",
        },
      })

      vim.cmd("TransparentEnable")
    end,
  },
}
