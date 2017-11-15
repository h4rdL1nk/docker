FROM alpine:latest

RUN apk update \
    && apk add apache2 wget ca-certificates \
    && mkdir -p /run/apache2 \

WORKDIR /

RUN wget https://github.com/keeweb/keeweb/archive/gh-pages.zip \
    && unzip gh-pages.zip \
    && rm gh-pages.zip \
    && mv keeweb-gh-pages keeweb \
    && rm keeweb/CNAME

RUN wget https://github.com/keeweb/keeweb-plugins/archive/master.zip \
    && unzip master.zip \
    && rm master.zip \
    && mv keeweb-plugins-master/docs keeweb/plugins \
    && rm -rf keeweb-plugins-master \
    && rm keeweb/plugins/CNAME

RUN ln -sf /dev/stdout /var/log/apache2/access.log \
    && ln -sf /dev/stderr /var/log/apache2/error.log

ADD conf/apache2/service.conf /etc/apache2/conf.d/

RUN chown -R apache. /keeweb

ENTRYPOINT ["httpd","-D","FOREGROUND"]
