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
M.map("n", "<Space>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
M.map("n", "<Space>h", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
M.map("n", "<Space>c", "<cmd>lua require('telescope.builtin').colors()<cr>")
M.map("n", "<Space>lg", "<cmd>Telescope live_grep<cr>")
M.map("n", "<Space>b", "<cmd>Telescope buffers<cr>")
M.map("n", "<Space>fb", "<cmd>lua require('telescope.builtin').file_browser()<cr>")

-- Trouble
M.map("n", "<leader>tt", "<cmd>TroubleToggle<cr>")
M.map("n", "<leader>tw",  "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>")
M.map("n", "<leader>td", "<cmd>TroubleToggle lsp_document_diagnostics<cr>")
M.map("n", "<leader>tq",  "<cmd>TroubleToggle quickfix<cr>")

-- Saga
M.map("n", "<silent><C-j>",  "<cmd>Lspsaga diagnostic_jump_next<cr>")
M.map("n", "<silent>K",  "<cmd>Lspsaga hover_doc<cr>")
M.map("n", "<silent><C-k>",  "<cmd>Lspsaga signature_help<cr>")
M.map("n", "<silent> gh",  "<cmd>Lspsaga lsp_finder<cr>")
M.map("n", "<silent>rr",  "<cmd>lua require('lspsaga.rename').rename()<cr>")

return M
