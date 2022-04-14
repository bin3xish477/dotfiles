vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.opt.undofile = true
vim.opt.undodir = "~/.undodir"
vim.opt.encoding = "UTF-8"
vim.opt.pastetoggle = "<F2>"
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.pumheight = 10                  -- pop-up menu height
vim.opt.conceallevel = 0                -- show tilde's in Markdown!
vim.opt.tabstop = 2                         -- 1 tab = 2 spaces
vim.opt.cmdheight = 2                     -- more spaces for command-line mode

-- if vim.fn.has('win32') then
-- vim.opt.undodir = "C:\\Users\\rodri\\.undodir"
-- else
-- vim.opt.undodir = "~/.undodir"
-- end
