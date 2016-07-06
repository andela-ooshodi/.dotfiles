# or generally updating stuff

echo "pip taking over for python dependencies"
pip install --upgrade setuptools
pip install --upgrade pip
pip install virtualenvwrapper
pip install psycopg2


echo "updating npm and packages"
# Update npm & packages
npm install npm -g
npm update -g