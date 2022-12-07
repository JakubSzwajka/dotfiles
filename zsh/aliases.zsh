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

function henri { integration-testing --branch "$1" --drone-token "$2" --github-token $GITHUB_TOKEN; }

function drop_and_restore {
    echo "$1.sql"
    if [ -f "$1.sql" ]; then
        dropdb "$1"_db && if [ $? -eq 0 ]; then echo "DB dropped ✅"; else echo "DB drop failed ❌"; fi
        createdb -p 5432 -U postgres -O "$1" "$1"_db && if [ $? -eq 0 ]; then echo "DB created ✅"; else echo "DB create failed ❌"; fi
        pg_restore -d "$1"_db <"$1".sql && if [ $? -eq 0 ]; then echo "DB restored ✅"; else echo "DB restore failed ❌"; fi
    else
        echo "File " $1".sql does not exists."
    fi
}
