require("nvim-lsp-installer").setup {}

local lsp_flags = {
    debounce_txt_changes = 150
}

require("lspconfig").pyright.setup{
    lsp_flags =  lsp_flags
}

require("lspconfig").tsserver.setup{
    lsp_flags = lsp_flags
}

require('lspconfig').rust_analyzer.setup{
    on_attach = on_attach,
    flags = lsp_flags,
    -- Server-specific settings...
    settings = {
      ["rust-analyzer"] = {}
    }
}
