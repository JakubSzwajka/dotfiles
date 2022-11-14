#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# python
echo 'installing python at: ~/python.zsh'
ln ${BASEDIR}/zsh/python.zsh ~/config/python.zsh || echo '---------'

echo 'installing go at: ~/go.zsh'
ln ${BASEDIR}/zsh/go.zsh ~/config/go.zsh || echo '---------'


# aliases
echo 'installing aliases at: ~/aliases.zsh'
ln ${BASEDIR}/zsh/aliases.zsh ~/config/aliases.zsh || echo '---------'

# warp theme 
echo 'installing warp theme at: ~/.warp/themes/bearedThemeBlackAndEmerald.yaml'
ln ${BASEDIR}/warp/themes/bearedThemeBlackAndEmerald.yaml ~/.warp/themes/bearedThemeBlackAndEmerald.yaml || echo '---------'

# vscode
# ln ${BASEDIR}/vscode/settings.json settings.json

# zsh
# ln -s ${BASEDIR}/zshrc ~/.zshrc

# git
echo 'installing .gitconfig at: ~/.gitconfig'
ln -s ${BASEDIR}/git/.gitconfig ~/.gitconfig || echo '---------'

# zshrc
echo 'installing .zshrc at: ~/.zshrc'
ln -s ${BASEDIR}/zsh/.zshrc ~/.zshrc || echo '---------'
source ~/.zshrc