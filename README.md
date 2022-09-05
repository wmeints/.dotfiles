# Willem's dotfiles collection

This repository contains my personal collection of dotfiles that I use on my machines. Please feel free to copy any of
the settings from this repository for your own machine. 

## What's in the collection 

There's not a lot in the collection yet. I'm currently working on setting up some configuration for neovim. I'll add
more stuff as I relocate some of the configuration files on my machine to this folder.

### Neovim

This tool is the reason why this repository exists. I've been experimenting with using vim for my daily code editing jobs.
You can find the tool on [the neovim website](https://neovim.io).

- [fugitive](https://github.com/tpope/vim-fugitive) - GIT commands
- [CoC](https://github.com/neoclide/coc.nvim) - Autocomplete and linters
- [Packer](https://github.com/wbthomason/packer.vim) - Extension manager
- [LSP config](https://github.com/neovim/nvim-lspconfig) - Language server configuration
- [NERDTree](https://github.com/preservevim/nerdtree) - Tree navigation
- [LuaLine](https://github.com/nvim-lualine/lualine.nvim) - Status line
- [LSP installer](httpS://github.com/williamboman/nvim-lsp-installer) - Language server installation
- [FZF](https://github.com/junegunn/fzf.vim) - Fuzzy file finder

### Oh-my-posh

I've been using this shell extension for a while. It provides a nicer prompt for powershell, zsh, bash, and many other shells.
You can find the installation files on [their website](https://ohmyposh.dev/).

## Getting started

This section describes how to set up various programs to use this dotfiles collection.

### Neovim configuration

I'm using Neovim on Windows, but this configuration should work the same on Linux. I'm using the settings on Ubuntu
22.04 as well. Other Linux environment may vary.

1. Add a new environment variable `XDG_CONFIG_HOME` and set it to `~/.dotfiles/`. 
2. Next, install [packer](https://github.com/wbthomason/packer.nvim).
3. Start neovim from the terminal with the command `nvim`
4. Run the command: `:PackerSync` and close neovim with `:q`
6. In the folder `~/.dotfiles/coc/extensions/` run the command `npm install` to install the COC extensions.

After performing these steps, make sure you restart neovim to get the latest settings.

### Oh-my-posh configuration

#### Powershell

I'm using oh-my-posh from Powershell. Add the following code to your `$Profile` script:

```powershell
oh-my-posh --init --shell pwsh --config ~/.dotfiles/oh-my-posh/willem.omp.json | invoke-expression
```

#### Bash

If you're working on Linux with bash, add the following code to your `.bashrc` file:

```bashrc
eval "$(oh-my-posh init bash --config ~/.dotfiles/oh-my-posh/willem.omp.json)"
```
