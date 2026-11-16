function _G.ReloadConfig()
	for name, _ in pairs(package.loaded) do
		-- Keep at.plugins cached: lazy.nvim's setup() can only run once per session.
		-- Plugin spec changes are picked up by lazy's own change detection.
		if name:match("^at%.") and name ~= "at.plugins" then
			package.loaded[name] = nil
		end
	end

	dofile(vim.env.MYVIMRC)
	vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end

vim.api.nvim_create_user_command("ReloadConfig", ReloadConfig, { desc = "reload lua.user.*.lua" })
