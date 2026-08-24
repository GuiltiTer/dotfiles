return {
  "nvim-mini/mini.files",
  version = "*",
  keys = {
    {
      "<leader>o",
      mode = { "n" },
      function() require("mini.files").open(vim.api.nvim_buf_get_name(0)) end,
      desc = "Mini explorer",
    },
  },
  opts = {
    mappings = {
      close = "q",
      go_in = "",
      go_in_plus = "l",
      go_out = "h",
      mark_goto = "'",
    },
  },
}
