local options = {
        backup = false,
        writebackup = false,
        swapfile = false,
        relativenumber = true,
        number = true,
        clipboard = "unnamedplus",
        ignorecase = true,
        undofile = true,
        undodir = "~/.undodir",
        encoding = "UTF-8",
        pastetoggle = "<F2>",
        shiftwidth = 2,
        expandtab = true,
        hlsearch = true,
        wrap = false,
        cursorline = true,
        pumheight = 10,
        conceallevel = 0,
        tabstop = 2,
        cmdheight = 2,
        termguicolors = true,
        background = "dark"
}

-- setting all options from `options` table
for ,v in pairs(options) do
  vim.opt[k] = v
end

vim.g.tokyonight_style = "night"
-- vim.cmd 'colorscheme tokyonight'

-- if vim.fn.has('win32') then
-- vim.opt.undodir = "C:\\Users\\rodri\\.undodir"
-- else
-- vim.opt.undodir = "~/.undodir"
-- end
