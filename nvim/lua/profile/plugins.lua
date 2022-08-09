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
  use {
    'windwp/nvim-autopairs',
    config = function() require("nvim-autopairs").setup() end
  }

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
        open_on_setup = true,
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
  use {
    'akinsho/toggleterm.nvim',
    config = function() require('toggleterm').setup {
      open_mapping = [[<c-\>]],
      size = 20,
      shading_factors = 1,
      hide_numbers = true,
      start_in_insert = true,
      close_on_exit = true,
      shade_terminals = true,
      insert_mappings = true,
      shell = vim.o.shell,
      direction = "float",
      float_opts = {
        border = "curved",
        winblend = 0,
      }
    } end
  }

  -- tree-sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = 'TSUdate',
    config = function() require('nvim-treesitter.configs').setup {
      ensure_installed = {
        "c", "cpp", "c_sharp", "lua", "rust", "go", "yaml", "json", "java", "python",
        "bash", "nix", "markdown", "regex", "sql", "typescript", "ruby", "graphql",
        "gomod", "gowork", "dockerfile", "javascript", "tsx", "toml",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
      },
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
      }
    } end
  }

  use 'p00f/nvim-ts-rainbow'

  use 'Yggdroot/indentLine'
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'mattn/emmet-vim'
  use 'NLKNguyen/papercolor-theme'
  use 'glepnir/galaxyline.nvim'
  use 'Avimitin/nerd-galaxyline'
  use 'rust-lang/rust.vim'
  use 's3rvac/vim-syntax-yara'
  use 'ellisonleao/gruvbox.nvim'
  use 'OmniSharp/omnisharp-vim'
  --use ''
end)
