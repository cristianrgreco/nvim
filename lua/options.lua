require "nvchad.options"

local o = vim.o

o.scrolloff = 999
o.relativenumber = true
o.autoread = true
-- o.colorcolumn = "120"
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.schedule(function()
  vim.opt.clipboard = ""
end)

vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
  augroup END
]]
