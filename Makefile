dev:
	docker-compose up develop

build:
	sudo rm -r -f dist
	docker-compose up build
