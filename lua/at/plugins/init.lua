local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.cmd("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end


return require('packer').startup(function() 
  use {"wbthomason/packer.nvim"}

  use "neovim/nvim-lspconfig"
  use "rcarriga/nvim-notify"
  use "hoob3rt/lualine.nvim"

  use { "hrsh7th/nvim-cmp" }

  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'hrsh7th/cmp-nvim-lsp' -- Source nvim lsp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'

  use "windwp/nvim-autopairs"
  use "onsails/lspkind-nvim"

  use "folke/lsp-colors.nvim"

  -- Icons
  use "ryanoasis/vim-devicons"
  use "kyazdani42/nvim-web-devicons"

  use "folke/trouble.nvim"

  use "nvim-treesitter/nvim-treesitter"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {"nvim-telescope/telescope-node-modules.nvim"}
  use {"nvim-telescope/telescope-packer.nvim"}
  use {"nvim-telescope/telescope-fzy-native.nvim"}

  -- JSX/JS
  use "yuezk/vim-js"
  use "maxmellon/vim-jsx-pretty"
  use "leafOfTree/vim-svelte-plugin"

  -- FZF
  use { "junegunn/fzf", run = "./install --all" }
  use { "junegunn/fzf.vim" }

  -- Colorshemas
  use "projekt0n/github-nvim-theme"

  -- CSS
  use {"hail2u/vim-css3-syntax"}
  use {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require "colorizer".setup()
  end
  }

  use "glepnir/lspsaga.nvim"

  -- Tree files
  use "preservim/nerdtree"
  use "Xuyuanp/nerdtree-git-plugin"
  use "tiagofumo/vim-nerdtree-syntax-highlight"

  use "prettier/vim-prettier"
  use "editorconfig/editorconfig-vim"

  -- Packages npm/yarn
  use({
  "vuki656/package-info.nvim",
  requires = "MunifTanjim/nui.nvim",
  })

  -- JSON
  use "elzr/vim-json"
  use "neoclide/jsonc.vim"
end)
