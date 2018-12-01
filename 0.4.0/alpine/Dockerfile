FROM alpine:3.8
MAINTAINER Forest Keepers <Jeroen.knoops@philips.com>

RUN apk --no-cache add \
      coreutils \
      bats=0.4.0-rc2 \
      bc \
      ncurses && \
    rm -rf /var/cache/apk/*

RUN addgroup -S philips && \
  adduser -S -G philips philips

RUN mkdir /app
RUN chown philips:philips /app

USER philips

WORKDIR /app

ADD REPO .
ADD TAGS .

CMD ["/bin/bats", "--version"]
