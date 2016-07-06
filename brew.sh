#!/usr/bin/env bash

# brew install everything here

# Install command-line tools using Homebrew.

echo "Brew install everything"
echo "But first we need brew installed :)"
# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Next we update brew and any brew installed formulae"
# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install packages
apps=(
    git
    heroku-toolbelt
    node
    postgres
    python
    redis
    vim
)


echo "Now that we have brew, brew would attempt to install the following apps"
for app in ${apps[@]}
do
    echo "$app"
done

brew install "${apps[@]}"