return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim", "3rd/image.nvim"},
  config = function()
    vim.keymap.set('n', '<C-b>', ':Neotree toggle<CR>', {})
    require("neo-tree").setup({
      close_if_last_window = true,
      source_selector = {
        winbar = true,
        statusline = true
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
        follow_current_file = { enable = true },

      },
    })
  end
}
