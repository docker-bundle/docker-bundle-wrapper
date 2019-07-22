FROM alpine:3.10

LABEL Xiaobawang <windworst@gmail.com>

RUN apk add --update --no-cache python3 py3-pip

RUN pip3 --no-cache-dir --disable-pip-version-check install docker-compose==1.23.1

COPY sbin /usr/local/sbin

RUN chmod +x /usr/local/sbin/*

ENTRYPOINT ["docker-bundle"]