require('nvim-treesitter.configs').setup {
    ensure_installed = { "rust", "python", "typescript", "javascript", "lua", "toml"  },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    ident = { enable = true },
    rainbow = {
        enabled = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}

