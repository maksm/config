-- python3 -m pip install debugpy
require('dap-python').setup('python')

local dap = require("dap")

-- dap.adapters.python = {
--     type = "executable",
--     command = "python",
--     args = {"-m", "debugpy.adapter"}
-- }

table.insert(dap.configurations.python, {
  type = 'python',
  request = 'launch',
  name = 'Django',
  program = vim.fn.getcwd() .. '/manage.py',  -- NOTE: Adapt path to manage.py as needed
  args = {'runserver', '0.0.0.0:8000'}--, '--noreload'},
})

-- dap.configurations.python = {
--     {
--         type = "python",
--         request = "launch",
--         name = "Launch file",
--         program = "${file}",
--         args = function()
--             local input = vim.fn.input("Input args: ")
--             return require("dap.dap-util").str2argtable(input)
--         end,
--         pythonPath = function()
--             return "/usr/bin/python3"
--         end
--     },
--     {
--         type = "python",
--         request = "launch",
--         name = "django",
--         program = "${workspaceFolder}/manage.py}",
--         django = "true",
--         args = {"runserver", "0.0.0.0:8000", "--noreload"}
--     }
-- }
