FROM python:3.9-alpine
WORKDIR .

ENV DJANGO_SETTINGS_MODULE=JWT1.settings
ENV PYTHONUBUFFERED=1

RUN apk update \
    && apk add postgresql -dev gcc python3-dev musl-dev

RUN pip install --upgrade pip
COPY ./req.txt .
RUN pip install -r req.txt

COPY . .


