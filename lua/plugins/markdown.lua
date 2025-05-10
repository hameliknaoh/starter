return {

  -- Markdown formatter
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["markdown"] = { "prettier", "doctoc" },
      },
    },
    dependencies = {
      "williamboman/mason.nvim",
      optional = true,
      opts = { ensure_installed = { "prettier", "doctoc" } },
    },
  },
}
