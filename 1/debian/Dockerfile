FROM node:lts 
MAINTAINER Forest Keepers <Jeroen.knoops@philips.com>

RUN apt-get update && apt-get install -y \
      bc \
 && rm -rf /var/lib/apt/lists/*

RUN npm install -g bats

RUN useradd -ms /bin/bash philips

RUN mkdir /app
RUN chown philips:philips /app

USER philips

WORKDIR /app

ADD REPO .
ADD TAGS .

CMD ["/usr/local/bin/bats", "--version"]
