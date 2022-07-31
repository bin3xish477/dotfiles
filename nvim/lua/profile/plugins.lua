local packer = require('packer')

packer.init {
  display = {
    open_fn = require('packer.util').float,
    prompt_border = 'double',
  }
}

packer.reset()
packer.startup(function(use)
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup {
      padding = false,
    } end
  }
  use {
    'romgrk/barbar.nvim',
    config = function() require('bufferline').setup {
      auto_hide = false,
      closable = true,
      icons = true,
    } end,
    wants = {
      'kyazdani42/nvim-web-devicons',
    },
  }
  use 'Yggdroot/indentLine'
  use 'tpope/vim-fugitive'
  use 'jiangmiao/auto-pairs'
  use 'airblade/vim-gitgutter'
  use 'maxboisvert/vim-simple-complete'
  use 'mattn/emmet-vim'
  use 'NLKNguyen/papercolor-theme'
  use 'glepnir/galaxyline.nvim'
  use 'Avimitin/nerd-galaxyline'
  use 'rust-lang/rust.vim'
  use 's3rvac/vim-syntax-yara'
  use 'ellisonleao/gruvbox.nvim'
  --use ''

  use {
    'fatih/vim-go',
    run = ':GoInstallBinaries',
  }

  use {
    'wbthomason/packer.nvim',
    opt = false,
  }
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons',
      },
      config = function() require('nvim-tree').setup {
        open_on_setup = false,
        open_on_tab = false,
        view = {
          width = 30,
          relativenumber = true,
          --side = "right",
        },
        filters = {
          dotfiles = true,
        },
        actions = {
          open_file = {
            resize_window = true,
          }
        }
      } end
  }
  use {
    'folke/tokyonight.nvim',
    branch = 'main',
  }
  use {
    'junegunn/fzf',
    run = './install --bin',
  }
  use 'junegunn/fzf.vim'
end)
