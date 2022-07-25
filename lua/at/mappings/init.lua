local vim = vim
local api = vim.api
local M = {}

function M.map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
function M.mapBuf(buf, mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_buf_set_keymap(buf, mode, lhs, rhs, options)
end
 -- Telescope
M.map("n", "<Space>ff", "<cmd>lua require('telescope.builtin').find_files({ cwd = vim.fn.expand('%:p:h')})<cr>")
M.map("n", "<Space>h", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
M.map("n", "<Space>lg", "<cmd>Telescope live_grep<cr>")
M.map("n", "<Space>b", "<cmd>Telescope buffers<cr>")
M.map("n", "<Space>fb", "<cmd>Telescope file_browser<cr>")

-- Trouble
M.map("n", "<leader>tt", "<cmd>TroubleToggle<cr>")
M.map("n", "<leader>tw",  "<cmd>TroubleToggle workspace_diagnostics<cr>")
M.map("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>")
M.map("n", "<leader>tq",  "<cmd>TroubleToggle quickfix<cr>")

-- Gitsigns
M.map("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<cr>")
M.map("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<cr>")

-- Tree files
--M.map("n", "<C-a>", "<cmd>:NERDTreeToggle<cr>")
-- M.map("n", "<C-t>", "<cmd>:NERDTreeFind<cr>")

-- Moving line
M.map("n", "<C-j>", "<cmd>m .+1<cr>==")
M.map("n", "<C-k>", "<cmd>m .-2<cr>==")

M.map("v", "<C-j>", "<cmd>m '>+1<cr>gv=gv")
M.map("v", "<C-k>", "<cmd>m '<-2<cr>gv=gv")

M.map("i", "<C-j>", "<Esc><cmd>m .+1<cr>==gi")
M.map("i", "<C-k>", "<Esc><cmd>m .-2<cr>==gi")


return M
