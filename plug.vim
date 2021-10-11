if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()


if has("nvim")
    Plug 'neovim/nvim-lspconfig'
    Plug 'hoob3rt/lualine.nvim'
   
    " Auto complete 
    " Plug 'nvim-lua/completion-nvim'
    Plug 'windwp/nvim-autopairs'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'folke/lsp-colors.nvim'

    " Dev icons
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'
    
    Plug 'folke/trouble.nvim'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Git
    Plug 'lewis6991/gitsigns.nvim'

    " For Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " For JS/JSX
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'

    " theme colors
    Plug 'cormacrelf/vim-colors-github'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'sainnhe/sonokai'

    " highlight
    Plug 'norcalli/nvim-colorizer.lua'

    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'leafOfTree/vim-svelte-plugin'
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
   endif

call plug#end()
