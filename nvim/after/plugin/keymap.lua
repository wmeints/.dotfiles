local nnoremap = require("wmeints.remap").nnoremap
local vnoremap = require("wmeints.remap").vnoremap

-- Plugin actions
nnoremap("<leader>t", ":NERDTreeToggle<CR>")
nnoremap("<leader>f", ":Format<CR>")
nnoremap("<leader>fw", ":FormatWrite<CR>")

-- Window management
nnoremap("<c-h>","<c-w>h")
nnoremap("<c-j>","<c-w>j")
nnoremap("<c-k>","<c-w>k")
nnoremap("<c-l>","<c-w>l")
