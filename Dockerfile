FROM python:3

ENV PYTHONUNBUFFERED 1

WORKDIR /

ADD . /

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY . /

HEALTHCHECK CMD curl -f http://localhost:8000/api || exit 1