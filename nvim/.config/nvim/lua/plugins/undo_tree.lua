return {
  "jiaoshijie/undotree",
  cmd = "Undotree",
  opts = function(opts)
    vim.api.nvim_create_user_command("Undotree", require("undotree").toggle, { desc = "Toggle Undotree" })
    return opts
  end,
}
