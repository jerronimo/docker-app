include .env

all: | start

start:
	@echo "Start app"
	@echo "#####################################################"
	docker-compose up -d
	docker-compose exec app_phpfpm composer install --no-interaction

status:
	@echo "Status app"
	@echo "#####################################################"
	docker-compose ps

stop:
	@echo "Stop containers..."
	@echo "#####################################################"
	docker-compose stop
	@echo "Stop"

down:
	@echo "Drop containers..."
	@echo "#####################################################"
	docker-compose down
	@echo "All containers have removed"

install:
	@echo "Install app component..."
	@echo "#####################################################"
	docker-compose build
	docker-compose up -d
	docker-compose exec app_phpfpm composer install --no-interaction

help:
	@echo "#####################################################"
	@echo "####### MediaBox-API CLI"
	@echo "#####################################################"
	@echo install 	- Pre install app component
	@echo start 	- Run all container locally
	@echo stop 	    - Stop all container
	@echo status 	- Display container status
	@echo "#####################################################"
