FROM registry.red-soft.ru/ubi7/ubi-minimal
MAINTAINER Sergey S. Leleko <w@leleko.ru>
RUN dnf install -y php php-fpm php-pdo php-fpm php-pgsql

WORKDIR /app

RUN mkdir -p /run/php-fpm/

# Launch PHP-FPM
CMD ["php-fpm", "-F"]
