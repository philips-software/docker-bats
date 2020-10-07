FROM alpine:3.8
MAINTAINER Forest Keepers <Jeroen.knoops@philips.com>

RUN apk update \
 && apk --no-cache add \
      coreutils \
      'bats=0.4.0-r2' \
      bc \
      ncurses \
 && rm -rf /var/cache/apk/*

RUN mkdir /app

WORKDIR /app

ADD REPO .
ADD TAGS .

CMD ["/bin/bats", "--version"]
