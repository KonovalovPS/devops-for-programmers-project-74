prepare:
	cp -n .env.example .env

ci:
	docker compose -f docker-compose.yml up --timeout 600 --abort-on-container-exit app --build

build:
	docker compose -f docker-compose.yml build app

push-image:
	docker-compose -f docker-compose.yml push app

start:
	docker compose up