dev:
	docker compose down
	docker compose up develop

build:
	docker compose down
	docker compose up build

server:
	docker compose down
	docker compose up build
	docker compose up webserver