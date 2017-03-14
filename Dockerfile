FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get install -y software-properties-common python curl \
  build-essential git python-pip libmysqlclient-dev \
  libffi-dev libssl-dev libxml2 libxml2-dev libxslt1-dev \
  python-dev

ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

# nodejs
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash
RUN apt-get install -y nodejs

RUN npm install -g bower

RUN npm -g install grunt
RUN npm -g install grunt-cli

WORKDIR /srv/app
