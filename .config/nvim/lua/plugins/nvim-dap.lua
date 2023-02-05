-- debugging with nvim-dap
return {
  -- add nvim-dap
  { "mfussenegger/nvim-dap" },
  -- add nvim-dap-ui
  { "rcarriga/nvim-dap-ui" },
  -- add nvim-dap-python
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      require("dap-python").setup()
      table.insert(require("dap").configurations.python, {
        type = "python",
        request = "launch",
        name = "Django",
        program = vim.fn.getcwd() .. "/manage.py",
        args = { "runserver", "0.0.0.0:8000" },
      })
    end,
  },
}
