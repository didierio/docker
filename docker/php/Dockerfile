FROM jprjr/php-fpm:latest

USER root

# pacman
RUN sed -i "s/SigLevel.*/SigLevel = Never/g" /etc/pacman.conf

# git
RUN pacman -Sy --noconfirm --quiet --needed git-core

# PHP Date Timezone
RUN sed -i "s/;date.timezone =.*/date.timezone = Europe\/Paris/g" /etc/php/php.ini

# PHP-FPM
RUN sed -i "s/user =.*/user = 1000/g" /etc/php/php-fpm.conf
RUN sed -i "s/group =.*/group = 1000/g" /etc/php/php-fpm.conf


# PHP
RUN sed -i '/open_basedir/s/^/;/' /etc/php/php.ini
RUN sed -i "s/;extension=phar.so/extension=phar.so/g" /etc/php/php.ini
RUN sed -i "s/;extension=zip.so/extension=zip.so/g" /etc/php/php.ini
