#!/bin/sh

nohup php-fpm &
/usr/local/nginx/nginx -g "daemon off;"
