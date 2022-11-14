# Setting PATH for Python 3 installed by brew
export PATH=/usr/local/opt/python@3.10/bin:$PATH

# Configuration for virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=$(which python3)
export VIRTUALENVWRAPPER_VIRTUALENV=$(which virtualenv)
source ${VIRTUALENVWRAPPER_VIRTUALENV}wrapper.sh
