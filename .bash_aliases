#!usr/local/bin bash
echo "aliases loaded"

# file listings
alias l='pwd; ls -lGF'
alias lk='pwd; ls -laFG'

# grep ignores .git directories and is colorful
alias grep='grep --exclude-dir=".git" --color -I'

# recursively print directory in tree format
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# install the vundle plugins
alias vimpluginstall='vim +PluginInstall +qall'

# YOLO
alias yolo='git add . && git cm -m "#YOLO #thuglife" && git push -f origin'

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
