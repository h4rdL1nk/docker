FROM alpine:3.5

ENV PACKAGES bash \
             tzdata

RUN apk upgrade -al --update --no-cache \
    && apk add ${PACKAGES} --no-cache 

RUN rm /etc/localtime \
    && ln -s /usr/share/zoneinfo/Europe/Madrid /etc/localtime

