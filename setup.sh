#!/bin/bash

# install tools for bioinformatics development on macOS High Sierra workstation

# this shell script is less meant to be run on a new workstation, but more as
# a running list of packages and tools essential for bioinformatics development
# (with a strong bent toward microbiology) with references

# install xcode
xcode-select --install

# install homebrew
# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install development tools
brew install git
brew install gh
brew install micro

# install scripting languages and their associated tools
brew install pyenv-virtualenv
brew install pylint
brew install r
brew install shellcheck

# configure python using pyenv + pyenv-virtualenv
# https://stackoverflow.com/questions/41573587 for virtues of pyenv/virtualenv
# https://github.com/pyenv/pyenv#homebrew-on-macos
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
source ~/.bash_profile
version="3.7.3"
pyenv install $version
pyenv global $version
# https://github.com/pyenv/pyenv-virtualenv#installing-with-homebrew-for-macos-users
echo -e 'if which pyenv-virtualenv-init > /dev/null; then\n  eval "$(pyenv virtualenv-init -)"\nfi' >> ~/.bash_profile
source ~/.bash_profile
# bootstrap existing pip to the latest version of pip
python -m pip install --user --upgrade pip

# set up python packages
python -m pip install altair
python -m pip install grip
python -m pip install numpy
python -m pip install pandas
python -m pip install scikit-learn
