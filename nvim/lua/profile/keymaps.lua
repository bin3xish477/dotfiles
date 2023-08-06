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
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)

-- deleting buffer keymaps
keymap("n", "<leader>db", ":normal gg<s-v>Gd<cr>", opts)
keymap("n", "<leader>dfl", "<s-v>ggd<cr>", opts)
keymap("n", "<leader>dll", "<s-v>Gd<cr>", opts)

-- dragging lines up or down
keymap("n", "<up>", ":move-2<cr>", opts)
keymap("n", "<down>", ":move+<cr>", opts)

-- FZF
keymap("n", "<leader>ff", ":FZF<cr>", opts)
keymap("n", "<leader>H", ":Helptags<cr>", opts)
keymap("n", "<leader>fc", ":Commits<cr>", opts)
keymap("n", "<leader>fs", ":Rg<cr>", opts)

-- NvimTree
keymap("n", "<leader>t", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>r", ":NvimTreeRefresh<cr>", opts)

-- Barbar
keymap("n", "<s-h>", ":BufferPrevious<cr>", opts)
keymap("n", "<s-l>", ":BufferNext<cr>", opts)
keymap("n", "<s-c>", ":BufferClose<cr>", opts)
keymap("n", "<leader>ca", ":BufferCloseAllButCurrent<cr>", opts)


-- exit terminal with ESC
keymap("t", "<esc>", "<c-\\><c-n>:q!<esc>", opts)

-- clear highlighted search
keymap("n", "<leader>", ":nohlsearch<cr>", opts)

-- Rust.vim
keymap("n", "<leader>rr", ":RustRun<cr>", opts)
keymap("n", "<leader>rf", ":RustFmt<cr>", opts)

keymap("n", "<leader>td", ":TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<leader>tw", ":TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>tr", ":TroubleToggle lsp_references<cr>", opts)
keymap("n", "<leader>tg", ":TroubleToggle lsp_definitions<cr>", opts)
keymap("n", "<leader>tl", ":TroubleToggle lsp_type_definitions<cr>", opts)
keymap("n", "<leader>tq", ":TroubleToggle quickfix<cr>", opts)
keymap("n", "<leader>tc", ":TroubleClose<cr>", opts)

-- glow.nvim
keymap("n", "<leader>rm", ":Glow<cr>", opts)

if vim.o.shell == "/bin/bash"
  then
    keymap("x", "<leader>sh", ":!bash<cr>", opts)
else
    -- [[ assume Zsh if not bash
    keymap("x", "<leader>sh", ":!zsh<cr>", opts)
end

if vim.g.neovide then
  keymap("i", "<c-v>", "<c-r>+", opts)
end

-- keymap("", "", "", opts)
