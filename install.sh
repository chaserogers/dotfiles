#!/usr/bin/env bash

DOTFILES_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install osx config
source "$DOTFILES_ROOT/mac/osx.sh"

# Install Homebrew and packages
source "$DOTFILES_ROOT/package/brew.sh"

# Symlink vim package and config folders
rm -rf ~/.vim
ln -sfnv "$DOTFILES_ROOT/vim/.vim" ~/.vim

# Install vscode
rm -rf ~/Library/Application\ Support/Code/User/settings.json
ln -sfv "$DOTFILES_ROOT/vscode/user_settings.json" ~/Library/Application\ Support/Code/User/settings.json

# Symlink dotfiles
ln -sfv "$DOTFILES_ROOT/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_ROOT/runcom/.inputrc" ~
ln -sfv "$DOTFILES_ROOT/runcom/.pryrc" ~
ln -sfv "$DOTFILES_ROOT/runcom/.ripgreprc" ~
ln -sfv "$DOTFILES_ROOT/runcom/.psqlrc" ~
ln -sfv "$DOTFILES_ROOT/runcom/.jshintrc" ~
ln -sfv "$DOTFILES_ROOT/git/.gitconfig" ~
ln -sfv "$DOTFILES_ROOT/git/.gitignore_global" ~
ln -sfv "$DOTFILES_ROOT/git/.gitmessage.txt" ~
ln -sfv "$DOTFILES_ROOT/git/.pull_request_template.md" ~
ln -sfv "$DOTFILES_ROOT/git/.issue_template.md" ~
ln -sfv "$DOTFILES_ROOT/vim/.vimrc" ~

# Hush terminal login messages
touch .hushlogin
