return require("packer").startup(function()
    use "wbthomason/packer.nvim"
    use "gruvbox-community/gruvbox"
    use "preservim/nerdtree"
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use("ThePrimeagen/git-worktree.nvim")

    -- Language server config
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig'
    }
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use 'mfussenegger/nvim-lint'
    use 'mhartington/formatter.nvim'

    -- Rust specific tools
    use 'nvim-lua/lsp_extensions.nvim'
    use 'simrat39/rust-tools.nvim'

    -- Autocomplete config
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use 'TimUntersberger/neogit'
end)

