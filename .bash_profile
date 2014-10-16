#!/usr/bin/env bash
echo "profile loaded"

export DOT_FILES=~/dot_files

function reload {
    for file in ~/.bash*
    do
        if [[ $file =~ 'history' || $file =~ 'profile' ]]; then
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
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin/

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs



# Finally, source all other .bash files
source ~/.bash_aliases
source ~/.bashrc
source ~/.bash_functions
