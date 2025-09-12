FROM php:8.1

# Base utilities and prerequisites
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        gnupg \
        git \
        unzip \
        openssh-client \
        bash; \
    rm -rf /var/lib/apt/lists/*

# Configure NodeSource (Node.js 20.x) and Yarn APT repositories using keyrings (no apt-key)
RUN set -eux; \
    mkdir -p /etc/apt/keyrings; \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg; \
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" > /etc/apt/sources.list.d/nodesource.list; \
    curl -fsSL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor -o /etc/apt/keyrings/yarn.gpg; \
    echo "deb [signed-by=/etc/apt/keyrings/yarn.gpg] https://dl.yarnpkg.com/debian stable main" > /etc/apt/sources.list.d/yarn.list; \
    apt-get update; \
    apt-get install -y --no-install-recommends nodejs yarn; \
    rm -rf /var/lib/apt/lists/*

# Install Composer
RUN set -eux; \
    curl -fsSL https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Sentry CLI
RUN set -eux; \
    curl -sL https://sentry.io/get-cli/ | bash

# Versions of local tools
RUN composer -V && node -v && npm -v
