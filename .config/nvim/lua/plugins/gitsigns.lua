return {
  "lewis6991/gitsigns.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("gitsigns").setup({
      auto_attach = true,
      attach_to_untracked = true,
    })
  end,
}
