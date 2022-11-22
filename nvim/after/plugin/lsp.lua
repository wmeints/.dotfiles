require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "rust_analyzer" }
})

local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<S-Tab'] = cmp.mapping.select_prev_item(),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true }),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'buffer' },
    }
})

local nnoremap = require('wmeints.remap').nnoremap
local inoremap = require('wmeints.remap').inoremap

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require('lspconfig').rust_analyzer.setup({
    capabilities = capabilities
})

require('lspconfig').tsserver.setup({
    capabilities = capabilities
})
require('lspconfig').pyright.setup({
    capabilities = capabilities
})
require('lspconfig').csharp_ls.setup({
    capabilities = capabilities
})
require('lspconfig').taplo.setup({
    capabilities = capabilities
})
require('lspconfig').sumneko_lua.setup({
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = {
                   [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                }
            }
        }
    }
})

local rt = require("rust-tools")

rt.setup({
    tools = {
        runnables = {
            use_telescope = true,
        },
        inlay_hints = {
            auto = true,
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },
    server = {
        on_attach = function(_, bufnr)
            local keymap_opts = { buffer = bufnr }

            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, keymap_opts)

            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, keymap_opts)

            -- Code navigation and shortcuts
            vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
            vim.keymap.set("n", "gD", vim.lsp.buf.implementation, keymap_opts)
            vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts)
            vim.keymap.set("n", "1gD", vim.lsp.buf.type_definition, keymap_opts)
            vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts)
            vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol, keymap_opts)
            vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, keymap_opts)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)
        end,
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = {
                    command = "clippy"
                },
            },
        },
    },
})
