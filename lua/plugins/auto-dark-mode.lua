return {
  "f-person/auto-dark-mode.nvim",
  event = "VeryLazy",
  config = function()
    require("auto-dark-mode").setup {
      update_interval = 1000,
      set_dark_mode = function()
        require("nvconfig").base46.theme = "onedark"
        require("base46").load_all_highlights()
      end,
      set_light_mode = function()
        require("nvconfig").base46.theme = "one_light"
        require("base46").load_all_highlights()
      end,
    }
    require("auto-dark-mode").init()
  end,
}
