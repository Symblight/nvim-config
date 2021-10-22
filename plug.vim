if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()


if has("nvim")
    Plug 'neovim/nvim-lspconfig'
    " Plug 'williamboman/nvim-lsp-installer'
    Plug 'hoob3rt/lualine.nvim'
   
    " Auto complete 
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'L3MON4D3/LuaSnip'
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'onsails/lspkind-nvim'
    " Notify
    Plug 'rcarriga/nvim-notify'

    Plug 'folke/lsp-colors.nvim'
    Plug 'windwp/nvim-autopairs'

    " Dev icons
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'
    
    Plug 'folke/trouble.nvim'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Git
    Plug 'lewis6991/gitsigns.nvim'

    " For Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " For JS/JSX
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'

    " For svelte
    Plug 'leafOfTree/vim-svelte-plugin'

    " theme colors
    Plug 'cormacrelf/vim-colors-github'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'sainnhe/sonokai'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'rakr/vim-one'
    Plug 'sainnhe/sonokai'

    " highlight
    Plug 'norcalli/nvim-colorizer.lua'

    Plug 'glepnir/lspsaga.nvim'
    
    " Tree files
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'branch': 'release/0.x'
      \ }
   endif

call plug#end()
