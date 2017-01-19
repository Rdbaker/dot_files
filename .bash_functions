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

# name the current terminal tab
function tabname {
  printf "\e]1;$1\a"
}

# name the current terminal window
function winname {
  printf "\e]2;$1\a"
}

# ssh to EC2 instance with Name=ARG1
function kssh () {
  IP=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=$1" --query 'Reservations[0].Instances[0].PrivateIpAddress' --output text)
  ssh $IP
}

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function vpip {
  pypath=$(which python)
  if [ $pypath == "/usr/bin/python" ]; then
    echo "Tried installing outside of virtualenv, bailing."
  else
    pip install -r $3
  fi
}
