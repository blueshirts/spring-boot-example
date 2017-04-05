# Makefile.

compose:
	docker-compose build

up:
	docker-compose up

daemon:
	docker-compose up -d

down:
	docker-compose down

migrate:
	docker-compose exec api /usr/src/app/gradlew flywayMigrate

shell-api:
	docker-compose exec api /bin/bash

shell-db:
	docker-compose exec db /bin/bash

mysql:
	docker-compose exec db mysql -u madziki_user -D madziki -h db

status:
	docker ps -a

clean:
	rm -rf ./dist

cleanup:
	docker rm $$(docker ps -a -q)

cleanup-images:
	docker rmi $$(docker images | grep "^<none>" | awk "{print $$3}")

.PHONY: compose up daemon down shell-api shell-db mysql status clean cleanup cleanup-images
