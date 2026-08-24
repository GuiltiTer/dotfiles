local function config()
  local diffview = require "diffview"
  local actions = require "diffview.actions"
  local lib = require "diffview.lib"

  local close = function()
    for _, v in ipairs(lib.views) do
      v:close()
    end
  end

  local goto_file_and_close = function()
    actions.goto_file_edit()
    close()
  end

  diffview.setup {
    keymaps = {
      view = {
        { "n", "e", goto_file_and_close, { desc = "Open the file" } },
        { "n", "q", close, { desc = "Close" } },
        { "n", "<leader>q", close, { desc = "Close" } },
        { "n", "<leader>e", actions.toggle_files, { desc = "Files" } },
      },
      file_panel = {
        { "n", "<cr>", goto_file_and_close, { desc = "Open the file" } },
        { "n", "e", goto_file_and_close, { desc = "Open the file" } },
        { "n", "q", close, { desc = "Close" } },
        { "n", "<leader>q", close, { desc = "Close" } },
        { "n", "j", actions.select_next_entry, { desc = "Down" } },
        { "n", "k", actions.select_prev_entry, { desc = "Up" } },
        { "n", "<leader>e", actions.toggle_files, { desc = "Files" } },
      },
      file_history_panel = {
        { "n", "<cr>", goto_file_and_close, { desc = "Open the file" } },
        { "n", "e", goto_file_and_close, { desc = "Open the file" } },
        { "n", "q", close, { desc = "Close" } },
        { "n", "<leader>q", close, { desc = "Close" } },
        { "n", "j", actions.select_next_entry, { desc = "Down" } },
        { "n", "k", actions.select_prev_entry, { desc = "Up" } },
        { "n", "<leader>e", actions.toggle_files, { desc = "Files" } },
      },
    },
  }
end

return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  keys = {
    { "<Leader>gD", mode = { "n" }, "<cmd>DiffviewOpen<cr>", desc = "Diff" },
    { "<Leader>gh", mode = { "n" }, "", desc = "History" },
    { "<Leader>ghb", mode = { "n" }, "<cmd>DiffviewFileHistory<cr>", desc = "Branch history" },
    { "<Leader>ghf", mode = { "n" }, "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
  },
  config = config,
}
