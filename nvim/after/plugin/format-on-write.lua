vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.{rs,rb,lua}",
	callback = function()
		vim.cmd([[:Format]])
	end,
	group = format_sync_grp,
})
