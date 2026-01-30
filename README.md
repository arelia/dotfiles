# Dotfiles

Personal dotfiles for shell, vim, and tmux configuration. Works with both macOS and GitHub Codespaces.

## Automatic setup with GitHub Codespaces

1. Go to [GitHub Codespaces settings](https://github.com/settings/codespaces)
2. Under "Dotfiles", check **Automatically install dotfiles**
3. Select this repository (`arelia/dotfiles`) from the dropdown
4. Create a new Codespace — your dotfiles will be automatically installed!

## What's included

- **zshrc** - Zsh configuration with oh-my-zsh, git aliases, and platform-specific settings
- **bash_profile** - Bash configuration (redirects to zsh)
- **vimrc** - Vim configuration with vim-plug and various plugins
- **tmux.conf** - Tmux configuration with vim-style navigation
- **gitignore_global** - Global gitignore patterns
- **config/nvim/** - Neovim configuration

## Manual installation

```bash
git clone https://github.com/arelia/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## Platform support

These dotfiles detect the environment and adjust automatically:

- **macOS**: Uses `nodenv`, `rbenv`, and `reattach-to-user-namespace` for clipboard
- **Linux/Codespaces**: Uses `xclip` for clipboard, sets VS Code as the default editor

## Vim plugins

This repo uses [vim-plug](https://github.com/junegunn/vim-plug) to manage vim plugins. Plugins are automatically installed when you run the install script.

To add plugins, edit the `vimrc` file and add them between `call plug#begin()` and `call plug#end()`, then run `:PlugInstall` in vim.
