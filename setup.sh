#! /bin/bash

# install tools for bioinformatics development on macOS High Sierra workstation

# this shell script is less meant to be run on a new workstation, but more as
# a running list of packages and tools essential for bioinformatics development
# (with a strong bent toward microbiology) with references

# make ~/bin directory + add to path
mkdir ~/bin
echo -e 'export PATH="~/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

# install xcode
xcode-select --install

# install homebrew
# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install development tools for macOS
brew install docker
brew install graphviz
brew install git
brew install openssl
brew install pigz
brew install readline
brew install sqlite3
brew install xz
brew install zlib

# install scripting languages and their associated tools
brew install pyenv
brew install pyenv-virtualenv
brew install pylint
brew install r
brew install shellcheck

# install java
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8

# install bioinformatics packages
brew tap brewsci/bio
brew install bandage
brew install bbtools
brew install blast@2.2
brwe install busco
brew install bwa-mem2
brew install clustal-omega
brew install clustal-w
brew install cutadapt
brew install fastp
brew install fastqc
brew install fastree
brew install flye
brew install freebayes
brew install gatk
brew install hisat2
brew install igv
brew install ivar
brew install kaiju
brew install kraken2
brew install mash
brew install masurca
brew install miniasm
brew install minimap2
brew install mrbayes
brew install muscle
brew install nanofilt
brew install nanopolish
brew install pilon
brew install porechop
brew install prokka
brew install quast
brew install raxml
brew install salmon
brew install shovill
brew install snpeff
brew install spades
brew install trimmomatic
brew install trinity
brew install unicycler
brew install velvet

# install + configure google cloud sdk
brew cask install google-cloud-sdk
echo -e 'source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"\nsource "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"' >> ~/.bash_profile
echo -e 'export GOOGLE_APPLICATION_CREDENTIALS=~/western-arch-294518-4d8067e76648.json'  >> ~/.bash_profile
source ~/.bash_profile

# install + configure nextflow
brew install nextflow
echo -e 'export NXF_VER=20.10.0' >> ~/.bash_profile
echo -e 'export NXF_MODE=google' >> ~/.bash_profile
echo -e 'export TOWER_ACCESS_TOKEN=<insert token here>' >> ~/.bash_profile

# install essential apps
brew cask install docker
brew cask install google-backup-and-sync
brew cask install visual-studio-code
brew cask install rstudio
brew cask install transmit

# install convenience apps
brew cask install ferdi #https://github.com/getferdi/ferdi
brew cask install michaelvillar-timer #https://github.com/michaelvillar/timer-app

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
code --install-extension ms-azuretools.vscode-docker
code --install-extension cssho.vscode-svgviewer