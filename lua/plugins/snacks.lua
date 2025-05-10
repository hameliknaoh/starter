-- Fix floating terminal in snacks: Floating terminal is now static at bottom
-- https://github.com/LazyVim/LazyVim/issues/4740
-- https://github.com/folke/snacks.nvim/blob/main/docs/terminal.md#-setup

return {
  {
    "folke/snacks.nvim",
    opts = {
      terminal = {
        win = {
          position = "float",
        },
      },
    },
  },
}
