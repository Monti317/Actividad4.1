FROM php:8.2-apache

RUN docker-php-ext-install mysqli

RUN useradd -m pmonbay

COPY index.php /var/www/html/index.php

RUN chown -R pmonbay:pmonbay /var/www/html
RUN chmod -R 755 /var/www/html
