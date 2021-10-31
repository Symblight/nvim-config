local vim = vim

vim.wo.number = true
vim.g.mapleader = ","

vim.o.scrolloff = 7
vim.o.guifont = "guifont=Monaco:h2"

-- Indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.cursorline = true
vim.opt.title = true
vim.opt.hlsearch = true
vim.opt.showcmd = true

--vim.o.encoding = 'utf-8'
vim.o.colorcolumn = '79'
vim.o.mouse = 'a'

vim.cmd('filetype plugin on')

vim.opt.wildignore = {'*/cache/*', '*/tmp/*'}

if vim.fn.has('termguicolors') then
  vim.opt.termguicolors = true
end

if vim.fn.has("unix") then
  local uname = vim.fn.system("uname -s")
  -- Do Mac stuff
  if uname == "Darwin\n" then
    vim.opt.clipboard = 'unnamedplus'
  end
end


vim.api.nvim_set_keymap('n', ',<space>', ':nohlsearch<CR>', {noremap = true})

vim.cmd 'source ~/.config/nvim/lua/at/settings/buffers.vim'
