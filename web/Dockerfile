FROM python:3.9.7-slim

COPY . /app
WORKDIR /app

RUN python3 -m venv /opt/venv

# Upgrade pip
RUN /opt/venv/bin/python3 -m pip install --upgrade pip

# Install requirements from requirements.txt
RUN /opt/venv/bin/pip install -r requirements.txt

# Make entrypoint.sh executable
RUN chmod +x entrypoint.sh

CMD ["/app/entrypoint.sh"]
