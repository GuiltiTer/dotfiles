return {
  "lervag/vimtex",
  ft = { "tex" },
  init = function()
    local opts = {
      vimtex_view_method = "skim",
    }

    for key, value in pairs(opts) do
      vim.g[key] = value
    end
  end,
}
