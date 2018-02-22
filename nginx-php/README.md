# nginx-php

Nginx and PHP 7.2.

## Usage

Considering your app use `public/index.php` as a application entrypoint:

`docker run --rm -p 8000:80 -it -v $(pwd):/usr/share/nginx/html ricardotulio/nginx-php`
