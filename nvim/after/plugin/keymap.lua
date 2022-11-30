local nnoremap = require("wmeints.remap").nnoremap
local vnoremap = require("wmeints.remap").vnoremap
local inoremap = require("wmeints.remap").inoremap
local tnoremap = require("wmeints.remap").tnoremap

-- Plugin actions
nnoremap("<leader>t", ":NERDTreeToggle<CR>")
nnoremap("<leader>l", ":Format<CR>")
nnoremap("<leader>lw", ":FormatWrite<CR>")

-- Window management
nnoremap("<c-h>","<c-w>h")
nnoremap("<c-j>","<c-w>j")
nnoremap("<c-k>","<c-w>k")
nnoremap("<c-l>","<c-w>l")

-- Awesome but deadly
inoremap("<C-c>", "<Esc>")

-- Git commands
nnoremap("<leader>kc", ":Neogit commit<CR>")

-- Show fuzzyfinder 
local builtin = require('telescope.builtin')

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

-- Show floating terminal
nnoremap("<leader>ft", ":FloatermNew --name=theterminal --height=0.8 --width=0.7 --autoclose=2 bash <CR> ")
nnoremap("t", ":FloatermToggle theterminal<CR>")
tnoremap("<Esc>", "<C-\\><C-n>:q<CR>")

-- Format code
vim.keymap.set("n","<C-f>",":Format<CR>")
