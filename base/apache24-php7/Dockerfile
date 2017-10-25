FROM apache24

ENV PACKAGES php7-apache2 \ 
             php7-iconv \
             php7-opcache \
             php7-pdo php7-pdo_mysql \
             php7-soap \
             php7-mcrypt \
             php7-imap \
             php7-dom \
             php7-ctype \
             php7-zip \
             php7-xml \
             php7-openssl \
             php7-phar \
             php7-json \
             php7-zlib \
             php7-curl \
             php7-mysqli \
             php7-mbstring \
             php7-session \
             php7-gd 

RUN apk update \
    && apk add ${PACKAGES} --no-cache

RUN [ ! -e /usr/bin/php ] && ln -s /usr/bin/php7 /usr/bin/php
RUN sed -i -e 's/^date.timezone.*/date.timezone = CET/g' \
           -e 's/^\(max_execution_time = \).*/\1120/g' \
           -e 's/^\(memory_limit = \).*/\164M/g' \ 
           -e 's/\(soap.wsdl_cache_enabled=\).*/\10/g' \
           -e 's/\(^extension=.*.dll.*\)$/;\1/g' \
           /etc/php7/php.ini

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -d memory_limit=16M composer-setup.php --install-dir=/usr/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

