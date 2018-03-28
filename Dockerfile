FROM ubuntu:16.04

MAINTAINER Darren Jones

RUN apt-get update && apt-get install -y \
    python-pip \
    curl \
    git \
    mysql-client \
    unzip \
    wget

RUN wget https://chromedriver.storage.googleapis.com/2.37/chromedriver_linux64.zip && \
    unzip chromedriver_*.zip && \
    mv chromedriver /usr/bin/chromedriver && \
    chmod a+x /usr/bin/chromedriver && \
    rm -rf chromedriver_*.zip

RUN pip install selenium