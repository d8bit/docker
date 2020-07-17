FROM php:7.3-apache

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install apt-utils libzip-dev zip -y && docker-php-ext-install pdo pdo_mysql zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN a2enmod rewrite

WORKDIR /var/www/html
