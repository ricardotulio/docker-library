FROM php:7.2-cli-alpine

RUN apk update && apk --no-cache add wget
RUN wget -c http://static.phpmd.org/php/latest/phpmd.phar && \
    chmod +x phpmd.phar && \
    mv phpmd.phar /usr/local/bin/phpmd

ENTRYPOINT ["php", "-d", "memory_limit=-1", "/usr/local/bin/phpmd"]
