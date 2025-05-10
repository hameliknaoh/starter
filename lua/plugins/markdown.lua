return {

  -- Markdown language server protocol (LSP)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {
          enabled = false,
        },
        markdown_oxide = {
          enabled = true,
        },
      },
    },
  },

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

  -- Markdown preview
  {

    "iamcco/markdown-preview.nvim",
    enabled = false,
  },

  {
    "hameliknaoh/peek.nvim",
    build = "deno task --quiet build:fast",
    keys = {
      {
        "<leader>cp",
        function()
          local peek = require("peek")
          if peek.is_open() then
            peek.close()
          else
            peek.open()
          end
        end,
        desc = "Peek (Markdown Preview)",
      },
    },
    opts = { theme = "dark", app = "browser" },
    dependencies = {
      "williamboman/mason.nvim",
      optional = true,
      opts = { ensure_installed = { "deno" } },
    },
  },
}
