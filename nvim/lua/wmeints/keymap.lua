local nnoremap = require("wmeints.remap").nnoremap
local vnoremap = require("wmeints.remap").vnoremap

nnoremap("<leader>t", ":NERDTreeToggle<CR>")

nnoremap("<leader>f", "<Plug>(coc-format-selected)")
vnoremap("<leader>f", "<Plug>(coc-format-selected)")

nnoremap("<leader>p", ":FZF<CR>")
