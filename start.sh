#!/bin/sh

/etc/init.d/php7.0-fpm start
if [ $START_MYSQL ]; then
   /etc/init.d/mysql start
fi
nginx -g "daemon off;"