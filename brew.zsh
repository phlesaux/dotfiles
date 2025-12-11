#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Install latest version of brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Set in the path
eval "$(/opt/homebrew/bin/brew shellenv)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Core tools
core_dependencies=(
  git
  grep
  openssh
  sheldon
  tree
  vim
  zsh
)

# Go tools
go_dependencies=(
  go
  golangci-lint
  gopls
)

brew install "${core_dependencies[@]}" "${go_dependencies[@]}"

# Remove outdated versions from the cellar.
brew cleanup
