FROM python:3-slim

ENV PYTHONUNBUFFERED 1

WORKDIR /

ADD . /

COPY ./requirements.txt /requirements.txt

RUN apt-get update && apt-get install -y curl

RUN pip install -r /requirements.txt

COPY . /

HEALTHCHECK CMD curl -f http://localhost:8000/api || exit 1