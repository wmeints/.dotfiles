return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("folke/tokyonight.nvim")
    use("neovim/nvim-lspconfig")
    use("preservim/nerdtree")
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'neoclide/coc.nvim', branch = 'release' }
    use { 'junegunn/fzf' }
    use 'junegunn/fzf.vim'
end)

