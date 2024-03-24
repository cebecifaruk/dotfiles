return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- Fancy icon support
  },
  opts = {
    hijack_cursor = true,
    auto_reload_on_write = false,
    sync_root_with_cwd = false,
    view = { width = 42 },
    diagnostics = {
      enable = true,
      show_on_dirs = true,
      severity = { min = vim.diagnostic.severity.ERROR },
    },
    filesystem_watchers = { enable = false },
    renderer = {
      indent_markers = { enable = false },
      icons = {
        git_placement = "signcolumn",
        diagnostics_placement = "signcolumn",
        bookmarks_placement = "signcolumn",
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
          diagnostics = true,
          bookmarks = false,
        },
        glyphs = {
          default = "",
          symlink = "",
          git = {
            unstaged = "",
            staged = "",
            unmerged = "",
            renamed = "",
            untracked = "",
            deleted = "",
            ignored = ""
          },
          folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
        }
      },
    },
    update_focused_file = { enable = false, update_root = false },
    modified = { enable = false },
    actions = {
      open_file = {
        window_picker = {
          enable = false
        },
      }
    },
  },
  config = function (_, opts)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup(opts)

    -- Git integration
    local api = require("nvim-tree.api")

    local git_add = function()
      local node = api.tree.get_node_under_cursor()
      local gs = node.git_status.file

      -- If the current node is a directory get children status
      if gs == nil then
        gs = (node.git_status.dir.direct ~= nil and node.git_status.dir.direct[1])
             or (node.git_status.dir.indirect ~= nil and node.git_status.dir.indirect[1])
      end

      -- If the file is untracked, unstaged or partially staged, we stage it
      if gs == "??" or gs == "MM" or gs == "AM" or gs == " M" then
        vim.cmd("silent !git add " .. node.absolute_path)

      -- If the file is staged, we unstage
      elseif gs == "M " or gs == "A " then
        vim.cmd("silent !git restore --staged " .. node.absolute_path)
      end

      api.tree.reload()
    end

    vim.keymap.set('n', 'ga', git_add)

    -- Autoclose tree
    vim.api.nvim_create_autocmd("QuitPre", {
      callback = function()
        local tree_wins = {}
        local floating_wins = {}
        local wins = vim.api.nvim_list_wins()
        for _, w in ipairs(wins) do
          local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
          if bufname:match("NvimTree_") ~= nil then
            table.insert(tree_wins, w)
          end
          if vim.api.nvim_win_get_config(w).relative ~= '' then
            table.insert(floating_wins, w)
          end
        end
        if 1 == #wins - #floating_wins - #tree_wins then
          -- Should quit, so we close all invalid windows.
          for _, w in ipairs(tree_wins) do
            vim.api.nvim_win_close(w, true)
          end
        end
      end
    })

    -- Keybindings
    vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")
  end
}
