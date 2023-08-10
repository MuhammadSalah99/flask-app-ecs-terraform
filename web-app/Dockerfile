FROM python:3.8-slim-buster

WORKDIR /app

RUN pip install --upgrade pip
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY . . 


CMD ["python3", "app.py", "run", "-h", "0.0.0.0"]

