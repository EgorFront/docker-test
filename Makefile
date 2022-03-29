dev:
	docker compose down
	docker compose up develop

build:
	docker compose down
	docker compose up --build build
	docker create -ti --name testbuild docker-test_build:latest bash
	docker cp testbuild:/app/dist .
	docker rm -f testbuild

server:
	docker compose down
	docker compose up --build webserver