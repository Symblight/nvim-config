local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


return require("packer").startup(function(use) 
  use {"wbthomason/packer.nvim"}

  use { "airblade/vim-rooter" }

  use "folke/trouble.nvim"

 -- use "rcarriga/nvim-notify"

  -- Lualine
  use  {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

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
  use "ryanoasis/vim-devicons"
  use "kyazdani42/nvim-web-devicons"

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
  use "HerringtonDarkholme/yats.vim"

  -- FZF
  use { "junegunn/fzf", run = "./install --all" }
  use { "junegunn/fzf.vim" }

  -- Colorshemas
  use "morhetz/gruvbox"
  use "EdenEast/nightfox.nvim"

  -- CSS
  use {"hail2u/vim-css3-syntax"}
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require "colorizer".setup()
    end
  }

  -- Tree files
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  use "prettier/vim-prettier"

  -- JSON
  use "elzr/vim-json"
  use "neoclide/jsonc.vim"

  -- Rust
  use "rust-lang/rust.vim"
  use "cespare/vim-toml"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
