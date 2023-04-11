local function ExecCurl()
  vim.cmd([[
  keeppatterns echo "hello"
  ]])
end

vim.api.nvim_create_user_command("Curl", ExecCurl, {})
