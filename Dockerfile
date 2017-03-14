FROM ubuntu

RUN apt-get -y update
RUN apt-get install -y software-properties-common python curl build-essential git python-gunicorn

# nodejs
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash
RUN apt-get install -y nodejs

RUN npm install -g bower

RUN npm -g install grunt
RUN npm -g install grunt-cli

WORKDIR /srv/app
