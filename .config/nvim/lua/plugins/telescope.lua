return {
  "nvim-telescope/telescope.nvim",
  tag = '0.1.5',
  dependencies = {'nvim-lua/plenary.nvim'},
  lazy = false,
  config = function()
    vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
    vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})
    vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})
    vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})
    vim.keymap.set('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find, {})
    vim.keymap.set('n', '<leader>fo', require('telescope.builtin').lsp_document_symbols, {})
    vim.keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_incoming_calls, {})
    vim.keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({default_text=":method:"}) end)
  end
}
