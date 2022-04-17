local packer = require('packer')

packer.init {
  display = {
    open_fn = require('packer.util').float,
    prompt_border = 'double',
  }
}

local use = packer.use

packer.reset()
packer.startup(function()
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup {
      padding = false,
    } end
  }
  use 'romgrk/barbar.nvim'
  use 'Yggdroot/indentLine'
  use 'tpope/vim-fugitive'
  use 'preservim/vim-markdown'
  use 'jiangmiao/auto-pairs'
  use 'airblade/vim-gitgutter'
  use 'maxboisvert/vim-simple-complete'
  use 'mattn/emmet-vim'
  use 'NLKNguyen/papercolor-theme'
  use 'glepnir/galaxyline.nvim'
  use 'Avimitin/nerd-galaxyline'
  --use ''

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
        open_on_setup = true,
        open_on_tab = false,
        view = {
          width = 30,
          relativenumber = true,
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
    run = ':call fzf#install()'
  }
end)
