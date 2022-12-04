vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.{rs,rb,lua}",
    callback = function()
        vim.lsp.buf.formatting_sync()
    end,
    group = format_sync_grp,
})
