#!usr/local/bin bash
echo "aliases loaded"

# file listings
alias l='pwd; ls -lGF'
alias lk='pwd; ls -laFGh'

# grep ignores .git directories and is colorful
alias grep='grep --exclude-dir=".git" --color -I'

# recursively print directory in tree format
# I won't pretend to know how this works.
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# install the vundle plugins
alias vimpluginstall='vim +PluginInstall +qall'

# YOLO
alias yolo='git add . && git cm -m "#YOLO #thuglife" && git push -f origin'

# view the current directory in google chrome
alias chrome='open -a Google\ Chrome `pwd`'

# see the last 10 branches used by commit
alias sap="git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format='%(refname:short)'"

# goodbye old friend, you don't love the community like you used to
alias vim="nvim"
alias vi="nvim"

# relative naviation
L=".."
R="../"
for i in {1..7}
do
    alias $L="cd $R"
    L="$L."
    R="$R../"
done
unset L
unset R
