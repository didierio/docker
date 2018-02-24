FROM php:7.1-fpm

USER root

# PHP Date Timezone
# RUN sed -i "s/;date.timezone =.*/date.timezone = Europe\/Paris/g" /etc/php/php.ini

# # PHP-FPM
# RUN sed -i "s/user =.*/user = 1000/g" /etc/php/php-fpm.conf
# RUN sed -i "s/group =.*/group = 1000/g" /etc/php/php-fpm.conf
# RUN sed -i "s/group =.*/group = 1000/g" /etc/php/php-fpm.conf

# RUN sed -i 's/;extension=bcmath.so/extension=bcmath.so/g' /etc/php/php.ini

# ENV PHP_EXTRA_CONFIGURE_ARGS "--enable-zip"

RUN apt-get update && apt-get install -y git \
        unzip \
        libpq-dev

RUN docker-php-ext-install pdo pdo_pgsql
