FROM ubuntu:16.04

MAINTAINER Darren Jones

RUN apt-get update && apt-get install -y python-pip curl
RUN pip install selenium

