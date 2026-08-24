---@param opts {cmd: string, args: string[], on_exit: fun(code: number, signal: number) , silent: boolean}
local function spawn(opts)
  local handle, pid
  local stdout, stderr = vim.loop.new_pipe(false), vim.loop.new_pipe(false)
  local strout, strerr = "", ""

  local on_exit = function(code, signal)
    if opts.on_exit then opts.on_exit(code, signal) end

    if stdout then
      stdout:read_stop()
      stdout:close()
    end
    if stderr then
      stderr:read_stop()
      stderr:close()
    end

    if not opts.silent then
      vim.notify(strerr, vim.log.levels.ERROR)
      vim.notify(strout, vim.log.levels.INFO)
    end

    if handle then handle:close() end
  end

  handle, pid = vim.loop.spawn(opts.cmd, { args = opts.args, stdio = { nil, stdout, stderr } }, on_exit)

  if stderr then stderr:read_start(function(_, data)
    if data then strerr = strerr .. data end
  end) end
  if stdout then stdout:read_start(function(_, data)
    if data then strout = strout .. data end
  end) end

  return handle, pid
end

return {
  spawn = spawn,
}
