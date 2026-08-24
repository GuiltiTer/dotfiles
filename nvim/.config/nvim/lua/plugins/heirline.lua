return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require "astroui.status"
    opts.statusline = {
      hl = { fg = "fg", bg = "bg" },
      status.component.git_branch {
        git_branch = { icon = { kind = "GitBranch", padding = { right = 1, left = 1 } } },
      },
      status.component.file_info {
        file_modified = { padding = { left = 0, right = 0 } },
        filename = { padding = { left = 0, right = 0 } },
        file_icon = { padding = { left = 1, right = 1 } },
        filetype = false,
      },
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.lsp(),
      status.component.virtual_env(),
      status.component.treesitter {
        str = {
          str = " ",
          icon = { kind = "ActiveTS", padding = { right = 0 } },
        },
      },
    }
    opts.winbar = nil
    return opts
  end,
}
