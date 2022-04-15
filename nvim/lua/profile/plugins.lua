packer = require('packer')

packer.init {
  display = {
    open_fn = require('packer.util').float,
    prompt_border = 'double',
  }
}

local use = packer.use

packer.reset()
packer.startup(function()
  use 'junegunn/fzf.vim'
  use 'numToStr/Comment.nvim'
  use 'romgrk/barbar.nvim'
  use 'Yggdroot/indentLine'
  use 'tpope/vim-fugitive'
  use 'preservim/vim-markdown'
  use 'jiangmiao/auto-pairs'
  use 'airblade/vim-gitgutter'
  use 'maxboisvert/vim-simple-complete'

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
      config = function() require'nvim-tree'.setup {} end
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
