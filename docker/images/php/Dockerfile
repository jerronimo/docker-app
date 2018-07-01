FROM php:7.1-fpm

WORKDIR /var/www/app

RUN apt-get update && apt-get install -y \
    libmcrypt-dev \
    mysql-client \
    curl \
    zip \
    openssl \
    libxrender1 \
    xvfb \
    wget \
    libfontconfig \
    git \
    libmagickwand-dev --no-install-recommends

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

RUN pecl install imagick \
    && docker-php-ext-install bcmath mbstring mcrypt pdo_mysql zip gd\
    && docker-php-ext-enable imagick

RUN usermod -u 1000 www-data

ADD ./config/php.ini /usr/local/etc/php/
