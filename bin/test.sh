set -ex

# composer install
bin/docker-php.sh bin/composer install
bin/docker-php.sh vendor/bin/phpunit
