return {
  "carderne/pi-nvim",
  cmd = { "Pi" },
  keys = {
    { "<leader>af", mode = { "n" }, ":PiSendFile<CR>", desc = "Agent send file" },
    { "<leader>ab", mode = { "n" }, ":PiSendBuffer<CR>", desc = "Agent send buffer" },
    { "<leader>a", mode = { "v" }, ":PiSendSelection<CR>", desc = "Agent send selection" },
  },
  opts = {
    set_default_keymaps = false,
  },
}
