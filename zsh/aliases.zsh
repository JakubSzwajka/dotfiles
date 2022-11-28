alias wo='workon "${PWD##*/}"'
alias ls='exa --long --icons --group-directories-first'
alias l='exa --long --icons --group-directories-first'
alias dsc='docker container stop $(docker ps -aq)'
alias cat='bat'

alias s='source ~/.zshrc'


# -- git --
alias g='git'
alias gs='git status'
alias gsm='git status -s | grep M | cut -c4-'
alias gd='git diff'
alias gc='git commit'
alias gdc='bat --diff'


# -- work aliases --- 
alias ylm='yarn lint $(gsm)'

alias glc='mypy . && flake8 . && globality-black . --diff'
alias glb='globality-black'


function henri { integration-testing --branch "$1" --drone-token "$2"  --github-token $GITHUB_TOKEN };
    