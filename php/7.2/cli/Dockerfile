FROM php:7.2-cli

RUN apt-get update \
    && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libmemcached-dev \
        libpng-dev \
        sendmail \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ \
    	--with-jpeg-dir=/usr/include/ \
	--with-pdo-mysql \
	--with-pgsql \
    && docker-php-ext-install -j$(nproc) gd mbstring pdo pdo_mysql \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug
