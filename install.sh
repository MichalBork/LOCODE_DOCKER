#!/bin/sh

docekr-compose up -d --build

bash ./symfony/build.sh