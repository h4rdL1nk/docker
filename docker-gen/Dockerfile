FROM alpine:latest

ENV DOCKER_GEN_VERSION 0.7.3 
ENV DOCKER_GEN_ARCH amd64

RUN apk update && apk add curl \
    && curl https://github.com/jwilder/docker-gen/releases/download/${DOCKER_GEN_VERSION}/docker-gen-linux-${DOCKER_GEN_ARCH}-${DOCKER_GEN_VERSION}.tar.gz -sL | tar -xzvf - -C /usr/bin/ \
    && mkdir /templates

ADD templates/* /templates/

ENTRYPOINT ["/usr/bin/docker-gen","/templates/test.tmpl"]
