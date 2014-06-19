#!/usr/bin/env bash
echo "profile loaded"

export DOT_FILES=~/dot_files

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

############################## PATH THINGS ##############################
# postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin/



# Finally, source all other .bash files
source ~/.bash_aliases
source ~/.bashrc
