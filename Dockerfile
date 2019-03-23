FROM python:latest
MAINTAINER Larry Liang <ptolemy428@gmail.com>

#download jq
RUN wget http://stedolan.github.io/jq/download/linux64/jq
RUN chmod 700 ./jq

RUN pip3 install --upgrade awscli
