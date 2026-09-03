return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = true,
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
      },
    },
    source_selector = {
      winbar = false,
      sources = {
        { source = "filesystem" },
        { source = "git_status" },
      },
    },
    default_component_configs = {
      git_status = {
        symbols = {
          added = "",
          modified = "",
          deleted = "",
          untracked = "",
          conflict = "󰘭",
          renamed = "󰪹",
          staged = "",
          unstaged = "",
          ignored = "󰈉",
        },
      },
    },
  },
}
