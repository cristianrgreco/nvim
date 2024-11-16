require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader><leader>", ":Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fk", ":Telescope keymaps<CR>", { desc = "Find keymap" })

map("n", "ss", ":vsplit<CR>", { desc = "Split window vertically" })
map("n", "sv", ":split<CR>", { desc = "Split window horizontally" })

-- map("n", "<C-H>", "<C-W><")
-- map("n", "<C-L>", "<C-W>>")
-- map("n", "<C-K>", "<C-W>-")
-- map("n", "<C-J>", "<C-W>+")

map("n", "<leader>tn", function()
  require("neotest").run.run()
end, { desc = "Run nearest test" })

map("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "Run tests in current file" })

map("n", "<leader>td", function()
  require("neotest").run.run { strategy = "dap" }
end, { desc = "Debug nearest test" })

map("n", "<leader>tS", function()
  require("neotest").run.stop()
end, { desc = "Stop nearest test" })

map("n", "<leader>ts", function()
  require("neotest").summary.toggle()
end, { desc = "Toggle test summary" })

map("n", "<leader>to", function()
  require("neotest").output_panel.toggle()
end, { desc = "Toggle output panel" })

map("n", "<leader>tp", function()
  require("neotest").output.open { enter = true }
end, { desc = "Open test output" })
