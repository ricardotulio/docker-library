FROM php:5.6.32-cli

RUN apt-get update && apt-get install -y libz-dev libmemcached-dev
RUN pecl install memcache
RUN echo extension=memcache.so >> /usr/local/etc/php/conf.d/memcache.ini
RUN docker-php-ext-install pdo pdo_mysql mysqli mbstring pcntl

ENV XDEBUG_VERSION 2.3.3

RUN curl -L http://xdebug.org/files/xdebug-$XDEBUG_VERSION.tgz | tar zx

WORKDIR xdebug-$XDEBUG_VERSION

RUN phpize \
 && ./configure \
 && make -j \
 && make install

RUN rm -rf "/tmp/xdebug-$XDEBUG_VERSION"

RUN echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini
