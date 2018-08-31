FROM php:7.2.0

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    unzip openssh-client && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Versions of local tools
RUN composer -V
