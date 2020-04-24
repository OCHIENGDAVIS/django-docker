#Pull base images
FROM python:3.8

# set environment variables
ENV PYTHONUNBUFFERED = 1
ENV PYTHONDONTWRITEBYTECODE = 1

# set working directory
WORKDIR /code


# install dependencies

COPY requirements.txt /code/

RUN pip install -r requirements.txt


# copy project
COPY . /code/