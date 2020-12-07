FROM php:7.2.2-apache 
RUN docker-php-ext-install mysqli
RUN apt-get update && apt-get install libpng-dev libjpeg-dev libfreetype6-dev -y
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd
