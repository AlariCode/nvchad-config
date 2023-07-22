---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>w"] = { "<cmd>w <CR>" },
    ["\\"] = { "<cmd>:vsplit <CR>", "Vertical split" },
    ["<C-t>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
    },
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
    },
    ["<leader>tt"] = {
      function()
        require("neotest").run.run()
      end,
      "Run nearest test",
    },
    ["<leader>tf"] = {
      function()
        require("neotest").run.run(vim.fn.expand "%")
      end,
      "Run file test",
    },
    ["<leader>to"] = {
      ":Neotest output<CR>",
      "Test output",
    },
    ["<leader>ts"] = {
      ":Neotest summary<CR>",
      "Test summary",
    },
    ["<leader>du"] = {
      function()
        require("dapui").toggle()
      end,
      "Dedug UI",
    },
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Breakpoint",
    },
    ["<leader>ds"] = {
      function()
        require("dap").continue()
      end,
      "Start",
    },
    ["<leader>dn"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
  },
  t = {
    ["<C-t>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
    },
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
    },
  },
}

-- more keybinds!

return M
