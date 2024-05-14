local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }) end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({ 
  -- GIT
{"sindrets/diffview.nvim"},

 {"airblade/vim-rooter" } ,

 {"folke/trouble.nvim"},

  -- Lualine
 {
  'nvim-lualine/lualine.nvim',
   dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
 },

     -- LSP
 {"neovim/nvim-lspconfig"},
 {  "lspcontainers/lspcontainers.nvim" },
 {   'nvim-lua/lsp-status.nvim' },

 {   "L3MON4D3/LuaSnip" }, -- Snippets plugin
 {   "saadparwaiz1/cmp_luasnip" },

 {   "hrsh7th/cmp-nvim-lsp" }, -- Source nvim lsp
 {   "hrsh7th/cmp-buffer" },
 {   "hrsh7th/cmp-path" },
 {   "hrsh7th/cmp-nvim-lua" },
 {   "hrsh7th/cmp-cmdline" },
 {   "hrsh7th/nvim-cmp" },

 {   "windwp/nvim-autopairs" },
 {   "onsails/lspkind-nvim" },

 {   "folke/lsp-colors.nvim" },

   -- Comments
    {"tpope/vim-commentary"},
   -- Trim free space
    {"csexton/trailertrash.vim"},
   -- []""()
    {"tpope/vim-surround"},

   -- Lit template
   {"jonsmithers/vim-html-template-literals"},

   -- Icons
    {"kyazdani42/nvim-web-devicons"},

   -- Treesitter
    {"nvim-treesitter/nvim-treesitter"},

   -- Telescope
    {
     "nvim-telescope/telescope.nvim",
     dependencies = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
   },
    {"nvim-telescope/telescope-node-modules.nvim"},
    {"nvim-telescope/telescope-fzy-native.nvim"},
    { "nvim-telescope/telescope-file-browser.nvim" },

   -- JSX/JS
    {"maxmellon/vim-jsx-pretty"},
    {"pangloss/vim-javascript"},
    { "styled-components/vim-styled-components" , branch =  'main' },

   -- TSX/TS
    {"peitalin/vim-jsx-typescript"},
    {"leafgarland/typescript-vim"},

   -- Svelte
    {"evanleck/vim-svelte"},

   -- FZF
    { "junegunn/fzf", run = "./install --all" },
    { "junegunn/fzf.vim" },

   -- Colorshemas
    {"morhetz/gruvbox"},
    {"nanotech/jellybeans.vim"},
    {"jaredgorski/SpaceCamp"},
    {"tpope/vim-vividchalk"},
    {"ayu-theme/ayu-vim"},
    {"tomasr/molokai"},
    {"sainnhe/sonokai"},
    {"rebelot/kanagawa.nvim"},

   -- CSS

   -- Formatters
    {"prettier/vim-prettier"},

   -- JSON
    {"elzr/vim-json"},

   -- Rust
    {"rust-lang/rust.vim"},
    {"cespare/vim-toml"},

   -- GO
    {'ray-x/go.nvim'},
   {'ray-x/guihua.lua'}, -- recommended if need floating window support

   -- Game dev
    {'habamax/vim-godot'}

})
