return {
  { "nvim-neotest/neotest-go" },
  { "haydenmeade/neotest-jest" },
  { "marilari88/neotest-vitest" },

  { "nvim-neotest/nvim-nio" },
  { "mfussenegger/nvim-dap" },

  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "mfussenegger/nvim-dap",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-go",
          require "neotest-jest",
          require "neotest-vitest",
        },
      }
    end,
  },
}
