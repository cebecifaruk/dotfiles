return {
  "romgrk/barbar.nvim",
  dependencies = {'lewis6991/gitsigns.nvim', 'nvim-tree/nvim-web-devicons'},
  init = function() vim.g.barbar_auto_setup = false end,
  opts = {
    animation = true,
    auto_hide = false,
    insert_at_end = true,
    insert_at_start = false,
    sidebar_filetypes = {
      ['neo-tree'] = { event = 'BufWipeout' },
    },
  },
  version = '^1.0.0',
}
