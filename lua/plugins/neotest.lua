return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-go",
    "haydenmeade/neotest-jest",
    "marilari88/neotest-vitest",
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    adapters = {
      ["neotest-go"] = {},
      ["neotest-jest"] = {},
      ["neotest-vitest"] = {},
    },
  },
}
