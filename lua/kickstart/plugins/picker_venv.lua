local util = require 'lspconfig/util'
local path = util.path

local function get_python_path(workspace)
  -- Use activated virtualenv.
  if vim.env.VIRTUAL_ENV then
    local ans = path.join(vim.env.VIRTUAL_ENV, vim.fn.has 'win32' == 1 and 'Scripts/python.exe' or 'bin/python')
    print('python venv activated from VIRTUAL_ENV: ' .. ans)
    return ans
  end
  -- Find and use virtualenv in workspace directory.
  for _, pattern in ipairs { '*', '.*' } do
    local match = vim.fn.glob(path.join(workspace, pattern, 'pyvenv.cfg'))
    if match ~= '' then
      local sub_dir = match:match '(.*)[/\\]'
      local ans = path.join(sub_dir, vim.fn.has 'win32' == 1 and 'Scripts/python.exe' or 'bin/python')
      print('python venv activated from workspace: ' .. ans)
      return ans
    end
  end
  -- Fallback to system Python.
  return util.exepath 'python3' or util.exepath 'python' or 'python'
end

return {
  get_python_path = get_python_path,
}
