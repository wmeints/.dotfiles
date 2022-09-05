return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("gruvbox-community/gruvbox")
    use("neovim/nvim-lspconfig")
    use("preservim/nerdtree")
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'junegunn/fzf' }
    use 'junegunn/fzf.vim'
    use 'OmniSharp/omnisharp-vim'
    use 'williamboman/nvim-lsp-installer'
end)

