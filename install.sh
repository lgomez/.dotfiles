#!/bin/bash

# Install zsh if not already installed
if ! command -v zsh &>/dev/null; then
  sudo apt-get update && sudo apt-get install -y zsh
fi

# Install oh-my-zsh if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Make zsh the default shell
chsh -s $(which zsh)
