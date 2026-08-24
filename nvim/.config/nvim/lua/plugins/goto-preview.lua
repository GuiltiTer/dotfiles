return {
  "rmagatti/goto-preview",
  event = "LspAttach",
  dependencies = { "rmagatti/logger.nvim" },
  opts = {
    default_mappings = true,
    references = { provider = "snacks" },
  },
}
