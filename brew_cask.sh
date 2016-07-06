# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages

apps=(
  dropbox
  firefox
  google-chrome
  google-drive
  slack
  sublime-text3
  vlc
)

echo "Now that we have brew-cask, brew-cask would attempt to install the following apps"
for app in ${apps[@]}
do
    echo "$app"
done

brew cask install "${apps[@]}"