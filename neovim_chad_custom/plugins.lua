local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "ltex-ls", -- https://github.com/valentjn/ltex-ls
        -- "texlab",
        "marksman",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        -- "tex",
        "markdown",
        "markdown_inline",
      }
    },
    cmd = {
      "TSUpdate"
    },
  },
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
  {
    -- https://github.com/iamcco/markdown-preview.nvim
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
    opts = function ()
      return require "custom.config.markdown-preview"
    end,
  },
}

return plugins
