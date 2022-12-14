# Willem's dotfiles collection

This repository contains my personal collection of dotfiles that I use on my machines. Please feel free to copy any of
the settings from this repository for your own machine. 

## What's in the collection 

There's not a lot in the collection yet. I'm currently working on setting up some configuration for neovim. I'll add
more stuff as I relocate some of the configuration files on my machine to this folder.

### Neovim

This tool is the reason why this repository exists. I've been experimenting with using vim for my daily code editing jobs.
You can find the tool on [the neovim website](https://neovim.io).

- [Packer](https://github.com/wbthomason/packer.vim) - Extension manager
- [Mason LSP config](https://github.com/williamboman/mason-lspconfig.nvim) - Language Server Support
- [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Autocomplete plugin for neovim
- [NERDTree](https://github.com/preservevim/nerdtree) - Tree navigation
- [LuaLine](https://github.com/nvim-lualine/lualine.nvim) - Status line
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy file finder
- [Bufferline](https://github.com/akinsho/bufferline.nvim) - A snazzy bufferline to navigate through the buffers
- [Tokyonight](https://github.com/folke/tokyonight.nvim) - A nice theme for neovim
- [Formatter](https://github.com/mhartington/formatter.nvim) - Automatic formatting for various file types
- [Github Copilot](https://github.com/github/copilot.vim) - Copilot, essential by now
- [Floating terminal](use 'voldikss/vim-floaterm') - Have a floating terminal window in Neovim

### Oh-my-posh

I've been using this shell extension for a while. It provides a nicer prompt for powershell, zsh, bash, and many other shells.
You can find the installation files on [their website](https://ohmyposh.dev/).

## Getting started

This section describes how to set up various programs to use this dotfiles collection.

### Required tooling

For Windows:

* [7-Zip](https://www.7-zip.org/) (Must be available on PATH)
* [Oh-my-posh](https://ohmyposh.dev/)
* [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
* [Omnisharp](https://github.com/OmniSharp/omnisharp-roslyn) (Install this in `$HOME/.omnisharp`)

For Linux:

* [Oh-my-posh](https://ohmyposh.dev/)
* [Homebrew](https://brew.sh/)
* [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
* [Omnisharp](https://github.com/OmniSharp/omnisharp-roslyn) (Install this in `$HOME/.omnisharp`)

**Note:** On Linux you can run `brew install neovim` to get Neovim.

### Neovim configuration

I'm using Neovim on Windows, but this configuration should work the same on Linux. I'm using the settings on Ubuntu
22.04 as well. Other Linux environment may vary.

1. Add a new environment variable `XDG_CONFIG_HOME` and set it to `~/.dotfiles/`. 
2. Next, install [packer](https://github.com/wbthomason/packer.nvim).
3. Start neovim from the terminal with the command `nvim`
4. Run the command: `:PackerSync` and close neovim with `:q`

**Please note** You may have to run `:PackerSync` multiple times to get rid of all the errors. 
Treesitter can be a pain sometimes

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

## Documentation

It takes some getting used to things like neovim. In fact, I'm still learning neovim as I'm writing this.
So here's a few helpful hints for things that are specific for my setup.

### Keymap

I've created a number of key mappings to work with neovim plugins:

* <kbd>space</kbd><kbd>t</kbd> - Toggles the tree on the left of the screen
* <kbd>space</kbd><kbd>ff</kbd> - Toggles the telescope to quickly navigate between files
* <kbd>space</kbd><kbd>fb</kbd> - Toggles the telescope to quickly navigate between buffers (open files)
* <kbd>space</kbd><kbd>ft</kbd> - Toggles the floating terminal

In addition to these specific actions to work with plugins, I've also added keymaps for working with content.
First, I have autocomplete mapped pretty much the same as you would have it in any other IDE.

* <kbd>Ctrl</kbd><kbd>Space</kbd> - Show autocomplete options for the current position
* <kbd>Tab</kbd>/<kbd>Shift</kbd><kbd>Tab</kbd> - When autocomplete is visible, navigate between options
* <kbd>Ctrl</kbd><kbd>e</kbd> - Close the autocomplete options
* <kbd>Enter</kbd> - Accept the suggestion

Next, there's some keymappings to do other things with code:

* <kbd>g</kbd><kbd>d</kbd> - Go to definition
* <kbd>g</kbd><kbd>D</kbd> - Go to implementation
* <kbd>g</kbd><kbd>r</kbd> - Show references
* <kbd>Ctrl</kbd><kbd>k</kbd> - Show signature help

Finally, I managed to enable code quick fixes with <kbd>Space</kbd><kbd>a</kbd>.
