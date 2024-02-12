# syntax=docker/dockerfile:1

FROM ubuntu:22.04

RUN apt-get -y update && apt-get -y install \
    build-essential \
    vim \
    make \
    gcc \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./src/ /src/