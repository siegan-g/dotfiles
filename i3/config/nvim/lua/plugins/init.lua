return require('packer').startup(function(use)
  -- Packer -> Package Manager
  use 'wbthomason/packer.nvim'

  -- colourscheme
  use{
      'rose-pine/neovim'
     }

  -- treesitter ->  syntax highlighter
   use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
     -- treesitter plugins
        use {
          'windwp/nvim-ts-autotag'
        }

--lualine -> status bar
   use {
     'nvim-lualine/lualine.nvim',
     requires = {'kyazdani42/nvim-web-devicons', opt = true}
   }
-- barbar -> Tabs
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
-- nvim tree -> side bar file explorer
  use {
      'kyazdani42/nvim-tree.lua',
      requires =   {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      }
    }
-- Autopair -> Auto pair curly braces and other enclosures
  use {
    'windwp/nvim-autopairs'
  }
 -- which key -> Emacs like which-key
  use {
    'folke/which-key.nvim',
  }
  -- telescope fuzzy finder and vscode like command palette
  use {
    'nvim-telescope/telescope.nvim',
        requires= {{'nvim-lua/plenary.nvim'}}
  }
  -- cmp -> Autocomplete
use { 'neovim/nvim-lspconfig', config = "require('lsp')"}
use { 'hrsh7th/cmp-nvim-lsp'}
use { 'hrsh7th/cmp-buffer'}
use {'hrsh7th/cmp-path'}
use {'hrsh7th/cmp-cmdline'}
use { 'hrsh7th/nvim-cmp'}
use { 'hrsh7th/cmp-vsnip'}
use { 'hrsh7th/vim-vsnip'}

  -- lspkind -> icons for cmp
  use {'onsails/lspkind-nvim'}
-- lsp installer
use {
    'williamboman/nvim-lsp-installer'
}
-- colorizer -> Show hex colours
use {
    'norcalli/nvim-colorizer.lua'
}
-- gitsigns -> line blames and
use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
      }
}
use {
  'glepnir/dashboard-nvim'
}
use {
  'lukas-reineke/indent-blankline.nvim'
}
use {
  'akinsho/toggleterm.nvim'
}
use {
'tami5/lspsaga.nvim', config = "require('lspsaga-config')"
}
use {
  'iamcco/markdown-preview.nvim'
}
-- Glow --> md previewer
use {
  'ellisonleao/glow.nvim'
}
-- Twilight --> Focuses current code block, dims other
use {
'folke/twilight.nvim'
}
end)
