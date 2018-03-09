FROM alpine:3.7

ENV LOGSTASH_VER 6.1.1

RUN apk update \
    && apk add --no-cache openjdk8-jre bash \ 
    && apk add --virtual .install-utils tar curl \
    && curl -sL https://artifacts.elastic.co/downloads/logstash/logstash-${LOGSTASH_VER}.tar.gz -o /tmp/logstash.tar.gz \
    && mkdir -p /opt/logstash \
    && tar -xzf /tmp/logstash.tar.gz -C /opt/logstash \
    && rm /tmp/logstash.tar.gz \
    && apk del .install-utils
