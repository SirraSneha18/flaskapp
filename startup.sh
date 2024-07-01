#!/bin/bash

python3 -m pip install --upgrade pip
pip install -r requirements.txt

# Start Gunicorn server with your Flask application
gunicorn -b 0.0.0.0:${WEBSITES_PORT:-8000} -w 4 --timeout 600 app:app
