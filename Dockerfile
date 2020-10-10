FROM python:latest

LABEL maintainer="UCM ACM Chapter"
LABEL maintainer.email="acm@ucmerced.edu"

WORKDIR /app

COPY . /app

RUN pip install pipenv

RUN pipenv install

RUN pipenv graph

CMD ["pipenv", "run", "python", "manage.py", "run"]
