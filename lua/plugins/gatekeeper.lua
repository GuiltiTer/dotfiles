return {
  "augustocdias/gatekeeper.nvim",
  event = "BufRead",
  opts = {
    exclude_regex = {
      "zsh......%.zsh", -- zsh command line edit
      "prompt%.md$", -- allow prompt.md to be edited
      "omp%-editor%-[0-9a-fA-F]+%.omp%.md$", -- allow Oh My Pi editor prompts outside the project
    },
  },
}
