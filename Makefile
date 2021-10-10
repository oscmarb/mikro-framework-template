UID=$(shell id -u)
GID=$(shell id -g)
DOCKER_PHP_SERVICE=php

SHELL=/bin/bash

.DEFAULT_GOAL := start

start: erase build composer-install

erase:
		docker-compose down -v

build:
		docker-compose pull && docker-compose build

up:
		docker-compose up -d

composer-install:
		docker-compose up -d
		docker exec mikro_app sh -c 'composer install'

composer-update:
		docker-compose up -d
		docker exec mikro_app sh -c 'composer update'

bash:
		docker-compose run --rm -u ${UID}:${GID} ${DOCKER_PHP_SERVICE} sh

phpstan:
		docker run --rm -v ${PWD}:/app ghcr.io/phpstan/phpstan analyse ./src -l 8