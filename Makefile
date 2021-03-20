.PHONY: web server console sh clean

web:
	docker-compose up --detach --build web

setup: web
	docker-compose exec web mix deps.get; mix ecto.setup

server: setup
	docker-compose exec web mix phx.server

test: setup
	docker-compose exec web mix test

test-watch: setup
	docker-compose exec web mix test.watch

console: setup
	docker-compose exec web iex -S mix

sh: setup
	docker-compose exec web bash

clean:
	docker-compose down
