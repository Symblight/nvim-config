function _G.ReloadConfig()
	for name, _ in pairs(package.loaded) do
		if name:match("^at") then
			package.loaded[name] = nil
		end
	end

	dofile(vim.env.MYVIMRC)
  print( 'Config file:', vim.env.MYVIMRC )
  vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end

vim.api.nvim_create_user_command("ReloadConfig", ReloadConfig, { desc = "reload lua.user.*.lua" })
