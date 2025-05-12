return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"c", "lua", "python", "bash"},
        highlight = { enable = true },
        indent = { enabled = true },
      })
  
    end
  }