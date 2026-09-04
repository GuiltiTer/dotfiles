return {
  "Vigemus/iron.nvim",
  ft = { "python" },
  opts = function()
    local iron = require "iron.core"
    local view = require "iron.view"
    local common = require "iron.fts.common"

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "python" },
      callback = function()
        vim.keymap.set("n", "<localleader>r", "<Nop>", { desc = ">> Run" })
        vim.keymap.set("n", "<localleader>rr", iron.send_line, { buffer = true, desc = "Run line" })
        vim.keymap.set("v", "<localleader>r", iron.visual_send, { buffer = true, desc = "Run visual" })
        vim.keymap.set("n", "<localleader>r.", iron.send_until_cursor, { buffer = true, desc = "Run till here" })

        vim.keymap.set(
          "n",
          "<localleader>rb",
          function() iron.send_code_block(false) end,
          { buffer = true, desc = "Run block" }
        )
        vim.keymap.set(
          "n",
          "<localleader>rB",
          function() iron.send_code_block(true) end,
          { buffer = true, desc = "Run block and goto next" }
        )
        vim.keymap.set("n", "<localleader>R", iron.repl_restart, { buffer = true, desc = "Restart repl" })
        vim.keymap.set("n", "<localleader>t", "<cmd>IronRepl<cr>", { buffer = true, desc = "Toggle repl" })
        vim.keymap.set(
          "n",
          "<localleader>I",
          function() iron.send(nil, string.char(03)) end,
          { buffer = true, desc = "Interrupt repl" }
        )
      end,
    })

    return {
      config = {
        scratch_repl = true,
        repl_definition = {
          python = {
            command = { "ipython3", "--no-autoindent" },
            format = common.bracketed_paste_python,
            block_dividers = { "# %%", "#%%" },
            env = { PYTHON_BASIC_REPL = "1" },
          },
        },
        repl_open_cmd = view.split.vertical.botright "%50",
      },
      keymaps = {},
      highlight = { italic = true },
      ignore_blank_lines = true,
    }
  end,
}
