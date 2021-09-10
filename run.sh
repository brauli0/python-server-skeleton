#!/bin/bash

echo Creating environment...
python3 -m venv env
echo
echo Activating environment...
source env/bin/activate
echo
echo Installing requirements...
pip3 install -r requirements.txt
echo
echo Running server...
chmod 774 test.sh
python3 server.py
chmod 774 clean.sh
./clean.sh
echo DONE