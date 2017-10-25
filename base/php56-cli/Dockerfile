FROM linux-alpine

ENV DOCROOT /var/www/service
ENV PACKAGES php5-mssql \
             php5-iconv \
             php5-gd \
             php5-pdo \
             php5-pdo_mysql \
             php5-xcache \
             php5-mcrypt \
             php5-imap \
             php5-phpmailer \
             php5-dom \
             php5-ctype \
             php5-apache2 \
             php5-zip \
             php5-xml \
             php5-openssl \
             php5-phar \
             php5-json \
             php5-zlib \
             php5-curl \
             php5-mysql \
             php5-mysqli


RUN mkdir -p ${DOCROOT}
WORKDIR ${DOCROOT}

RUN apk update \
    && apk add ${PACKAGES} --no-cache

RUN sed -i -e 's/^date.timezone.*/date.timezone = CET/g' \
           -e 's/^\(max_execution_time = \).*/\1120/g' \
           -e 's/^\(memory_limit = \).*/\164M/g' \
           -e 's/\(^extension=.*.dll.*\)$/;\1/g' \
           -e 's/^\(max_execution_time = \).*/\160/g' \
           -e 's/^\(expose_php = \).*/\1Off/g' \
           /etc/php5/php.ini

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php  -d memory_limit=16M composer-setup.php --install-dir=/usr/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

CMD [ "php","./run.php" ]

