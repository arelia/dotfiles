#!/bin/bash

# Dotfiles installation script for GitHub Codespaces
# This script creates symlinks from the home directory to dotfiles in this repo

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR"

# Create symlinks for dotfiles
link_dotfile() {
    local src="$1"
    local dest="$2"
    
    if [ -f "$dest" ] || [ -L "$dest" ]; then
        echo "Backing up existing $dest to ${dest}.backup"
        mv "$dest" "${dest}.backup" 2>/dev/null || true
    fi
    
    echo "Linking $src -> $dest"
    ln -sf "$src" "$dest"
}

# Link shell configuration files
link_dotfile "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
link_dotfile "$DOTFILES_DIR/bash_profile" "$HOME/.bash_profile"
link_dotfile "$DOTFILES_DIR/gitignore_global" "$HOME/.gitignore_global"

# Link vim configuration
link_dotfile "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"
mkdir -p "$HOME/.vim/autoload"
link_dotfile "$DOTFILES_DIR/vim/autoload/plug.vim" "$HOME/.vim/autoload/plug.vim"

# Link tmux configuration
link_dotfile "$DOTFILES_DIR/tmux.conf" "$HOME/.tmux.conf"

# Link neovim configuration
mkdir -p "$HOME/.config/nvim/autoload"
link_dotfile "$DOTFILES_DIR/config/nvim/init.vim" "$HOME/.config/nvim/init.vim"
link_dotfile "$DOTFILES_DIR/config/nvim/autoload/plug.vim" "$HOME/.config/nvim/autoload/plug.vim"

# Configure git to use global gitignore
git config --global core.excludesfile "$HOME/.gitignore_global"

# Install oh-my-zsh if not already installed (needed for zshrc)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended || true
    # Re-link zshrc since oh-my-zsh installation overwrites it
    link_dotfile "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
fi

# Install vim plugins
if command -v vim &> /dev/null; then
    echo "Installing vim plugins..."
    vim +PlugInstall +qall 2>/dev/null || true
fi

echo "Dotfiles installation complete!"
