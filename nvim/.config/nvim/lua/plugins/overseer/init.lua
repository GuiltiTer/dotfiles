local function load_dir_templates(dir)
  local overseer = require "overseer"
  local files = vim.fn.glob(vim.fn.stdpath "config" .. "/lua/" .. dir .. "/*.lua", false, true)
  local modules = vim.tbl_map(
    function(file) return dir:gsub("/", ".") .. "." .. vim.fn.fnamemodify(file, ":t:r") end,
    files
  )
  local templates = {}
  vim.tbl_map(function(mod)
    local content = require(mod)
    if vim.islist(content) then
      vim.list_extend(templates, content)
    else
      table.insert(templates, content)
    end
  end, modules)
  vim.tbl_map(function(template) overseer.register_template(template) end, templates)
end

local function rerun_last()
  local overseer = require "overseer"
  local task = overseer.list_tasks({ recent_first = true })[1]
  if not task then
    vim.notify("No task found", vim.log.levels.WARN, { title = "Overseer" })
    return
  end
  overseer.run_action(task, "restart")
end

return {
  "stevearc/overseer.nvim",
  cmd = { "OverseerRun", "OverseerShell", "OverseerToggle" },
  keys = {
    { "<leader>;t", mode = { "n" }, "<cmd>OverseerRun<cr>", desc = "Run task" },
    { "<leader>;o", mode = { "n" }, "<cmd>OverseerToggle<cr>", desc = "Run task" },
    { "<leader>;a", mode = { "n" }, "<cmd>OverseerShell<cr>", desc = "Add task" },
    { "<leader>;r", mode = { "n" }, rerun_last, desc = "Rerun last task" },
  },
  opts = function()
    load_dir_templates "plugins/overseer/templates"
    return {
      task_list = {
        direction = "right",
        keymaps = {
          ["<CR>"] = "keymap.run_action",
          ["dd"] = { "keymap.run_action", opts = { action = "dispose" }, desc = "Dispose task" },
          ["<C-e>"] = { "keymap.run_action", opts = { action = "edit" }, desc = "Edit task" },
          ["w"] = { "keymap.run_action", opts = { action = "watch" }, desc = "Watch task" },
          ["o"] = "keymap.open",
          ["<C-v>"] = { "keymap.open", opts = { dir = "vsplit" }, desc = "Open task output in vsplit" },
          ["<C-s>"] = { "keymap.open", opts = { dir = "split" }, desc = "Open task output in split" },
          ["<C-t>"] = { "keymap.open", opts = { dir = "tab" }, desc = "Open task output in tab" },
          ["<C-f>"] = { "keymap.open", opts = { dir = "float" }, desc = "Open task output in float" },
          ["<C-q>"] = {
            "keymap.run_action",
            opts = { action = "open output in quickfix" },
            desc = "Open task output in the quickfix",
          },
          ["p"] = "keymap.toggle_preview",
          ["{"] = "keymap.prev_task",
          ["}"] = "keymap.next_task",
          ["<C-d>"] = "keymap.scroll_output_up",
          ["<C-u>"] = "keymap.scroll_output_down",
          ["<C-j>"] = "<C-w>j",
          ["<C-k>"] = "<C-w>k",
          ["g."] = "keymap.toggle_show_wrapped",
          ["q"] = { "<CMD>close<CR>", desc = "Close task list" },
        },
      },
    }
  end,
}
