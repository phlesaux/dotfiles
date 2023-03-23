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

# Install more recent versions of some macOS tools.
brew install vim
brew install zsh
brew install grep
brew install openssh
brew install php
brew install php@8.1
brew install git

# Install others tools for development.
brew install symfony-cli/tap/symfony-cli
brew install sheldon

### Install some apps for Mac with cask
brew install --cask slack
brew install --cask phpstorm
brew install --cask google-chrome
brew install --cask firefox

# Remove outdated versions from the cellar.
brew cleanup
