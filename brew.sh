#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install GNU tools without `g`-prefixed.
brew install findutils --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install grep --with-default-names
brew install gnu-indent --with-default-names
brew install watch
brew install wget
brew install git
brew install less
brew install openssh
brew install vim --with-override-system-vi

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion@2
brew install shellcheck

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

#Minikube packages
#brew cask install virtualbox
#brew install kubectl
#brew cask install minikube

brew tap caskroom/versions
brew cask install java8
brew cask install java
brew install leiningen
brew install kotlin
brew install tree
brew install maven
brew cask install tunnelblick
brew cask install google-chrome
brew cask install docker
brew cask install iterm2
brew install mysql
brew cask install sequel-pro

# Remove outdated versions from the cellar.
brew cleanup
