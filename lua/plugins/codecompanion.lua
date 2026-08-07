local omp_adapter = function()
  local helpers = require "codecompanion.adapters.acp.helpers"
  return {
    name = "omp",
    formatted_name = "OMP",
    type = "acp",
    roles = { llm = "assistant", user = "user" },
    commands = { default = { "omp", "acp" } },
    defaults = { mcpServers = {}, timeout = 20000 },
    parameters = {
      protocolVersion = 1,
      clientCapabilities = { fs = { readTextFile = true, writeTextFile = true } },
      clientInfo = { name = "CodeCompanion.nvim", version = "1.0.0" },
    },
    handlers = {
      form_messages = function(self, messages, capabilities) return helpers.form_messages(self, messages, capabilities) end,
    },
  }
end

return {
  "olimorris/codecompanion.nvim",
  version = "^19.0.0",
  keys = {
    { "<leader>a", mode = { "n", "v", "x" }, desc = "󰫢 Agent" },
    { "<leader>aa", mode = { "n" }, function() require("codecompanion").toggle_chat() end, desc = "Agent chat" },
    { "<leader>aa", mode = { "v" }, function() require("codecompanion").add {} end, desc = "Agent chat" },
    { "<leader>ac", mode = { "n" }, function() require("codecompanion").toggle_cli() end, desc = "Agent ui" },
    { "<leader>ac", mode = { "v" }, function() require("codecompanion").cli { prompt = true } end, desc = "Agent ui" },
  },

  opts = {
    display = {
      chat = { intro_message = "" },
    },
    interactions = {
      chat = { adapter = { name = "omp", model = "GPT-5.6-Luna" } },
      cli = {
        agent = "omp",
        agents = {
          omp = { cmd = "omp", args = {}, description = "OMP", provider = "terminal" },
        },
      },
    },
    adapters = {
      acp = { omp = omp_adapter },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
