
FROM python:2.7.10

MAINTAINER Larry Liang <ptolemy428@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget vim

#download jq
RUN wget http://stedolan.github.io/jq/download/linux64/jq
RUN chmod 700 ./jq

RUN apt-get install -y \
  groff \
  less

RUN pip install awscli
