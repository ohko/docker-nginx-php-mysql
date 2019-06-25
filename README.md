
> 基于 debian:stretch 的nginx + php + mysql

# run
```shell
docker run --rm -it \
   -p 8080:80 \
   -v /srv:/var/www/html \
   ohko/nginx-php-mysql
```

# run + mysql
```shell
docker run --rm -it \
   -p 8080:80 \
   -v /srv:/var/www/html \
   -e START_MYSQL \
   ohko/nginx-php-mysql
```