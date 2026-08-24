return {
  "folke/snacks.nvim",
  opts = {
    notifier = {
      margin = { top = 0, right = 0, bottom = 0 },
      width = { min = 0, max = 0.4 },
      padding = true,
      icons = {
        error = " ",
        warn = " ",
        info = " ",
        debug = " ",
        trace = " ",
      },
      keep = function(notif) return vim.fn.getcmdpos() > 0 end,

      style = function(buf, notif, ctx)
        local title = vim.trim((notif.title or "") .. " " .. notif.icon)
        ctx.opts.title = { { " " .. title .. " ", ctx.hl.title } }
        ctx.opts.title_pos = "right"
        vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(notif.msg, "\n"))
      end,
    },
  },
}
