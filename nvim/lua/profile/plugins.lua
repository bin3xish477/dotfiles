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
    tag = 'v2.*',
    config = function() require('toggleterm').setup {
      open_mapping = [[<c-\>]],
      size = 20,
      shading_factors = 1,
      hide_numbers = true,
      start_in_insert = true,
      close_on_exit = true,
      shade_terminals = true,
      insert_mappings = true,
      auto_scroll = true,
      shell = vim.o.shell,
      direction = "float",
      float_opts = {
        border = "curved",
        winblend = 0,
      }
    } end
  }

  -- tree-sitter
  use 'p00f/nvim-ts-rainbow'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = 'TSUdate',
    config = function() require('nvim-treesitter.configs').setup {
      ensure_installed = {
        "c", "cpp", "c_sharp", "lua", "rust", "go", "yaml", "json", "java", "python",
        "bash", "nix", "markdown", "regex", "sql", "typescript", "ruby", "graphql",
        "gomod", "gowork", "dockerfile", "javascript", "tsx", "toml", "css",
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
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline', 'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      local cmp = require('cmp')
      cmp.setup {
        mapping = {
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
          },
          ['<C-y>'] = cmp.config.disable,
        },
        sources = {
          {name = 'luasnip'},
          {name = 'nvim_lsp'},
          {name = 'buffer'},
          {name = 'path'},
          {name = 'cmdline'},
          {name = 'emoji', insert = true},
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
      }
    end
  }
    
  use {
    'jakewvincent/mkdnflow.nvim',
    config = function() require('mkdnflow').setup{} end,
  }

  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-emoji'
  use 'hrsh7th/cmp-nvim-lsp'
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
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  --use ''
end)
