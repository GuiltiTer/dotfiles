return {
  "declancm/maximize.nvim",
  keys = {
    {
      "<S-Enter>",
      mode = { "n", "x", "v" },
      function() require("maximize").toggle() end,
      desc = "Maximize current buffer",
    },
  },
  config = true,
}
