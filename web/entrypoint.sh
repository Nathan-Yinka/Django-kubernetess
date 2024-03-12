#!/bin/bash

# Set default value for APP_PORT if not provided
APP_PORT=${PORT:-8000}

# Change directory to the Django project root
cd /app/

# Run Gunicorn with the specified options
/opt/venv/bin/gunicorn --worker-tmp-dir /dev/shm django_k8s.wsgi:application --bind "0.0.0.0:${APP_PORT}"
