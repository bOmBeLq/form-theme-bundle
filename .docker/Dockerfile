FROM php:8.0
RUN apt-get update && apt-get install -y git && apt-get clean
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ARG COMPOSER=756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3
RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '$COMPOSER') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); exit(1); } echo PHP_EOL;"
RUN php composer-setup.php --install-dir=/usr/bin --filename=composer