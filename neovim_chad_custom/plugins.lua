local plugins = {
  {
  -- lsp 
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    -- mason
    "williamboman/mason.nvim",
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "lervag/vimtex",
    ft = "tex",
    opts = function ()
      return require "custom.configs.vimtex"
    end,
  },
  {
    "neoclide/coc.nvim",
    cmd = {"COCInstall"}
  },
  {
    "mbbill/undotree",
    cmd = {"UndotreeToggle"},
  },
}

return plugins
