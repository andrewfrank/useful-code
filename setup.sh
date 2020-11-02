#! /bin/bash

# install tools for bioinformatics development on macOS High Sierra workstation

# this shell script is less meant to be run on a new workstation, but more as
# a running list of packages and tools essential for bioinformatics development
# (with a strong bent toward microbiology) with references

# install homebrew
# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install sane build environment for macOS
brew install openssl
brew install readline
brew install sqlite3
brew install xz
brew install zlib

# install developer packages
brew install git
brew install shellcheck
brew install pigz
brew install pyenv
brew install pyenv-virtualenv
brew install pylint
brew install r

# install IDEs
brew cask install google-cloud-sdk
brew cask install visual-studio-code
brew cask install rstudio

# configure google-cloud-sdk
echo -e 'source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"\nsource "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"' >> ~/.bash_profile
source ~/.bash_profile

# install bioinformatics packages
brew install brewsci/bio/FORMULA
brew install fastqc
brew install spades

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
python -m pip install grip

# requires running the following in the command palette for VS Code command line
# `>Shell Command: Install 'code' command in PATH` in VS Code

# set up vscode packages
code --install-extension timonwong.shellcheck
code --install-extension ms-python.python
code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension yzhang.markdown-all-in-one
code --install-extension ban.spellright