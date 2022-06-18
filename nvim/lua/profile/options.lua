-- Options
local options = {
  backup = false,
  writebackup = false,
  swapfile = false,
  relativenumber = true,
  number = true,
  clipboard = "unnamedplus",
  ignorecase = true,
  undofile = true,
  undodir = string.format("%s/.undodir", vim.env.HOME),
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
  splitright = true,
  splitbelow = true,
  termguicolors = true,
  background = "dark",
  list = true,
  listchars = {
    eol = "$",
    trail = "+",
    tab = "> "
  },
  shell = "/bin/bash",
}

for k,v in pairs(options) do
  vim.opt[k] = v
end

-- Autocommands
local autocmd = vim.api.nvim_create_autocmd

local long_text_files = vim.api.nvim_create_augroup("LongTextFiles", {clear = true})
autocmd(
  {"BufRead", "BufNewFile"},
  {
    group = long_text_files,
    pattern = {'*.md', "*.txt"},
    command = "set wrap",
  }
)

-- syntax highlighting for Yara rules
local highlight_yara_files = vim.api.nvim_create_augroup("HighlightYaraFiles", {clear = true})
autocmd(
  {"BufNewFile", "BufRead"},
  {
    group = highlight_yara_files,
    pattern = {"*.yara", "*.yara"},
    command = "setlocal filetype=yara",
  }
)

-- FZF
vim.env.FZF_DEFAULT_COMMAND = "rg --files --hidden --follow --no-ignore-vcs --fixed-strings"
vim.env.FZF_DEFAULT_OPTS = [[--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --bind ctrl-j:down,ctrl-k:up,ctrl-h:preview-down,ctrl-l:preview-up]]

-- Emmet
vim.g.user_emmet_leader_key = ","

-- Gitgutter
vim.g.gitgutter_git_executable = "/usr/bin/git"

-- VimGo
vim.g.go_def_mode = 'gopls'
vim.g.go_info_mode = 'gopls'
vim.g.go_highlight_structs = 1
vim.g.go_highlight_methods = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_function_parameters = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_build_constraints = 1
vim.g.go_highlight_generate_tags = 1
vim.g.go_highlight_format_strings = 1
vim.g.go_highlight_variable_declarations = 1
vim.g.go_highlight_variable_assignments = 1
vim.g.go_auto_type_info = 1
vim.g.go_fmt_autosave = 1
vim.g.go_mod_fmt_autosave = 1
vim.g.go_gopls_enabled = 1
vim.g.go_fmt_command = "goimports"

-- Rust.vim
vim.g.rustfmt_autosave = 1

-- Racer
vim.g.racer_cmd = "/home/user/.cargo/bin/racer"

--[[
the following code alternates between the tokyonight
and papercolor colorschemes using even or odd numbers
]]
math.randomseed(os.time()) --set seed to current time
local rand = math.random(1000)

if (rand % 3 == 0) then
  --Tokyonight
  vim.g.tokyonight_style = "night"
  vim.cmd 'colorscheme tokyonight'
elseif (rand % 2 == 0) then
  --Gruvbox
  vim.cmd 'colorscheme gruvbox'
else
  --PaperColor
  vim.cmd 'colorscheme PaperColor'
end
