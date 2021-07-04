FROM php:7.0-apache
COPY src/ /var/www/html
RUN pecl install redis \
&& docker-php-ext-enable redis
EXPOSE 80

