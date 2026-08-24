local default = {
  colorscheme = "tokyonight-night",
  pandoc = {
    template = "eisvogel",
  },
}

return pcall(require, "user.env") and vim.tbl_deep_extend("force", default, require "user.env") or default
