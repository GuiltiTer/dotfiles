local pandoc = require "user.pandoc"

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.keymap.set({ "n" }, "<localleader>b", function() pandoc.build { auto_open = true } end, { desc = "Build file" })
  end,
})
