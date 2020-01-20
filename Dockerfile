# https://docs.docker.com/compose/django/
FROM python:3

# https://www.reddit.com/r/learnpython/comments/5ebkq6/what_does_pythonunbuffered1_do/dabel6t/
ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code
COPY requirements.txt /code/
# https://hub.docker.com/_/python/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /code/