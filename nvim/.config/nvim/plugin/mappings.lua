local key = vim.keymap.set
local group = function(mode, lhs, desc, opts)
  key(mode, lhs, "<Nop>", vim.tbl_deep_extend("keep", { desc = desc }, opts and opts or {}))
end

key({ "n", "x", "v" }, "<C-p>", '"zp', { desc = "Put from register z" })
key({ "n", "x", "v" }, "<C-y>", '"zy', { desc = "Yank to register z" })
key({ "n", "x", "v" }, "H", "^", { desc = "Beginning of the line" })
key({ "n", "x", "v" }, "L", "$", { desc = "End of the line" })
key({ "n", "x", "v" }, "<leader>w", "<cmd>wa<cr>", { desc = "Write all" })
key({ "n" }, "'", "`", { desc = "Jump to mark" })
key({ "c" }, "<C-h>", "<Left>", { desc = "Left" })
key({ "c" }, "<C-l>", "<Right>", { desc = "Right" })

key({ "n" }, "<C-w>i", function()
  vim.cmd [[wincmd |]]
  vim.cmd [[wincmd _]]
end, { desc = "Focus current" })

key({ "t" }, "<esc><esc>", "<c-\\><c-n>", { desc = "Escapce" })

group({ "n" }, "<leader>;", "󱤵 Run")
