#!bin/bash

pip install -r requirements.txt

uwsgi --http 0.0.0.0:5000 --module hello:app