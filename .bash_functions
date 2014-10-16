#!usr/local/bin bash
echo "functions loaded"

# kill a process given a port number
function killport {
  tokill=$(lsof -F p -i:$1 | sed 's/[^0-9]*//')
  kill -3 $tokill
}

# set the upstream of a forked git repo
function syncfork {
  git remote add upstream $1
  echo $(git remote -v | grep upstream)
}

function fakefile {
  #make a file of x MB
  perl -e "print '0' x 1024 x 1024 x $1" > $1-MB-fake-file.txt
}
