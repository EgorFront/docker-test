dev:
	docker compose down
	docker compose up develop

build:
	docker compose down
	docker compose up --build build

server:
	docker compose down
	docker compose up --build webserver