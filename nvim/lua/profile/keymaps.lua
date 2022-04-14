local opts = {
  noremap = true, -- non-recursive mapping
  silent = true,
}

local keymap = vim.api.nvim_set_keymap

-- remap `jj` to ESC in insert mode
keymap("i", "jj", "<esc>", opts)
