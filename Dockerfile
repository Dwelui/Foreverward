FROM ubuntu:plucky

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        php \
        php-cli \
        php-xml \
        nodejs \
        npm

WORKDIR /var/www
COPY . .

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD ["tail", "-f", "/dev/null"]
