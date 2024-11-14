return {
  {
    "https://gitlab.com/itaranto/preview.nvim",
    version = "*",
    cmd = { "PreviewFile" },
    dependencies = {
      "aklt/plantuml-syntax",
    },
    opts = {
      previewers_by_ft = {
        plantuml = {
          name = "plantuml_png",
          renderer = { type = "command", opts = { cmd = { "open", "-a", "Preview" } } },
        },
      },
    },
  },
}
