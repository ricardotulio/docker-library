FROM ricardotulio/php:7.2-cli

RUN apt-get update && apt-get install -y zip unzip gzip git

RUN curl -o composer.phar https://getcomposer.org/composer.phar && \
  chmod +x composer.phar && \
  ./composer.phar global require tacnoman/dephpugger

ENTRYPOINT ["/root/.composer/vendor/bin/dephpugger"]
