FROM python:3.11-slim

LABEL app="Django Sky" version="1.0"

WORKDIR /app

COPY requirements.txt .

RUN /usr/local/bin/python -m venv venv && \
    venv/bin/pip install --no-cache-dir --upgrade pip && \
    venv/bin/pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80

CMD venv/bin/python manage.py runserver 0.0.0.0:80