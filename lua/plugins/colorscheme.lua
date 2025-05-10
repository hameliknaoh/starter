return {

  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", lazy = true },

  -- add kanagawa
  -- https://github.com/rebelot/kanagawa.nvim
  { "rebelot/kanagawa.nvim", lazy = true },

  -- add oldworld
  -- https://github.com/dgox16/oldworld.nvim?tab=readme-ov-file
  { "dgox16/oldworld.nvim", lazy = true },

  -- add neofusion
  -- https://vimcolorschemes.com/diegoulloao/neofusion.nvim
  -- https://github.com/diegoulloao/neofusion.nvim?tab=readme-ov-file
  {
    "diegoulloao/neofusion.nvim",
    lazy = true,
  },

  -- add nightfox
  { "EdenEast/nightfox.nvim", lazy = true },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha", -- carbonfox, catppuccin-mocha, gruvbox
    },
  },
}
