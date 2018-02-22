FROM php:7.2-fpm-alpine

ENV NGINX_VERSION 1.13.8

WORKDIR /tmp/

RUN apk update && apk add --no-cache \
        make \
        gcc \
        g++ \
        autoconf \
        pcre-dev \
        zlib-dev

RUN wget https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -O nginx-$NGINX_VERSION.tar.gz \
    && tar xvf nginx-$NGINX_VERSION.tar.gz

RUN cd nginx-$NGINX_VERSION && ./configure --sbin-path=/usr/local/nginx/nginx \
        --conf-path=/usr/local/nginx/nginx.conf \
        --pid-path=/usr/local/nginx/nginx.pid \
    && make \
    && make install

RUN rm -rf nginx-$NGINX_VERSION*

RUN mkdir -p /var/log/nginx/ \
    && touch /var/log/nginx/access.log

ADD ./nginx/etc/nginx.conf /usr/local/nginx/nginx.conf

ADD ./start.sh /docker/bin/start.sh
RUN chmod +x /docker/bin/start.sh

EXPOSE 80

CMD ["/docker/bin/start.sh"]
