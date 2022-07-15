local opt    = vim.opt
local env    = vim.env
local glb = vim.g

-- Neovide configuration
if glb.neovide then
  env.NEOVIDE_MULTIGRID = "1" --enable floating windows
  glb.neovide_fullscreen = 1
  glb.neovide_refresh_rate = 165
  glb.neovide_transparency = 0.80
  glb.neovide_no_idle = 1
  --glb.neovide_cursor_vfx_particle_speed = 10.0
  --glb.neovide_cursor_vfx_particle_density = 100.0
  --glb.neovide_cursor_antialiasing = 0 -- fixes cursor visual issues
  --glb.neovide_cursor_vfx_mode = "sonicboom"
  --glb.neovide_remember_window_size = 1
end

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
  undodir = string.format("%s/.undodir", env.HOME),
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
  completeopt = {"noinsert", "menuone", "noselect"},
  listchars = {
    eol = "$",
    trail = "+",
    tab = "> "
  },
  shell = "/bin/bash",
}

for k,v in pairs(options) do
  opt[k] = v
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
env.FZF_DEFAULT_COMMAND = "rg --files --hidden --follow --no-ignore-vcs --fixed-strings"
env.FZF_DEFAULT_OPTS = [[--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --bind ctrl-j:down,ctrl-k:up,ctrl-h:preview-down,ctrl-l:preview-up]]

-- Emmet
glb.user_emmet_leader_key = ","

-- Gitgutter
glb.gitgutter_git_executable = "/usr/bin/git"

-- VimGo
glb.go_def_mode = 'gopls'
glb.go_info_mode = 'gopls'
glb.go_highlight_structs = 1
glb.go_highlight_methods = 1
glb.go_highlight_functions = 1
glb.go_highlight_function_calls = 1
glb.go_highlight_function_parameters = 1
glb.go_highlight_operators = 1
glb.go_highlight_types = 1
glb.go_highlight_fields = 1
glb.go_highlight_build_constraints = 1
glb.go_highlight_generate_tags = 1
glb.go_highlight_format_strings = 1
glb.go_highlight_variable_declarations = 1
glb.go_highlight_variable_assignments = 1
glb.go_auto_type_info = 1
glb.go_fmt_autosave = 1
glb.go_mod_fmt_autosave = 1
glb.go_gopls_enabled = 1
glb.go_fmt_command = "goimports"

-- Rust.vim
glb.rustfmt_autosave = 1

-- Racer
glb.racer_cmd = "/home/user/.cargo/bin/racer"

--[[
the following code alternates between the tokyonight
and papercolor colorschemes using even or odd numbers
]]
math.randomseed(os.time()) --set seed to current time
local rand = math.random(1000)

if (rand % 3 == 0) then
  --Tokyonight
  glb.tokyonight_style = "night"
  vim.cmd 'colorscheme tokyonight'
elseif (rand % 2 == 0) then
  --Gruvbox
  vim.cmd 'colorscheme gruvbox'
else
  --PaperColor
  vim.cmd 'colorscheme PaperColor'
end

