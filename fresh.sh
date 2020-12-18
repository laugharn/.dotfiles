echo "Setting up your Mac..."

if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew update

brew tap homebrew/bundle
brew bundle

mkdir $HOME/Sites

./clone.sh

rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

source .macos