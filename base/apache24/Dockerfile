FROM linux-alpine

ENV DOCROOT /var/www/service
ENV PACKAGES apache2 \ 
             mysql-client \ 
             sox \
             curl 


RUN mkdir -p ${DOCROOT}
WORKDIR ${DOCROOT}

RUN apk update \
    && apk add ${PACKAGES} --no-cache 

RUN deluser apache \
    && addgroup -g 1001 apache \
    && adduser -h /var/www -u 2000 -D -s /sbin/nologin -G apache apache

RUN mkdir -p /run/apache2

RUN ln -s /dev/stdout /var/log/apache2/access.log
RUN ln -s /dev/stderr /var/log/apache2/error.log

ADD conf/httpd/httpd.conf /etc/apache2/
ADD conf/httpd/service.conf /etc/apache2/conf.d/
ADD conf/httpd/modules.conf /etc/apache2/conf.d/

RUN chown -R apache.apache ${DOCROOT}

ENTRYPOINT ["httpd","-D","FOREGROUND"]

