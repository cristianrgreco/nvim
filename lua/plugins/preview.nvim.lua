return {
  {
    "https://gitlab.com/itaranto/preview.nvim",
    lazy = false,
    -- config = function()
    --   require("preview").setup {}
    -- end,
    opts = {
      previewers_by_ft = {
        plantuml = {
          name = "plantuml_svg",
          renderer = { type = "command", opts = { cmd = { "/Users/cristian/Desktop/imgcat.sh" } } },
        },
      },
      -- previewers_by_ft = {
      --   plantuml = {
      --     name = "plantuml_text",
      --     renderer = { type = "buffer", opts = { split_cmd = "split" } },
      --   },
      -- },
    },
  },
}
