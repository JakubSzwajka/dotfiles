alias wo='workon "${PWD##*/}"'
alias ls='exa --long --icons --group-directories-first'
alias dsc='docker container stop $(docker ps -aq)'

alias s='source ~/.zshrc'

# -- work aliases --- 
alias glc='mypy . && flake8 . && globality-black . --diff'
alias glb='globality-black'
