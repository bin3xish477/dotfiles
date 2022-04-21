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
  use 'jiangmiao/auto-pairs'
  use 'airblade/vim-gitgutter'
  use 'maxboisvert/vim-simple-complete'
  use 'mattn/emmet-vim'
  use 'NLKNguyen/papercolor-theme'
  use 'glepnir/galaxyline.nvim'
  use 'Avimitin/nerd-galaxyline'
  --use ''

  use {
    'fatih/vim-go',
    run = ':GoInstallBinaries',
  }

  use {
    'ekickx/clipboard-image.nvim',
    config = function() require('clipboard-image').setup({
      default = {
        img_dir = "/img",
        img_dir_txt = "img",
        img_name = function ()
          vim.fn.inputsave()
          local name = vim.fn.input('Image name: ')
          vim.fn.inputrestore()

          if name == nil or name == '' then
            return os.date('%y-%m-%d-%H-%M-%S')
          end
          return name
        end,
      }
    }) end
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
    run = './install --bin',
  }
end)
