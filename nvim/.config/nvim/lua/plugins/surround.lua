return {
  "kylechui/nvim-surround",
  version = "*",
  keys = {
    { "s", mode = { "n" }, "<Plug>(nvim-surround-normal)", desc = "Surround" },
    { "ss", mode = { "n" }, "<Plug>(nvim-surround-normal-cur-line)", desc = "Surround line" },
    { "s", mode = { "x" }, "<Plug>(nvim-surround-visual)", desc = "Surround visual" },
    { "ds", mode = { "n" }, "<Plug>(nvim-surround-delete)", desc = "Surround delete" },
    { "cs", mode = { "n" }, "<Plug>(nvim-surround-change)", desc = "Surround change" },
  },
  event = "BufRead",
  opts = {},
}
