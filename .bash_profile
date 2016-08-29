#!/usr/bin/env bash
echo "profile loaded"

export DOT_FILES=~/dot_files

function reload {
    for file in ~/.bash*
    do
        if [[ $file =~ 'history' || $file =~ 'session' || $file =~ 'profile' ]]; then
            cd .
            # do nothing
        else
            source $file
        fi
    done
}

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

############################## PATH THINGS ##############################
# postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs

# java version
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# have a sexy prompt
export PS1="\h:\W \u\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias FUCK)"
eval "$(thefuck --alias fcuk)"
eval "$(thefuck --alias fkuc)"
eval "$(thefuck --alias fukc)"
export THEFUCK_REQUIRE_CONFIRMATION='false'



# Finally, source all other .bash files
source ~/.bash_aliases
source ~/.bashrc
source ~/.bash_functions
