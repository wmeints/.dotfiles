local lsp_flags = {
    debounce_txt_changes = 150
}

require("lspconfig").pyright.setup{
    lsp_flags =  lsp_flags
}
