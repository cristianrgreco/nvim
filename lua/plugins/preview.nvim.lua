return {
  {
    "https://gitlab.com/itaranto/preview.nvim",
    version = "*",
    lazy = false,
    dependencies = {
      "aklt/plantuml-syntax",
    },
    opts = {
      previewers_by_ft = {
        plantuml = {
          -- name = "plantuml_svg",
          -- renderer = { type = "command", opts = { cmd = { "/Users/cristian/Desktop/imgcat.sh" } } },
          name = "plantuml_text",
          renderer = { type = "buffer" },
        },
      },
    },
  },
}
