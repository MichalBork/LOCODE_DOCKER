#!/bin/sh
rm -rf ./LOCODE_REST_API &&
git clone https://github.com/MichalBork/LOCODE_REST_API &&
cd ./LOCODE_REST_API &&
cp .env-sample .env &&
sed -i 's/DATABASE_URL="mysql:\/\/{LOGIN}:{PASS}@{SERVER_NAME}:3306\/{DB_NAME}?serverVersion=5.7"/DATABASE_URL="mysql:\/\/root:root@mysql:3306\/locode?serverVersion=5.7"/' .env &&
composer install &&
php bin/console doctrine:database:create &&
php bin/console make:migration &&
php bin/console doctrine:migrations:migrate &&

crontab /var/www/symfony/LOCODE_REST_API/cronjob





