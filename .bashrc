#!usr/local/bin bash
echo "rc loaded"

export PYTHONDONTWRITEBYTECODE=1

# ignore stupid errors because of mavericks
export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"

# source virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh
