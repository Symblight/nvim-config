local status, autopairs = pcall(require, "nvim-autopairs")
if (not status) then return end

autopairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
  },
  disable_filetype = { "TelescopePrompt" , "vim" },
})
