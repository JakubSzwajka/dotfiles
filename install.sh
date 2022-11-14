#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# aliases
echo 'installing aliases at: ~/aliases.zsh'
ln ${BASEDIR}/zsh/aliases.zsh ~/aliases.zsh || echo '---------'

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