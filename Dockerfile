FROM php:7.4-cli

RUN apt-get update && apt-get install -y \
	zlib1g-dev \
	git-core \
    zip \
    unzip \
    libzip-dev \
&& rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install bcmath zip

RUN pecl install xdebug && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer creates=/usr/local/bin/composer

COPY ./dev_xdebug.ini $PHP_INI_DIR/conf.d/dev_xdebug.ini
