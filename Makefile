# Makefile for Loan AgentiX

# Variables
DOCKER_COMPOSE = docker-compose
DOCKER_COMPOSE_DEV = docker-compose -f docker-compose.yml -f docker-compose.override.yml

# Install dependencies
install:
	npm install

# Start development environment
dev:
	$(DOCKER_COMPOSE_DEV) up --build

# Start production environment
start:
	$(DOCKER_COMPOSE) up --build

# Stop all containers
stop:
	$(DOCKER_COMPOSE) down
	$(DOCKER_COMPOSE_DEV) down

# View logs
logs:
	$(DOCKER_COMPOSE) logs -f

# Initialize database with sample data
init-db:
	npm run init-db

# Run tests
test:
	npm test

# Clean up Docker resources
clean:
	$(DOCKER_COMPOSE) down -v --remove-orphans
	$(DOCKER_COMPOSE_DEV) down -v --remove-orphans
	docker system prune -f

# Show running containers
ps:
	$(DOCKER_COMPOSE) ps
	$(DOCKER_COMPOSE_DEV) ps

.PHONY: install dev start stop logs init-db test clean ps