return {
  "catppuccin/nvim",
  name = "latte",
  lazy = false,
  priority = 1000,
  config = function ()
    require("catppuccin").setup({
      flavour = "frappe"
    })

    vim.cmd.colorscheme "catppuccin"
  end
}
