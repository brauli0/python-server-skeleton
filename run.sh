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
python3 server.py
echo DONE