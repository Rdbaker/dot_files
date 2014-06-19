#!usr/local/bin bash
echo "functions loaded"

# kill a process given a port number
function killport {
  tokill=$(lsof -F p -i:$1 | sed 's/[^0-9]*//')
  kill -9 $tokill
}
