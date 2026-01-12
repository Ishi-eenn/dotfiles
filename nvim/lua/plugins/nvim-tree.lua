return {
  -- LazyVimの既定ファイラ（neo-tree）を無効化（入ってる場合）
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  -- nvim-tree 本体
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFile" },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer (nvim-tree)" },
      { "<leader>E", "<cmd>NvimTreeFindFile<cr>", desc = "Find File in Tree" },
    },
    opts = {
      hijack_netrw = true,
      disable_netrw = true,
      view = { width = 34 },
      renderer = {
        group_empty = true,
        icons = { show = { git = true, folder = true, file = true, folder_arrow = true } },
      },
      filters = { dotfiles = false },
      git = { enable = true, ignore = false },
      actions = {
        open_file = { quit_on_open = false },
      },
    },
    config = function(_, opts)
      require("nvim-tree").setup(opts)
    end,
  },
}
