return {
  "chomosuke/typst-preview.nvim",
  ft = { "typst" },
  keys = { { mode = { "n" }, "<leader>rp", "<cmd>TypstPreview<cr>", desc = "Preview file", ft = { "typst" } } },
  version = "1.*",
  opts = {
    dependencies_bin = { ["tinymist"] = "tinymist" },
  },
}
