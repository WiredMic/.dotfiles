local M = {}
-- local test = function ()
  -- if vim.bo.filetype == "rust" then
    M.rust = {
      n = {
        ["<leader>rr"] = {
          function ()
            -- if vim.bo.filetype == "rust" then
            vim.cmd("RustRun")
            -- end
          end,
          "Run the Rust compiler",
        },
      },
    }
  -- end
-- end
-- test()


return M
