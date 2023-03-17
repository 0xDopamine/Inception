DOCKER_COMPOSE_FILE=/Users/mbaioumy/Documents/Inception/srcs/docker-compose.yml
DOCKER_COMPOSE_CMD=docker compose -f $(DOCKER_COMPOSE_FILE)
SYSTEM_PRUNE=docker system prune -af

all:
	$(DOCKER_COMPOSE_CMD) up 
clean:
	$(DOCKER_COMPOSE_CMD) down
fclean:
	$(SYSTEM_PRUNE)
	$(DOCKER_COMPOSE_CMD) down -v
re: fclean all