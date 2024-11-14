# Use php 8.2 cli image
FROM php:8.2-cli

# Install required dependencies
RUN apt-get update && \
    apt-get install -y libicu-dev libzip-dev libpng-dev && \
    docker-php-ext-install pdo_mysql intl pcntl zip gd

# Composer install
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"
