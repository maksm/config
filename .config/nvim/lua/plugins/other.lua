-- other plugins
return {
    {
      "akinsho/toggleterm.nvim",
      config = function()
        require("toggleterm").setup()
      end,
    },
    {
      "eandrju/cellular-automaton.nvim",
      keys = {
        {
          "<leader>ž",
          function()
            require("cellular-automation").start_animation("make_it_rain")
          end,
          desc = "Make it rain",
        },
      },
    },
    {
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      config = function()
        require("lsp_lines").setup()
      end,
    },
    {
      "nvim-neotest/neotest",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "antoinemadec/FixCursorHold.nvim",
      },
    },
    {
      "anuvyklack/windows.nvim",
      requires = {
        "anuvyklack/middleclass",
        "anuvyklack/animation.nvim",
      },
      config = function()
        vim.o.winwidth = 10
        vim.o.winminwidth = 10
        vim.o.equalalways = false
        require("windows").setup()
      end,
    },
  }