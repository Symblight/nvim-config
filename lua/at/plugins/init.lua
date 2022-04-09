local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.cmd("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end


return require("packer").startup(function() 
  use {"wbthomason/packer.nvim"}

  use "folke/trouble.nvim"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "lspcontainers/lspcontainers.nvim"

  use "rcarriga/nvim-notify"

  -- Lualine
  use  {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

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

  -- Commit
  use "numToStr/Comment.nvim"

  -- Icons
  use "ryanoasis/vim-devicons"
  use "kyazdani42/nvim-web-devicons"

  use "nvim-treesitter/nvim-treesitter"

  -- AI
  use "github/copilot.vim"

  -- Git
  use "lewis6991/gitsigns.nvim"
  use { "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" }

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
  }
  use {"nvim-telescope/telescope-node-modules.nvim"}
  use {"nvim-telescope/telescope-packer.nvim"}
  use {"nvim-telescope/telescope-fzy-native.nvim"}

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
  use "projekt0n/github-nvim-theme"
  use "morhetz/gruvbox"
  use "mhartington/oceanic-next"
  use "EdenEast/nightfox.nvim"

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
  use {"ray-x/navigator.lua", requires = {"ray-x/guihua.lua", run = "cd lua/fzy && make"}}

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

  -- Rust
  use "rust-lang/rust.vim"
  use "cespare/vim-toml"
end)
