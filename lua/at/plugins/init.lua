local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


return require("packer").startup(function(use) 
  use {"wbthomason/packer.nvim"}

  use { "airblade/vim-rooter" }

  use "folke/trouble.nvim"

  -- Lualine
  use  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- []""()
  use "tpope/vim-surround"

    -- LSP
  use "neovim/nvim-lspconfig"
  use "lspcontainers/lspcontainers.nvim"
  use 'nvim-lua/lsp-status.nvim'

  use "L3MON4D3/LuaSnip" -- Snippets plugin
  use "saadparwaiz1/cmp_luasnip"

  use "hrsh7th/cmp-nvim-lsp" -- Source nvim lsp
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/nvim-cmp"

  use "windwp/nvim-autopairs"
  use "onsails/lspkind-nvim"

  use "folke/lsp-colors.nvim"

  -- Icons
  use "kyazdani42/nvim-web-devicons"

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
  }
  use {"nvim-telescope/telescope-node-modules.nvim"}
  use {"nvim-telescope/telescope-packer.nvim"}
  use {"nvim-telescope/telescope-fzy-native.nvim"}
  use { "nvim-telescope/telescope-file-browser.nvim" }

  -- JSX/JS
  use "yuezk/vim-js"
  use "maxmellon/vim-jsx-pretty"

  -- Svelte
  use "evanleck/vim-svelte"
  use "pangloss/vim-javascript"

  -- FZF
  use { "junegunn/fzf", run = "./install --all" }
  use { "junegunn/fzf.vim" }

  -- Colorshemas
  use "morhetz/gruvbox"
  use "nanotech/jellybeans.vim"
  use "habamax/vim-gruvbit"

  -- CSS
  use {"hail2u/vim-css3-syntax"}
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require "colorizer".setup()
    end
  }

  -- Formatters
  use "prettier/vim-prettier"

  -- JSON
  use "elzr/vim-json"

  -- Rust
  use "rust-lang/rust.vim"
  use "cespare/vim-toml"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
