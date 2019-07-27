#!/bin/bash

CONTAINER_WP = magento_module
CONTAINER_DB = magento_module_db

up:
	docker-compose up -d

down:
	docker-compose down

rebuild: down
	docker-compose up -d --build

bash:
	docker exec -it $(CONTAINER_WP) bash

mysql:
	docker exec -it $(CONTAINER_DB) mysql --user=root --password=root magento

install: down up
	docker exec -it $(CONTAINER_WP) magento-install
	docker exec -it $(CONTAINER_WP) composer install -d ./app/code/PlacetoPay/magento-gateway-placetopay