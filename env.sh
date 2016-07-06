# run from .zshrc
# User configuration

# custom configurations
export PATH="$HOME/.bin:$PATH"

# Setting PATH for Python 2.7
# The orginal version is saved in .zprofile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# virtualenv wrapper
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

# If I ever installed rabbitmq
# To access rabbitmq commands
# PATH=$PATH:/usr/local/sbin 

# postgres
export PATH=$PATH:/Library/PostgreSQL/9.5/bin/pg_config
export PATH=$PATH:/usr/local/Cellar/postgresql/9.5.0/bin/pg_config

# export psql to PATH
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
