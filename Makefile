build:
	cp .env-dist .env
	docker-compose build --force-rm
	docker-compose up -d

start:
	docker-compose start

stop:
	docker-compose stop

rails-cli:
	docker-compose run --rm rails bash

down:
	docker-compose down --rmi local
	rm .env
