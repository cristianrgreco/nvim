return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "hcl",
      "terraform",
      "vim",
      "lua",
      "vimdoc",
      "html",
      "css",
    },
    auto_install = true,
  },
  init = function()
    vim.filetype.add {
      pattern = { [".*%.plist"] = "xml" },
    }
  end,
}
