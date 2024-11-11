require "nvchad.options"

-- add yours here!

local o = vim.o
-- o.colorcolumn = "120"
o.scrolloff = 999
o.relativenumber = true
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Unlick the system clipboard
-- vim.schedule(function()
--   vim.opt.clipboard = ""
-- end)

vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
  augroup END
]]
