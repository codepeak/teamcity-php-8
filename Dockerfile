FROM php:8-cli

LABEL maintainer="robert@codepeak.se"

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ENTRYPOINT ["docker-php-entrypoint"]

CMD ["php", "-a"]