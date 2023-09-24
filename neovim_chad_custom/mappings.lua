local M = {}

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint",
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.vimtex = {
  n = {
    ["<leader>ll"] = {
      "<cmd>VimtexCompile<cr>",
      "Compile the LaTeX document",
    },
    ["<leader>lt"] = {
      "<cmd>VimtexTocToggle<cr>",
      "Toggle table of contense"
    },
    ["<leader>li"] = {
      "<cmd>Vimtex<cr>",
    },
    -- :VimtexInfo: show all relevant info about current LaTeX project.
    -- :VimtexTocOpen: show table of contents window
    -- :VimtexTocToggle: toggle table of contents window
    -- :VimtexCompile: Compile the current LaTeX source file and opens the viewer after successful compilation.
    -- :VimtexStop: Stop compilation for the current project.
    -- :VimtexClean: clean auxiliary files generated in compliation process.
  }
}

M.rust = {
  n = {
    ["<leader>rr"] = {
      "<cmd>RustRun<cr>",
      "Run the Rust compiler",
      ,
    },
  },
}


M.undo = {
  n = {
    ["<A-u>"] = {
      "<cmd>UndotreeToggle<cr>",
      "Toggle Undotree"
    },
  },
}

return M
