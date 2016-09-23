# https://docs.docker.com/engine/articles/dockerfile_best-practices/ 
FROM ubuntu:15.04
MAINTAINER JP <jportela@abyssal.eu>
ENV LANG en_US.utf8
RUN apt-get update && apt-get install --no-install-recommends -yq \
    python3-all \
    python3-pip \
    python3-nose \
    python3-mock \
    libpq-dev \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
RUN pip3 install teamcity-messages
ENV PYTHONIOENCODING utf-8
WORKDIR /code
