return {
  "folke/sidekick.nvim",
  keys = {
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
  ---@class sidekick.Config
  opts = {
    cli = {
      ---@class sidekick.win.Opts
      win = {
        layout = "right",
        ---@type table<string, sidekick.cli.Keymap|false>
        keys = {
          buffers = { "<c-b>", "buffers", mode = "nt", desc = "open buffer picker" },
          files = { "<c-f>", "files", mode = "nt", desc = "open file picker" },
          hide_n = { "q", "hide", mode = "n", desc = "hide the terminal window" },
          hide_ctrl_q = { "<c-q>", "hide", mode = "n", desc = "hide the terminal window" },
          hide_ctrl_dot = { "<c-.>", "hide", mode = "nt", desc = "hide the terminal window" },
          hide_ctrl_z = {
            "<c-z>",
            "blur",
            mode = "nt",
            desc = "go back to the previous window without hiding the terminal",
          },
          prompt = { "<c-p>", "prompt", mode = "t", desc = "insert prompt or context" },
          stopinsert = { "<c-q>", "stopinsert", mode = "t", desc = "enter normal mode" },
          nav_left = { "<c-h>", "nav_left", expr = true, desc = "navigate to the left window" },
          nav_down = { "<c-j>", "nav_down", expr = true, desc = "navigate to the below window" },
          nav_up = { "<c-k>", "nav_up", expr = true, desc = "navigate to the above window" },
          nav_right = { "<c-l>", "nav_right", expr = true, desc = "navigate to the right window" },
        },
      },
      prompts = {
        changes = "Can you review my changes?",
        diagnostics = "Can you help me fix the diagnostics in {file}?\n{diagnostics}",
        diagnostics_all = "Can you help me fix these diagnostics?\n{diagnostics_all}",
        document = "Add documentation to {function|line}",
        explain = "Explain {this}",
        fix = "Can you fix {this}?",
        optimize = "How can {this} be optimized?",
        review = "Can you review {file} for any issues or improvements?",
        tests = "Can you write tests for {this}?",
        -- simple context prompts
        buffers = "{buffers}",
        file = "{file}",
        line = "{line}",
        position = "{position}",
        quickfix = "{quickfix}",
        selection = "{selection}",
        ["function"] = "{function}",
        class = "{class}",
      },
    },
  },
}
