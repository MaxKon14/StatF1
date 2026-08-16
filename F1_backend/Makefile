.PHONY: help up down ps logs sh migrate makemigrations shell build reset-db
.DEFAULT_GOAL := help

help:
	@echo "Для поднятия контейнеров введите make up"

up:
	docker compose up -d --build

down:
	docker compose down

ps:
	docker compose ps

logs:
	docker compose logs -f

sh:
	docker compose exec web sh

migrate:
	docker compose run --rm web python manage.py migrate

makemigrations:
	docker compose run --rm web python manage.py makemigrations

shell:
	docker compose run --rm web python manage.py shell

build:
	docker compose build

reset-db:
	docker compose down -v
