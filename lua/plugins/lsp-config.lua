return {
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = {
            "lua_ls", "clangd", "pylyzer"
          }
        })
      end
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require('lspconfig')
        lspconfig.lua_ls.setup({})
        lspconfig.pylyzer.setup({})
        vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
      end
    }
  }