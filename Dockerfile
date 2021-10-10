FROM php:8.0-alpine3.13

RUN mkdir /app
WORKDIR /app

RUN apk add --no-cache bash libzip-dev

RUN docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

ENTRYPOINT ["php", "-S", "0.0.0.0:8080", "public/index.php"]

EXPOSE 8080