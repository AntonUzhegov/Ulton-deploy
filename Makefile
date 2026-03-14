.PHONY: up down logs ps clean build rebuild

up:
	docker-compose up -d
	@echo "✅ Приложение запущено:"
	@echo "   Frontend: http://localhost:${FRONTEND_PORT}"
	@echo "   Backend: http://localhost:${BACKEND_PORT}"
	@echo "   PostgreSQL: localhost:${POSTGRES_PORT}"

down:
	docker-compose down

logs:
	docker-compose logs -f

ps:
	docker-compose ps

clean:
	docker-compose down -v

build:
	docker-compose build

rebuild:
	docker-compose down
	docker-compose build
	docker-compose up -d