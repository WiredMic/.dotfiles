local M = {}
M.mason = {
  ensure_installed = {
    "rust-analyzer",
    "ltex-ls", -- https://github.com/valentjn/ltex-ls
    "texlab",
    "marksman",
  },
}
M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "tex",
    "markdown",
    "markdown_inline",
  }
}
return M

