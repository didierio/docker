FROM jprjr/php-fpm

ENV PHP_TIMEZONE "Europe/Paris"

USER root

# PHP Date Timezone
RUN sed -i "s/;date.timezone =.*/date.timezone = Europe\/Paris/" /etc/php/php.ini
