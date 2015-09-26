FROM jprjr/php-fpm:latest

USER root

# PHP Date Timezone
RUN sed -i "s/;date.timezone =.*/date.timezone = Europe\/Paris/g" /etc/php/php.ini

# PHP-FPM
RUN sed -i "s/user =.*/user = 1000/g" /etc/php/php-fpm.conf
RUN sed -i "s/group =.*/group = 1000/g" /etc/php/php-fpm.conf

# composer
#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
