return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    opts.winopts = opts.winopts or {}
    opts.winopts.preview = opts.winopts.preview or {}

    -- preview scrollbarを消す
    opts.winopts.preview.scrollbar = false

    opts.winopts.preview.winopts = opts.winopts.preview.winopts or {}
    opts.winopts.preview.winopts.signcolumn = "no"
    opts.winopts.preview.winopts.number = false
    opts.winopts.preview.winopts.relativenumber = false

    return opts
  end,
}
