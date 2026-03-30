return {
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "c", "cpp", "objc", "objcpp", "cuda" },
        callback = function(args)
          -- Keep competitive-programming style one-liners intact on save.
          vim.b[args.buf].autoformat = false
        end,
      })
    end,
  },
}
