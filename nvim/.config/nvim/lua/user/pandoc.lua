local proc = require "user.process"
local env = require "env"

---@param opts {auto_open: boolean}
local function build(opts)
  local file_name = vim.fn.expand "%"
  local out_name = file_name .. ".pdf"

  local args = { "--template", env.pandoc.template, "-o", out_name, file_name }

  proc.spawn {
    cmd = "pandoc",
    args = args,
    on_exit = function(code, _)
      if code == 0 and opts.auto_open then proc.spawn { cmd = "open", args = { out_name }, silent = true } end
    end,
  }
end

return {
  build = build,
}
