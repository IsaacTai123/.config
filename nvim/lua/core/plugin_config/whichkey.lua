vim.o.timeout = true
vim.o.timeoutlen = 300
require("which-key").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below

}

local wk = require("which-key")

wk.register({
  f = {
    name = "+floaterm", -- optional group name
    c = { "<cmd>FloatermNew<cr>", "Create new floaterm"},
    n = { "<cmd>FloatermNext<cr>", "Next floaterm"},
    p = { "<cmd>FloatermPrev<cr>", "Previous floaterm"},
    t = { "<cmd>FloatermToggle<cr>", "Toggle floaterm window"},
    k = { "<cmd>FloatermKill<cr>", "Kill floaterm window"},
  },
  s = {
    name = "+telescope",
    o = { "<cmd>Telescope oldfiles<cr>", "Search in oldfiles" },
    b = { "<cmd>Telescope buffers<cr>", "Search in buffers" },
    f = { "<cmd>Telescope find_files<cr>", "Find files" },
    h = { "<cmd>Telescope command_history<cr>", "Search for command history" },
  },
}, { prefix = "<Space>" })


