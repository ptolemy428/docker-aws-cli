
FROM ubuntu:14.10

MAINTAINER Larry Liang <ptolemy428@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python python-dev python-pip libyaml-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget

#download jq
RUN wget http://stedolan.github.io/jq/download/linux64/jq
RUN chmod 700 ./jq

RUN pip install awscli

