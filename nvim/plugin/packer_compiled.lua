-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/alexrrr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/alexrrr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/alexrrr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/alexrrr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/alexrrr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nE\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fpadding\1\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n[\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\nicons\2\rclosable\2\14auto_hide\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim",
    wants = { "kyazdani42/nvim-web-devicons" }
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  fzf = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://github.com/Yggdroot/indentLine"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nerd-galaxyline"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/nerd-galaxyline",
    url = "https://github.com/Avimitin/nerd-galaxyline"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireÿ\3\1\0\t\0\30\0.6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\18\0005\4\5\0009\5\3\0009\5\4\5B\5\1\2=\5\6\0049\5\3\0009\5\a\5B\5\1\2=\5\b\0049\5\3\0009\5\t\0055\a\f\0009\b\n\0009\b\v\b=\b\r\aB\5\2\2=\5\14\0049\5\15\0009\5\16\5=\5\17\4=\4\3\0034\4\a\0005\5\19\0>\5\1\0045\5\20\0>\5\2\0045\5\21\0>\5\3\0045\5\22\0>\5\4\0045\5\23\0>\5\5\0045\5\24\0>\5\6\4=\4\25\0035\4\27\0003\5\26\0=\5\28\4=\4\29\3B\1\2\1K\0\1\0\fsnippet\vexpand\1\0\0\0\fsources\1\0\2\vinsert\2\tname\nemoji\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\1\0\0\n<C-y>\fdisable\vconfig\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-p>\21select_prev_item\n<C-n>\1\0\0\21select_next_item\fmapping\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n÷\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\factions\14open_file\1\0\0\1\0\1\18resize_window\2\ffilters\1\0\1\rdotfiles\2\tview\1\0\2\19relativenumber\2\nwidth\3\30\1\0\2\18open_on_setup\2\16open_on_tab\1\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n‡\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\2\17sync_install\1\17auto_install\2\1\26\0\0\6c\bcpp\fc_sharp\blua\trust\ago\tyaml\tjson\tjava\vpython\tbash\bnix\rmarkdown\nregex\bsql\15typescript\truby\fgraphql\ngomod\vgowork\15dockerfile\15javascript\btsx\ttoml\bcss\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["omnisharp-vim"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/omnisharp-vim",
    url = "https://github.com/OmniSharp/omnisharp-vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/papercolor-theme",
    url = "https://github.com/NLKNguyen/papercolor-theme"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n£\2\0\0\4\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\0025\3\a\0=\3\b\2B\0\2\1K\0\1\0\15float_opts\1\0\2\vborder\vcurved\rwinblend\3\0\nshell\6o\bvim\1\0\n\14direction\nfloat\16auto_scroll\2\20insert_mappings\2\20shade_terminals\2\18close_on_exit\2\20start_in_insert\2\17hide_numbers\2\20shading_factors\3\1\tsize\3\20\17open_mapping\n<c-\\>\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-syntax-yara"] = {
    loaded = true,
    path = "/Users/alexrrr/.local/share/nvim/site/pack/packer/start/vim-syntax-yara",
    url = "https://github.com/s3rvac/vim-syntax-yara"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireÿ\3\1\0\t\0\30\0.6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\18\0005\4\5\0009\5\3\0009\5\4\5B\5\1\2=\5\6\0049\5\3\0009\5\a\5B\5\1\2=\5\b\0049\5\3\0009\5\t\0055\a\f\0009\b\n\0009\b\v\b=\b\r\aB\5\2\2=\5\14\0049\5\15\0009\5\16\5=\5\17\4=\4\3\0034\4\a\0005\5\19\0>\5\1\0045\5\20\0>\5\2\0045\5\21\0>\5\3\0045\5\22\0>\5\4\0045\5\23\0>\5\5\0045\5\24\0>\5\6\4=\4\25\0035\4\27\0003\5\26\0=\5\28\4=\4\29\3B\1\2\1K\0\1\0\fsnippet\vexpand\1\0\0\0\fsources\1\0\2\vinsert\2\tname\nemoji\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\1\0\0\n<C-y>\fdisable\vconfig\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-p>\21select_prev_item\n<C-n>\1\0\0\21select_next_item\fmapping\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n£\2\0\0\4\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\0025\3\a\0=\3\b\2B\0\2\1K\0\1\0\15float_opts\1\0\2\vborder\vcurved\rwinblend\3\0\nshell\6o\bvim\1\0\n\14direction\nfloat\16auto_scroll\2\20insert_mappings\2\20shade_terminals\2\18close_on_exit\2\20start_in_insert\2\17hide_numbers\2\20shading_factors\3\1\tsize\3\20\17open_mapping\n<c-\\>\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n‡\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\2\17sync_install\1\17auto_install\2\1\26\0\0\6c\bcpp\fc_sharp\blua\trust\ago\tyaml\tjson\tjava\vpython\tbash\bnix\rmarkdown\nregex\bsql\15typescript\truby\fgraphql\ngomod\vgowork\15dockerfile\15javascript\btsx\ttoml\bcss\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n[\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\nicons\2\rclosable\2\14auto_hide\1\nsetup\15bufferline\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nE\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fpadding\1\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n÷\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\factions\14open_file\1\0\0\1\0\1\18resize_window\2\ffilters\1\0\1\rdotfiles\2\tview\1\0\2\19relativenumber\2\nwidth\3\30\1\0\2\18open_on_setup\2\16open_on_tab\1\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
