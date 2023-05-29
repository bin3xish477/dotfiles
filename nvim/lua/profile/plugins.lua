-- Install packer, credits to @tjdevries: https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
  vim.cmd [[packadd packer.nvim]]
end

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
      icons = { filetype = { enabled = true } },
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
    -- run = ':GoInstallBinaries',
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
      shell = '/bin/zsh',
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
      require("luasnip.loaders.from_vscode").lazy_load()
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
          {name = 'luasnip', keyword_length = 2 },
          {name = 'nvim_lsp', keyword_length = 2},
          {name = 'buffer', keyword_length = 2},
          {name = 'path', keyword_length = 2},
          {name = 'cmdline', keyword_length = 2},
          {name = 'emoji', insert = true},
        },
        window = {
          documentation = cmp.config.window.bordered()
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
    config = function () require('mkdnflow').setup{} end,
  }
 
  use {
    'simrat39/rust-tools.nvim',
    config = function()
      local rt = require("rust-tools")

      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
      })
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    },
    config = function()
      require('lualine').setup({})
    end
  }

  use {
    'ray-x/lsp_signature.nvim',
    config = function ()
      require('lsp_signature').setup({})
    end
  }

  use {
    'j-hui/fidget.nvim',
    config = function () require('fidget').setup({}) end
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function () require('indent_blankline').setup({
      char = "┊",
      show_trailing_blankline_indent = false,
    }) end
  }

  use {
    'OscarCreator/rsync.nvim',
    run = 'make',
    requires = {
      'nvim-lua/plenary.nvim',
      }
  }

  use 'f-person/git-blame.nvim'
  use 'psf/black'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-emoji'
  use 'hrsh7th/cmp-nvim-lsp'
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
  use 'folke/tokyonight.nvim'
  use 'dart-lang/dart-vim-plugin'
  -- use ''

  if is_bootstrap then
    require('packer').sync()
  end
end)
