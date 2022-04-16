--[[
Keymapping Modes:
  - Normal Mode = "n"
  - Insert Mode = "i"
  - Visual Mode = "v"
  - Visual Block Mode = "x"
  - Command Mode = "c"
  - Terminal Mode = "t"
--]]

local opts = {
  noremap = true, -- non-recursive mapping
  silent = true,
}

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- remap `jj` to ESC in insert mode
keymap("i", "jj", "<esc>", opts)

-- move between windows quicker
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- resize windows with arrow keys
keymap("n", "<C-UP>", ":resize +2<cr>", opts)
keymap("n", "<C-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<cr>", opts)

keymap("n", "<leader>db", ":normal gg<s-v>Gd<cr>", opts)
keymap("n", "<leader>dfl", "<s-v>ggd<cr>", opts)
keymap("n", "<leader>", "<s-v>Gd<cr>", opts)

-- FZF
keymap("n", "<leader>ff", ":Files<cr>", opts)

-- NvimTree
keymap("n", "<leader>t", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>r", ":NvimTreeRefresh<cr>", opts)

-- Barbar
keymap("n", "<leader>bp", ":BufferPrevious<cr>", opts)
keymap("n", "<leader>bn", ":BufferNext<cr>", opts)
keymap("n", "<leader>bc", ":BufferClose<cr>", opts)

-- exit terminal with ESC
keymap("t", "<esc>", "<c-\\><c-n>:q!<esc>", opts)

keymap("n", "ev", ":split $MYVIMRC<cr>", opts)
keymap("n", "sv", ":w<cr> :source $MYVIMRC<cr> :q<cr>", opts)
-- keymap("", "", "", opts)
