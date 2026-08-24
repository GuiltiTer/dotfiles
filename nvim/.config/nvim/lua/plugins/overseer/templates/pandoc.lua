---@type overseer.TemplateDefinition[]
return {
  {
    name = "Pandoc genarate PDF",
    builder = function()
      local current_file = vim.fn.expand "%:p"
      local out_name = current_file .. ".pdf"

      return {
        cmd = "pandoc",
        name = "Generate PDF",
        args = { "-o", out_name, current_file },
        cwd = vim.fn.getcwd(),
        env = vim.fn.environ(),
        tags = { "pandoc", "markdown" },
      }
    end,
    condition = {
      filetype = { "markdown" },
    },
  },
}
