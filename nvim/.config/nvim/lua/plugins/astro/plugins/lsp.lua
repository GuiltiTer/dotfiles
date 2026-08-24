---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      autoformat = true,
      codelens = true,
      inlay_hints = true,
      semantic_tokens = true,
    },
    formatting = {
      format_on_save = { enabled = true },
      timeout_ms = 5000,
    },
    ---@diagnostic disable: missing-fields
    config = {
      lua_ls = {
        settings = { Lua = { format = { enable = false } } },
      },
    },
  },
}
