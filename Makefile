deps:
	@docker exec mikro_app sh -c 'composer install'

up:
	@docker-compose up -d

build:
	@docker-compose build

stop:
	@docker-compose stop

down:
	@docker-compose down

init:
	@make build
	@make up
	@make deps

