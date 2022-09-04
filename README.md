# Willem's dotfiles collection

This repository contains my personal collection of dotfiles that I use on my machines. Please feel free to copy any of
the settings from this repository for your own machine. 

## What's in the collection 

There's not a lot in the collection yet. I'm currently working on setting up some configuration for neovim. I'll add
more stuff as I relocate some of the configuration files on my machine to this folder.

## Getting started

This section describes how to set up various programs to use this dotfiles collection.

### Neovim configuration

I'm using Neovim on Windows, but this configuration should work the same on Linux. I'm using the settings on Ubuntu
22.04 as well. Other Linux environment may vary.

1. Add a new environment variable `XDG_CONFIG_HOME` and set it to `~/.dotfiles/`. 
2. Next, install [packer](https://github.com/wbthomason/packer.nvim).
3. Start neovim from the terminal with the command `nvim`
4. Run the command: `:PackerSync`.

After performing these steps, make sure you restart neovim to get the latest settings.
