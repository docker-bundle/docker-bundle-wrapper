FROM alpine:3.7

MAINTAINER Xiaobawang <windworst@gmail.com>

RUN apk add --update --no-cache git python3 py3-pip

RUN pip3 install docker-compose

COPY sbin /usr/local/sbin

RUN chmod +x /usr/local/sbin/docker

ADD https://raw.githubusercontent.com/docker-bundle/docker-bundle/v0.1.0/docker-bundle.py /usr/local/sbin/docker-bundle

RUN chmod +x /usr/local/sbin/docker-bundle

ENTRYPOINT ["docker-bundle"]
