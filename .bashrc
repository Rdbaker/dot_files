#!usr/local/bin bash
echo "rc loaded"

export PYTHONDONTWRITEBYTECODE=1

# ignore stupid errors because of mavericks
export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"

# source virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# use the newer version of ruby
export PATH="/usr/local/Cellar/ruby/2.2.2/bin:$PATH"

# run the file to register the 'z' command
. ~/z.sh
