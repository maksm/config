-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "Dt", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "Toggle Breakpoint" })
map("n", "Db", "<cmd>lua require'dap'.step_back()<cr>", { desc = "Step Back" })
map("n", "Dc", "<cmd>lua require'dap'.continue()<cr>", { desc = "Continue" })
map("n", "DC", "<cmd>lua require'dap'.run_to_cursor()<cr>", { desc = "Run To Cursor" })
map("n", "Dd", "<cmd>lua require'dap'.disconnect()<cr>", { desc = "Disconnect" })
map("n", "Dg", "<cmd>lua require'dap'.disconnect()<cr>", { desc = "Get Session" })
map("n", "Di", "<cmd>lua require'dap'.step_into()<cr>", { desc = "Step Into" })
map("n", "Do", "<cmd>lua require'dap'.step_over()<cr>", { desc = "Step Over" })
map("n", "Du", "<cmd>lua require'dap'.step_out()<cr>", { desc = "Step Out" })
map("n", "Dp", "<cmd>lua require'dap'.pause()<cr>", { desc = "Pause" })
map("n", "Dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = "Toggle Repl" })
map("n", "Ds", "<cmd>lua require'dap'.continue()<cr>", { desc = "Start" })
map("n", "Dq", "<cmd>lua require'dap'.close()<cr>", { desc = "Quit" })
map("n", "DU", "<cmd>lua require'dapui'.toggle({reset = true})<cr>", { desc = "Toggle UI" })
