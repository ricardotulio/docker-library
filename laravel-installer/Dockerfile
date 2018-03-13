FROM composer

ENV COMPOSER_HOME /composer

RUN mkdir /composer
RUN composer global require laravel/installer

ENTRYPOINT ["/composer/vendor/bin/laravel"]
