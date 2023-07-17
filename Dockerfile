FROM python:3.11


LABEL app="DjangodaSky" version="1.0"

WORKDIR /app

RUN python -m venv venv && /bin/bash -c "source venv/bin/activate"

COPY requirements.txt .


RUN pip install --no-cache-dir -r requirements.txt 

COPY . .

EXPOSE 80

CMD python manage.py runserver 0.0.0.0:80 
