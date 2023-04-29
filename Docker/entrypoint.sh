#!/bin/bash

if [ ! -f "vendor/autoload.php"]; then
    composer install --no-progress --no-interaction
else
    echo "composer already installed";
fi

if [ ! -f ".env" ]; then
    echo "Creating env file for env $APP_ENV";
    cp .env.example .env
else
    echo "env file exists.";
fi

php artisan migrate
php artisan key:generate
php artisan config:cache
php artisan route:clear

php artisan serve --port=$PORT --host=0.0.0.0 --env=.env
exec docker-php-entrypoint "$@"