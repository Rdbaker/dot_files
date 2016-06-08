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

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export KSRC_ROOT=/Users/rdbaker/Development/Projects/trunk           # set $KSRC_ROOT, which many pipeline scripts depend on
source $KSRC_ROOT/bin/kenv.sh
