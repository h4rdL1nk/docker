FROM jenkins:alpine

USER root

RUN apk update \
    && apk add python py-virtualenv docker jq \
    && apk add --virtual=build-env make gcc linux-headers python-dev py-pip musl-dev libffi-dev openssl-dev --no-cache \
    && pip install --no-cache-dir --upgrade pip pyopenssl ndg-httpsclient pyasn1 molecule ansible docker-py \
    && apk del build-env \
    && rm -rf /var/cache/apk/* 

