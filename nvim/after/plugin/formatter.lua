local util = require "formatter.util"

require("formatter").setup {
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
        ruby = {
            require("formatter.filetypes.ruby").rubocop,
        },
        lua = {
            require("formatter.filetypes.lua").stylua,
        },
        python = {
            require("formatter.filetypes.python").isort,
            require("formatter.filetypes.python").autopep8,
        },
        rust = {
            require("formatter.filetypes.rust").rustfmt,
        },
        cs = {
            require("formatter.filetypes.cs").uncrustify,
        }
    }
}
