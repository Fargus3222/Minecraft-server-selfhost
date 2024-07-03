init:
		docker compose up -d

down:
		docker compose down

clean:
		docker rmi minecraft-selfhost:latest

build:
		docker build . -t minecraft-selfhost

help:
		@echo "Available commands:"
		@echo "  init      - Stop, pull, build, and start Docker containers"
		@echo "  down      - Stop and remove Docker containers"
		@echo "  build     - Build docker image"
		@echo "  clean     - Remove docker image"
		@echo "  help      - Display this help message"

