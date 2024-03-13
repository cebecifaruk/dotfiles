return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end,
    },
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = {
            "typos_lsp",
            "bashls",
            "clangd",
            "dockerls",
            "docker_compose_language_service",
            "eslint",
            "gopls",
            "grammarly",
            "html",
            -- "hls",
            "jsonls",
            -- "java_language_server",
            "tsserver",
            "jqls",
            "lua_ls",
            "marksman",
            "spectral",
            "intelephense",
            "pylsp",
            "ruby_ls",
            "rust_analyzer",
            "sqlls",
            "taplo",
            "terraformls",
            "lemminx",
            "yamlls",
          },
        })
      end,
    },
  },
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.typos_lsp.setup({})
    lspconfig.bashls.setup({})
    lspconfig.clangd.setup({})
    lspconfig.dockerls.setup({})
    lspconfig.docker_compose_language_service.setup({})
    lspconfig.eslint.setup({})
    lspconfig.gopls.setup({})
    lspconfig.grammarly.setup({})
    lspconfig.html.setup({})
    -- lspconfig.hls.setup({})
    lspconfig.jsonls.setup({})
    -- lspconfig.java_language_server.setup({})
    lspconfig.tsserver.setup({})
    lspconfig.jqls.setup({})
    lspconfig.lua_ls.setup({})
    lspconfig.marksman.setup({})
    lspconfig.spectral.setup({})
    lspconfig.intelephense.setup({})
    lspconfig.pylsp.setup({})
    lspconfig.ruby_ls.setup({})
    lspconfig.rust_analyzer.setup({})
    lspconfig.sqlls.setup({})
    lspconfig.taplo.setup({})
    lspconfig.terraformls.setup({})
    lspconfig.lemminx.setup({})
    lspconfig.yamlls.setup({})
  end,
}
