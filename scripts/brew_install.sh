#!/bin/bash

echo "1.installing Homebrew"

if command -v brew >/dev/null 2>&1 ; then
  echo "Homebrew is installed, skipping."
else
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "2.downloading CLI essentials"
# CL essentials
brew install tree
brew install bat
brew install exa
brew install htop
brew install jq
brew install ripgrep
brew install fd
brew install fzf