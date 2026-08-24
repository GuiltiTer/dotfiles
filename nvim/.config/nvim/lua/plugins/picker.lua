local picker = require("snacks").picker

local buffers = function()
  picker.buffers {
    finder = "buffers",
    format = "buffer",
    hidden = false,
    unloaded = true,
    current = false,
    sort_lastused = true,
    win = {
      input = {
        keys = {
          ["<c-;>"] = { "bufdelete", mode = { "n", "i" } },
          ["<Tab>"] = { "list_down", mode = { "n", "i" } },
          ["<S-Tab>"] = { "list_up", mode = { "n", "i" } },
        },
      },
      list = { keys = { ["dd"] = "bufdelete" } },
    },
  }
end

return {
  "folke/snacks.nvim",
  keys = {
    { "<S-Tab>", mode = { "n" }, buffers, desc = "Find buffers" },
    {
      "<leader>fq",
      mode = { "n" },
      function()
        picker.qflist { on_show = function() vim.cmd.stopinsert() end }
      end,
      desc = "Find qflist",
    },
    {
      "<leader>fj",
      mode = { "n" },
      function()
        picker.jumps { on_show = function() vim.cmd.stopinsert() end }
      end,
      desc = "Find jumps",
    },
  },
  opts = {
    picker = {},
  },
}
