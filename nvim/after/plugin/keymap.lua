local nnoremap = require("wmeints.remap").nnoremap
local vnoremap = require("wmeints.remap").vnoremap

-- Plugin actions
nnoremap("<leader>t", ":NERDTreeToggle<CR>")
nnoremap("<leader>f", "<Plug>(coc-format-selected)")
vnoremap("<leader>f", "<Plug>(coc-format-selected)")
nnoremap("<leader>p", ":FZF<CR>")

-- Window management
nnoremap("<c-h>","<c-w>h")
nnoremap("<c-j>","<c-w>j")
nnoremap("<c-k>","<c-w>k")
nnoremap("<c-l>","<c-w>l")
