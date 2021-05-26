FROM php:8-cli

LABEL maintainer="robert@codepeak.se"

RUN apt install -y libzip-dev
RUN docker-php-ext-install pcntl
RUN docker-php-ext-install exif
RUN docker-php-ext-install zip

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ENTRYPOINT ["docker-php-entrypoint"]

CMD ["php", "-a"]
