-- custom keymaps file

lvim.builtin.terminal.open_mapping = "<c-t>"
lvim.builtin.which_key.mappings["f"] = {
  name = "Telescope",
  f = { "<cmd>Telescope find_files <cr>", "Find files" },
  a = { "<cmd>Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
  w = { "<cmd>Telescope live_grep <cr>", "Live grep" },
  b = { "<cmd>Telescope buffers <cr>", "Find buffers" },
  h = { "<cmd>Telescope help_tags <cr>", "Find help tags" },
  o = { "<cmd>Telescope oldfiles <cr>", "Find oldfiles" },
  k = { "<cmd>Telescope keymaps <cr>", "Find keymaps" },
  gc = { "<cmd>Telescope git_commits <cr>", "git commit" },
  gs = { "<cmd>Telescope git_status <cr>", "git status" },
}
lvim.keys.normal_mode["<Tab>"] = ":bnext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":bprev<CR>"
lvim.keys.normal_mode["<leader>b"] = ":!black %"
