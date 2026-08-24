return {
  {
    "AstroNvim/AstroNvim",
    version = "^6",
    import = "astronvim.plugins",
    opts = {
      mapleader = " ",
      maplocalleader = ",",
      icons_enabled = true,
      pin_plugins = nil,
    },
  },
  { "max397574/better-escape.nvim", enabled = false },
  { "akinsho/toggleterm.nvim", enabled = false },
}
