return {
  "folke/sidekick.nvim",
  opts = {},
  keys = {
    { "<leader>a", mode = { "n", "v", "x" }, desc = "󰫢 Agent" },
    { "<leader>aa", function() require("sidekick.cli").toggle() end, desc = "Toggle cli" },
    { "<leader>aC", function() require("sidekick.cli").close() end, desc = "Close session" },
    { "<leader>ap", function() require("sidekick.cli").prompt() end, mode = { "n", "x" }, desc = "Select prompt" },
    { "<leader>af", function() require("sidekick.cli").send { msg = "{file}" } end, desc = "Send file" },
    { "<leader>ad", function() require("sidekick.cli").send { msg = "{diagnostics}" } end, desc = "Send diagnostics" },
    { "<leader>aq", function() require("sidekick.cli").send { msg = "{quickfix}" } end, desc = "Send quickfix" },
    {
      "<leader>at",
      function() require("sidekick.cli").send { msg = "{this}" } end,
      mode = { "x", "n" },
      desc = "Send this",
    },
  },
}
