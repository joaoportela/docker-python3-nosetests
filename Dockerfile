# https://docs.docker.com/engine/articles/dockerfile_best-practices/ 
FROM ubuntu:15.04
MAINTAINER JP <jportela@abyssal.eu>
ENV LANG en_US.utf8
RUN apt-get update && apt-get install -yq \
    python3-all \
    python3-pip \
    python3-nose \
    libpq-dev \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
ENV PYTHONIOENCODING utf-8
WORKDIR /code
