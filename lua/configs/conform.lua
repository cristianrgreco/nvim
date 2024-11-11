return {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "gofmt", "golines" },
    java = { "google-java-format" },
    css = { "prettier" },
    html = { "prettier" },
    terraform = { "terraform_fmt" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
