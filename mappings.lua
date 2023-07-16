---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>w"] = { "<cmd>w <CR>" },
    ["\\"] = { "<cmd>:vsplit <CR>" },
    ["<C-v>"] = {
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
  t = {
    ["<C-v>"] = {
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
