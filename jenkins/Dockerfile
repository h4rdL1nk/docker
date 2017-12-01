FROM jenkins:alpine

USER root

RUN apk update \
    && apk add --no-cache python py-virtualenv docker jq make gcc linux-headers python-dev py-pip musl-dev libffi-dev openssl-dev \
    && rm -rf /var/cache/apk/* 

