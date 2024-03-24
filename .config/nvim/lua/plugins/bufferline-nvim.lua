return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      diagnostics = "nvim_lsp",
      separator_style = "slant",
      always_show_bufferline = true,
      truncate_names = true,
      tab_size = 24,
      max_name_length = 18,
      diagnostics_update_in_insert = true,
      color_icons = true,
      show_tab_indicators = false,
      enforce_regular_tabs = false,
      offsets = {
        {filetype = "NvimTree",  text = "File Explorer", text_align = "left", separator = true }
      },
    }
  },
}
