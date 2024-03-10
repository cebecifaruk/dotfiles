return { 
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c", "cpp", "make",
        "dart",
        "gitattributes", "gitignore",
        "go", "gomod", "gowork", 
        "haskell",
        "html", "css", "javascript", "typescript", "jq", "json", "json5", "php", 
        "lua",
        "rust"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}
