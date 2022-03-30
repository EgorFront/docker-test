dev:
	docker compose down
	docker compose up frontend

build:
	docker compose down
	docker compose run frontend yarn build

server:
	docker compose down
	docker compose run frontend yarn build
	docker compose up webserver