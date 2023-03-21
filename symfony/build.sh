#!/bin/sh
git clone https://github.com/MichalBork/LOCODE_REST_API.git
cd LOCODE_REST_API
composer install
php bin/console doctrine:database:create
php bin/console make:migration
php bin/console doctrine:migrations:migrate

crontab /var/www/symfony/LOCODE_REST_API/cronjob





