return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          handlers = {
            ["textDocument/publishDiagnostics"] = function() end,
          },
        },
      },
    },
  },
}
