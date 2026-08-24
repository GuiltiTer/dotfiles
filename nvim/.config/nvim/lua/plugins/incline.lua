local function diagnostics(props)
  local label = {}
  for _, severity in ipairs { "Error", "Warn", "Info", "Hint" } do
    local n = #vim.diagnostic.get(props.buf, { severity = vim.diagnostic.severity[string.upper(severity)] })
    if n > 0 then table.insert(label, { " " .. n .. " ", group = "DiagnosticSign" .. severity }) end
  end
  return label
end

return {
  "b0o/incline.nvim",
  event = "VeryLazy",
  opts = {
    render = function(props)
      return {
        diagnostics(props),
      }
    end,
    window = { padding = { right = 0, left = 1 }, margin = { horizontal = 0 } },
  },
}
