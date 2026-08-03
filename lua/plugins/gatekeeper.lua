return {
  "augustocdias/gatekeeper.nvim",
  event = "BufRead",
  opts = {
    exclude_regex = {
      "zsh......%.zsh", -- zsh command line edit
      "prompt%.md$", -- allow prompt.md to be edited
    },
  },
}
