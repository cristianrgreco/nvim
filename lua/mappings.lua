require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Run the nearest test
map("n", "<leader>tn", function()
  require("neotest").run.run()
end, { desc = "Run nearest test" })

-- Run all tests in the current file
map("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "Run tests in current file" })

-- Debug the nearest test
map("n", "<leader>td", function()
  require("neotest").run.run { strategy = "dap" }
end, { desc = "Debug nearest test" })

-- Stop the nearest test run
map("n", "<leader>tS", function()
  require("neotest").run.stop()
end, { desc = "Stop nearest test" })

-- Toggle the test summary window
map("n", "<leader>ts", function()
  require("neotest").summary.toggle()
end, { desc = "Toggle test summary" })

-- Toggle the output panel
map("n", "<leader>to", function()
  require("neotest").output_panel.toggle()
end, { desc = "Toggle output panel" })

-- Open the output of the nearest test
map("n", "<leader>tp", function()
  require("neotest").output.open { enter = true }
end, { desc = "Open test output" })
